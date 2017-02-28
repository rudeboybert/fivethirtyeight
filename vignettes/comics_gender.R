#load libraries
library(ggplot2)
library(dplyr)
library(grid)
library(fmsb)
library(fivethirtyeight)
library(knitr)
library(wordcloud)
library(gridExtra)

percent_gen_pub <- comic_characters %>% 
	group_by(sex, publisher) %>% 
	summarise(number = n()) %>% 
	arrange(-number) %>%
	group_by(publisher) %>% 
	mutate(countT = sum(number)) %>% 
	group_by(sex) %>% 
	mutate(
		percentage = (100*number/countT),
		label = paste0(round(percentage, 2)))
  
#plot percentage of each gender for each publisher
ggplot(data = percent_gen_pub,aes(x = sex,y = percentage, fill = publisher)) + 
	geom_bar(width = 0.9, stat = "identity", position = 'dodge') +
	scale_fill_manual(values = c("#3B9AB2","#EBCC2A"))


#plot raw number of each gender for each publisher
raw_number_per_publisher <- comic_characters %>% 
	group_by(publisher) %>% 
	summarise(number = n()) %>% 
	arrange(-number)
  
ggplot(data = raw_number_per_publisher, aes(x = publisher, y = number, fill = publisher)) + 
	geom_bar(width = 0.1, stat = "identity") + 
	coord_flip() +
	scale_fill_manual(values = c("#3B9AB2","#EBCC2A"))


#select data with no NA's for sex and date and groupby
#define list of gender per publisher
gender_list_marvel <- c("Female Characters", "Male Characters", "Genderfluid Characters","Agender Characters")
gender_list_dc <- c("Female Characters", "Male Characters", "Genderless Characters","Transgender Characters")

marvel_vs_time <- comic_characters %>% 
	filter(publisher == 'Marvel' & !is.na(month) & !is.na(sex)) %>% 
	group_by(year, month, sex) %>% 
	summarise(number = n()) %>% 
	mutate(
		sex_ordered = factor(sex, levels = gender_list_marvel), 
		month_ordered = factor(month, levels = month.name))

ggplot(data = marvel_vs_time, aes(year, month_ordered)) + 
	geom_tile(aes(fill = number),colour = "white") + 
	scale_fill_gradient(low = "#EBCC2A", high = "black") + 
	facet_wrap(~ sex_ordered, ncol = 4) 

dc_vs_time <- comic_characters %>% 
	filter(publisher == 'DC' & month!= "Holiday" & !is.na(month) & !is.na(sex)) %>% 
		mutate(month = ifelse(month=="01","January",month)) %>% 
		group_by(year, month, sex) %>% summarise(number = n()) %>% 
		mutate(
			sex_ordered = factor(sex, levels = gender_list_dc), 
			month_ordered = factor(month, levels = month.name)) 

ggplot(data = dc_vs_time, aes(year, month_ordered)) + 
	geom_tile(aes(fill = number),colour = "white") + 
	scale_fill_gradient(low = "#3B9AB2", high = "black") + 
	facet_wrap(~ sex_ordered, ncol = 4)

#function to aggregate data by (gender, feature, publisher)
aggregateFeature <- function(current_publisher, feature){
	#empty list to keep dataframe by (gender, feature)
	currentFeature <- list()
	if(current_publisher == 'Marvel'){
		gender_list <- gender_list_marvel
		} else {
			gender_list <- gender_list_dc
		}

	for(i in 1:length(gender_list)){
		currentFeature[[i]] <- comic_characters %>% 
			filter(publisher == current_publisher ) %>%  
			select(hair, sex) %>% 
			na.omit() %>% 
			group_by(hair) %>% 
			filter(sex == gender_list[i]) %>% 
			summarise(number = n()) %>% 
			arrange(-number) %>% 
			mutate(countT = sum(number)) %>% 
			mutate(percentage = round(100*number/countT,1)) %>%
			select(hair, percentage, number)
		
	if(current_publisher == 'Marvel'){
		colnames(currentFeature[[i]])[2]<-'percentage_marvel'
		} else{
			colnames(currentFeature[[i]])[2]<-'percentage_dc'
		}
	
	 if(feature == 'Hair'){
	 	#strip 'hair' word for better display of the radarchart
	 	currentFeature[[i]]$hair <- sapply(currentFeature[[i]]$hair, function(x) gsub(' Hair','', x))}
	 	}
  
	names(currentFeature) <- gender_list
  	return(currentFeature)
}

merged <- full_join(aggregateFeature('DC','hair')[[1]], aggregateFeature('Marvel','hair')[[1]], by='hair')
#set min/max percentages for the radarchart limits
min <- rep(0, length(merged$hair))
max <- rep(50, length(merged$hair))
maleHair <- data.frame(rbind(max,min,merged$percentage_dc,merged$percentage_marvel))
colnames(maleHair) <- merged$hair
row.names(maleHair) <- c('max','min','percentage_dc','percentage_marvel')
maleHair[is.na(maleHair)] <- 0
radarchart(maleHair)

#Wordcloud plots
#remove NA from appearance column, keep only the name inside parentheses
marvel_appearances <- comic_characters %>% 
	filter(publisher == 'Marvel') %>% 
	select(name, appearances) %>% na.omit() %>% 
	mutate(name = gsub(" *\\(.*?\\) *", "", name))
	
dc_appearances <- comic_characters %>% 
	filter(publisher == 'DC') %>% 
	select(name, appearances) %>% na.omit() %>% 
	mutate(name = gsub(" *\\(.*?\\) *", "", name))

wordcloud(dc_appearances$name, dc_appearances$appearances)
wordcloud(marvel_appearances$name, marvel_appearances$appearances)
