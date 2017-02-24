#load libraries
library(ggplot2)
library(dplyr)
library(grid)
library(fmsb)
library(fivethirtyeight)
library(knitr)
library(wordcloud)
library(gridExtra)

#calculate percentage of each gender for each publisher
percent_gen_pub <- comic_characters %>% 
  group_by(sex, publisher) %>% 
  summarise(number = n()) %>% 
  arrange(-number)
percent_gen_pub <- percent_gen_pub %>% 
  group_by(publisher) %>% 
  mutate(countT = sum(number)) %>% 
  group_by(sex) %>% 
  mutate(percentage = 100*number/countT) %>% 
  mutate(label = paste0(round(percentage, 2)))

#plot percentage of each gender for each publisher
percentage_per_publisher <- ggplot(data = percent_gen_pub,aes(x = sex,y = percentage, fill = publisher)) + 
  geom_bar(width = 0.9, stat = "identity", position = 'dodge') 
  
#plot raw number of each gender for each publisher
raw_number_per_publisher <- comic_characters %>% 
  group_by(publisher) %>% 
  summarise(number = n()) %>% 
  arrange(-number) %>% 
  ggplot(aes(x = publisher, y = number, fill = publisher)) + 
  geom_bar(width = 0.1, stat = "identity") + 
  coord_flip()
  
#select data with no NA's for sex and date and groupby
marvel_vs_time <- as.data.frame(comic_characters %>% 
                                filter(publisher == 'Marvel' & !is.na(month) & !is.na(sex)) %>%
                                group_by(year, month, sex) %>% summarise(number = n()))

marvel_vs_time$ordered_month <- factor(marvel_vs_time$month, levels = month.name)
marvel_vs_time$sex <- factor(marvel_vs_time$sex, levels = c("Female Characters", "Male Characters", "Genderfluid Characters","Agender Characters"))
g1<-ggplot(data = marvel_vs_time, aes(year, ordered_month)) + geom_tile(aes(fill = number),colour = "white") + 
  scale_fill_gradient(low = "#EBCC2A", high = "black") + 
  facet_wrap(~ sex, ncol = 4)
  
dc_vs_time <- as.data.frame(comic_characters %>% filter(publisher == 'DC' & !is.na(month) & !is.na(sex)))
dc_vs_time$month <- ifelse(dc_vs_time$month == "01","January",dc_vs_time$month)
dc_vs_time <- dc_vs_time %>% filter(month != "Holiday") %>% group_by(year,month,sex) %>% summarise(number = n())
dc_vs_time$month <- as.factor(dc_vs_time$month)
dc_vs_time$ordered_month <- factor(dc_vs_time$month, levels = month.name)
dc_vs_time$sex <- factor(dc_vs_time$sex, levels = c("Female Characters", "Male Characters", "Genderless Characters","Transgender Characters"))

g2 <- ggplot(data = dc_vs_time, aes(year, ordered_month)) + geom_tile(aes(fill = number),colour = "white") + 
  scale_fill_gradient(low = "#3B9AB2", high = "black") + 
  facet_wrap(~ sex, ncol = 4)
  
#function to aggregate data by (gender, feature, publisher)
aggregateFeature <- function(current_publisher, feature){
  #empty list to keep dataframe by (gender, feature)
  currentFeature <- list()
  if(current_publisher == 'Marvel'){
    gender_list <- c("Male Characters","Female Characters", "Genderfluid Characters","Agender Characters")
  } else {
  gender_list <- c("Male Characters","Female Characters", "Genderfluid Characters","Agender Characters")
  }

for(i in 1:length(gender_list)){
	currentFeature[[i]] <- as.data.frame(comic_characters %>% 
	                                filter(publisher == current_publisher ) %>%  
	                                select(hair, sex) %>% 
	                                na.omit() %>% 
	                                group_by(hair) %>% 
	                                filter(sex == gender_list[i]) %>% 
	                                summarise(number = n()) %>% 
	                                arrange(-number) %>% 
	                                mutate(countT = sum(number)) %>% 
	                                mutate(percentage = round(100*number/countT,1)) %>% 
	                                select(hair, percentage, number))
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

#Radarchart plots
#outer join the 2 dataframes for (feature=Hair, gender=Male)
merged <- merge(aggregateFeature('DC','hair')[[1]], aggregateFeature('Marvel','hair')[[1]], by='hair', all=TRUE)
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
  mutate(newname = gsub(" *\\(.*?\\) *", "", name))
dc_appearances <- comic_characters %>% 
  filter(publisher == 'DC') %>% 
  select(name, appearances) %>% na.omit() %>% 
  mutate(newname = gsub(" *\\(.*?\\) *", "", name))

wordcloud(dc_appearances$newname, dc_appearances$appearances)
wordcloud(marvel_appearances$newname, marvel_appearances$appearances)
  

