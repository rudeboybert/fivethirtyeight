## ---- message = FALSE, warning = FALSE-----------------------------------
library(fivethirtyeight)
# library(tidyverse)
library(ggplot2)
library(dplyr)
library(tibble)
library(tidyr)
library(ggthemes)
library(knitr)
library(corrplot)
library(ggraph)
library(igraph)

## ----load data-----------------------------------------------------------
df <- bob_ross
#define incomplete paintings
incomplete <-c("PURPLE MOUNTAIN RANGE","COUNTRY CHARM","PEACEFUL REFLECTIONS")
df <- df %>% filter(guest==0 & !(title %in% incomplete))
#check the 2 episodes with same name
#df %>% filter(title=="LAKESIDE CABIN")
df[df$episode=='S08E02','title']<-'LAKESIDE CABIN 2'

## ----feature frequency prep.---------------------------------------------
#calculate the colSums for numeric columns and transpose the result
temp <- as.data.frame(df %>% 
                        select(-episode, -season, -episode_num ,-title) %>% 
                        summarise_all(funs(sum)) %>% t())

#rename,switch columns and calculate percentage over all paintings and frequency though all episodes
per_features <- temp %>% rownames_to_column() %>% 
  select(feature=rowname, tot = V1) %>% 
  mutate(
    feature_percentage = (tot / sum(tot))*100, 
    feature_percentage_Label = paste0(round(feature_percentage,1),"%"), 
    feature_freq = tot/ nrow(df)*100, 
    feature_freq_label = paste0(round(feature_freq,1),"%"))

## ----feature frequency plot----------------------------------------------
feature_freq_cut <- 10 #10% most present features
ggplot(data=filter(per_features,feature_freq>feature_freq_cut), aes(x=reorder(feature,feature_freq),y=feature_freq)) + 
  geom_bar(stat='identity') + geom_text(aes(label=feature_freq_label), position=position_dodge(width=0.9), vjust=.5,hjust=0,size=2.5,color='red') + 
  coord_flip() + 
  theme_fivethirtyeight() + 
  ggtitle('Features\'s appearance(%) through all episodes')

## ----feature correlation-------------------------------------------------
#find features present
top<-c(per_features %>% filter(tot>1) %>% arrange(-tot) %>% select(feature))
num_data<-df %>% select_(.dots = top$feature)
num_cols <- sapply(num_data, is.numeric)
corrplot(cor(num_data[,num_cols]), method='square',order="AOE")

## ----episode prep.-------------------------------------------------------
per_episode <- df %>% 
  select(-episode,-season,-episode_num ,-title) %>% 
  select_if(is.numeric) %>%
  mutate(episode=1:n()) %>% 
  gather(item, count, -episode) %>% 
  group_by(episode) %>% 
  summarise(sum = sum(count)) %>% 
  arrange(-sum)

#select a cut
cut_features<-11
ggplot(data=filter(per_episode,sum>cut_features), aes(x=reorder(episode,sum),y=sum)) + 
  geom_bar(stat='identity') + 
  coord_flip() + theme_fivethirtyeight() + 
  ggtitle(paste0('Paintings having more than ', cut_features,' features'))

## ----episoe plot---------------------------------------------------------
per_episode_summary <- per_episode %>% 
  group_by(sum) %>% 
  summarise(tot_features=n()) %>%
  mutate(
    percent = (tot_features/ sum(tot_features))*100, 
    label = paste0(round(percent,1),"%"))

ggplot(data=per_episode_summary, aes(x=sum,y=tot_features)) + 
  geom_bar(stat='identity') + 
  geom_text(aes(label=label), position=position_dodge(width=0.9), vjust=-1,hjust=.5,size=2.5,color='red')+
  theme_fivethirtyeight() + ggtitle('Distribution of paitings vs. \n number of features')

## ------------------------------------------------------------------------
mean(per_episode$sum)

## ----network func.-------------------------------------------------------
#function to loop an array of X features and return a DF with feature_1 | feature_2
make_connection<-function(x){
    feature_1<-c()
    feature_2<-c()
    cnt<-1
    for(i in 1:(nrow(x)-1)){
        for(j in (i+1):(nrow(x))){
            feature_1[cnt]<-(x[i,1])
            feature_2[cnt]<-(x[j,1])
            cnt<-cnt+1
            }
    }
    res<-data.frame("feature_1"=feature_1,"feature_2"=feature_2)
    return(res)
}

## ----network season 1----------------------------------------------------
#create empty DF to store the results
season_1 <- df %>% filter(season==1)

#empty dataframe to save all the connections
season1_res <- data.frame("feature_1"= character(),"feature_2"=character())

#loop over paintings in season 1
for(i in 1:nrow(season_1)){
    #select features of ith painting and make a dataframe
    temp <- as.data.frame(season_1 %>% select(-episode, -season, -episode_num ,-title) %>% slice(i) %>% t())
    pos_data <- temp %>% rownames_to_column() %>% select(feature=rowname, number = V1) %>% filter(number>0)
    res<-make_connection(pos_data)
    season1_res<-rbind(season1_res,res)
}

## ----network plot--------------------------------------------------------
graph_s1 <- season1_res %>% 
  group_by(feature_1, feature_2) %>% 
  summarise(freq=n())

colnames(graph_s1)[3]<-'weight'

g1<-graph.data.frame(graph_s1)
ggraph(g1,layout='circle') + 
  geom_edge_fan(aes(width=E(g1)$weight),alpha=.25,show.legend = FALSE) + 
  geom_node_point(size=6,color="red",alpha=1) + 
  geom_node_text(aes(label = name)) + theme_fivethirtyeight() + ggtitle('Features network of all paintings of season 1')

