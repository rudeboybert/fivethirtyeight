## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----include=FALSE-------------------------------------------------------
plot_theme <- function(base_size = 12) {
  theme(
    text = element_text( color = "black"),
    plot.title = element_text(size = 10,colour = "black",hjust=0.5),
    plot.subtitle = element_text(face="italic"),
    plot.caption = element_text(hjust=0),
    axis.ticks = element_blank(),
    panel.background = element_blank(),
    panel.grid.major = element_line("grey80", size = 0.1),
    panel.grid.minor = element_blank(),
    strip.background = element_rect(fill = "grey80", color = "white"),
    strip.text = element_text(size=12),
    axis.title = element_text(size=8),
    axis.text = element_text(size=8),
    axis.title.x = element_text(hjust=1),
    axis.title.y = element_text(hjust=1),
    plot.background = element_blank(),
    legend.background = element_blank(),
    legend.title = element_text(colour = "black", face = "bold"),
    legend.text = element_text(colour = "black", face = "bold"))
}

## ----message=FALSE, warning=FALSE----------------------------------------
library(fivethirtyeight)
# library(tidyverse)
library(ggplot2)
library(dplyr)
library(tidyr)
library(scales)
library(stringr)
# library(highcharter)

glimpse(biopics)

## ----fig.width=7---------------------------------------------------------
biopics %>% 
  group_by(year_release) %>% 
  summarise(n=n()) %>%
  ggplot(aes(x=year_release,y=n)) +
  geom_bar(stat = "identity") +
  plot_theme() +
  labs(x="Year",y="Number of Releases",title="Number of Releases by Year",
       subtitle="", caption="Source:FiveThirtyEight")

## ----fig.width=7---------------------------------------------------------

poc <- biopics %>% 
  mutate(time_period=cut(year_release,breaks=11,label=c("1910-1920","1920-1930","1930-1940","1940-1950","1950-1960","1960-1970","1970-1980","1980-1990","1990-2000","2000-2010","2010-2014"))) %>% group_by(time_period,person_of_color) %>%
  summarise(n=n()) %>%
  mutate(person_of_color=ifelse(person_of_color==0,"White","Person of Color")) %>% 
  mutate(n=n/sum(n))

ggplot(poc, aes(x=time_period, y=n, fill=person_of_color)) +
  geom_bar(stat="identity") + 
  plot_theme() + 
  theme(axis.text.x = element_text(vjust=1,angle=90)) +
  scale_y_continuous(labels = percent) +
  labs(x="Decade",y="Percentage Composition",title="How do the % of movies involving actors of color change by decade?",caption="Data From: FiveThirtyEight")

## ----fig.width=7, eval=FALSE---------------------------------------------
#  biopics %>%
#    mutate(person_of_color=ifelse(person_of_color==0,"White","Person of Color")) %>%
#    group_by(person_of_color,type_of_subject) %>%
#    summarise(n=n()) %>%
#    mutate(n=(n/sum(n))*100) %>%
#    filter(person_of_color !="Person of Color") %>%
#    mutate(n=round(n,2)) %>%
#    hchart("treemap", hcaes(x = type_of_subject, value = n, color = n)) %>%
#    hc_title(text="Type of Subjects of Movies involving White Actors(%)")

## ----fig.width=7, eval=FALSE---------------------------------------------
#  biopics %>%
#    mutate(person_of_color=ifelse(person_of_color==0,"White","Person of Color")) %>%
#    group_by(person_of_color,type_of_subject) %>%
#    summarise(n=n()) %>%
#    mutate(n=(n/sum(n))*100) %>%
#    filter(person_of_color =="Person of Color") %>%
#    mutate(n=round(n,2)) %>%
#    hchart("treemap", hcaes(x = type_of_subject, value = n, color = n)) %>%
#    hc_title(text="Type of Subjects of Movies involving Actors of Color(%)")

## ----fig.width=7,fig.height=10-------------------------------------------
biopics %>% 
  mutate(person_of_color = ifelse(person_of_color==0,"White","Person of Color")) %>%
  group_by(person_of_color,type_of_subject) %>% 
  summarise(n=n()) %>% 
  mutate(n=n/sum(n)) %>%
  ggplot(aes(x=type_of_subject,y=n,fill=person_of_color))+
  geom_bar(stat="identity")+
  scale_y_continuous(labels=percent)+
  plot_theme()+
  facet_wrap(~person_of_color)+
  coord_flip()+
  labs(title="How do subject coverage differ in biopics involving white actors and actors of color?",caption="Data From : FiveThirtyEight",x="Type of Subject",y="%")

## ----fig.width=7,fig.height=8--------------------------------------------
biopics %>% 
  mutate(person_of_color=ifelse(person_of_color==0,"White Actor","Actor of Color")) %>%
  group_by(year_release,person_of_color) %>% 
  summarise(n=n()) %>%
  ggplot(aes(x=year_release,y=n,colour=person_of_color))+
  geom_line()+
  plot_theme()+
  geom_vline(xintercept=1964,linetype=2)+
  labs(x="Year",y="Number",title="Number of Biopics by White Actors and Actors of Color",
       subtitle="",
       caption="Data from FiveThirtyEight")+
  geom_text(aes(1964,0),label="Civil Rights' Act",show.legend = F,hjust=-1,angle=90,vjust=1,inherit.aes = F,size=3)+
  geom_vline(xintercept=1974,linetype=2)+
  geom_text(aes(1974,0),label="First Successful African American  themed Sitcom",show.legend = F,
            hjust=0,vjust=1,inherit.aes = F,angle=90,size=3,colour="black")

## ----fig.width=7---------------------------------------------------------
biopics %>% 
  group_by(year_release,subject_sex) %>% 
  summarise(n=n()) %>% 
  rename(gender=subject_sex) %>%
  ggplot(aes(x=year_release,y=n,colour=gender))+
  geom_line()+ 
  plot_theme()+
  labs(x="Year",y="Number",title="Number of Biopics By Gender",
       subtitle="",caption="Data from FiveThirtyEight")+
  scale_x_continuous(breaks = seq(1920,2014,5))+
  theme(plot.title=element_text(size=18),axis.text.x = element_text(angle=90, vjust=1))

## ----fig.width=7,warning=FALSE-------------------------------------------
year_wise_female <- biopics %>% 
  group_by(subject_sex,year_release) %>% 
  summarise(n=n()) %>% 
  filter(subject_sex=="Female") %>%
  mutate(n_new=lag(n,1)) %>% 
  mutate(change=n-n_new)
year_wise_male <- biopics %>% 
  group_by(subject_sex,year_release) %>% 
  summarise(n=n()) %>%
  filter(subject_sex=="Male") %>%
  mutate(n_new=lag(n,1)) %>% 
  mutate(change=n-n_new)
year_wise <- bind_rows(year_wise_male,year_wise_female)
year_wise %>%
   ggplot(aes(x=as.numeric(year_release),y=change)) + 
  geom_line() +
  plot_theme()+
  labs(x="Year",y="Number",title="Change in Number of Biopic Movies From Previous Year",
       subtitle="", caption="Data from FiveThirtyEight")+
  facet_wrap(~subject_sex,scales = "fixed")+
  scale_x_continuous(breaks = seq(1920,2014,5)) +
  theme(plot.title=element_text(size=18),axis.text.x = element_text(angle=90, vjust=1))
  

## ----fig.width=7,fig.height=7--------------------------------------------
biopics$type_of_subject <- gsub(" ","",biopics$type_of_subject)
biopics <- biopics %>% 
     mutate(type_of_subject = strsplit(as.character(type_of_subject), "/")) %>% 
     unnest(type_of_subject)
biopics$type_of_subject <- tolower(biopics$type_of_subject)
women_percent <-biopics %>% 
  filter(subject_sex=="Female") %>%  
  group_by(type_of_subject) %>% 
  summarise(n=n()) %>% 
  mutate(percent_women=n/sum(n)) 
men_percent <- biopics %>% 
  filter(subject_sex=="Male") %>% 
  group_by(type_of_subject) %>% 
  summarise(n=n()) %>% 
  mutate(percent_man=n/sum(n))

percent_overall <- full_join(women_percent,men_percent,by="type_of_subject") %>% 
  select(-c(n.x,n.y)) %>%
  mutate(percent_women = ifelse(is.na(percent_women),0,percent_women),percent_man=ifelse(is.na(percent_man),0,percent_man))

ggplot(percent_overall, aes(x = percent_women, y = percent_man, color = (percent_women - percent_man))) +
  geom_abline(color = "gray40", lty = 2) +
  geom_jitter(alpha = 0.1, size = 1, width = 0.3, height = 0.3) +
  geom_text(aes(label = type_of_subject), check_overlap = TRUE, vjust = 1.5) +
  scale_x_continuous(labels = percent_format(),limits = c(0,0.322)) +
  scale_y_continuous(labels = percent_format(),limits=c(0,0.322)) +
  scale_color_gradient( low = "red", high = "gray75") +
  theme(legend.position="none") +
  labs(y = "Biopics Involving Men", x ="Biopics Involving Women",text=element_text(size=10),
       plot.title=element_text(hjust=0.5))+
  ggtitle("Relative Frequency of Subjects(Gender Wise)")

## ----fig.width=10,fig.height=10------------------------------------------
biopics %>% mutate(cuts=cut(year_release,breaks=5,label=c("1910-1930","1930-1950","1950-1970","1970-1990","1990-2010")))%>%
  mutate(subject_race=ifelse(grepl("\\bHispanic\\b",subject_race),"Hispanic",subject_race)) %>% 
  group_by(cuts,subject_sex,subject_race)%>% filter(subject_race!="")%>%
  summarise(n=n()) %>%
  mutate(n=n/sum(n)) %>%
  ggplot(aes(x=cuts, y=n*100, fill=subject_race)) +
  geom_bar(stat="identity", position="dodge",width = 0.7)+
  plot_theme()+
  ylab("%")+
  ggtitle("Gender and Race")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Year")+
  scale_fill_manual(values = c("#24576D", "#A113E2","#000000", "#D91460",
                                 "#28AADC", "#40cc49","#F2583F",
                               "#96503F","#ffc100","#918d58","#e98000","#d2f4d2",
                               "#cdc8b1","#a87582"))+
  facet_grid(subject_sex~.)+
  theme(plot.title=element_text(size=18),axis.text.x = element_text(angle=90, vjust=1))+
  labs(caption="Data From FiveThirtyEight")

## ----fig.width=12,fig.height=12------------------------------------------
options(scipen=999)
biopics  %>%  
  filter(box_office!="-") %>% 
  mutate(
    box_office=gsub("$","",box_office,fixed=T),
    denom=str_sub(box_office,nchar(box_office),nchar(box_office)),
    box_office=gsub("M","",box_office),
    box_office=gsub("K","",box_office),
    box_office=as.numeric(box_office),
    box_office=ifelse(denom=="M",box_office*1000000,box_office),
    box_office=ifelse(denom=="K",box_office*1000,box_office),
    box_office= box_office/1000000
    ) %>% 
  ggplot(aes(x=as.factor(year_release), y=box_office)) + 
  geom_boxplot() +
  stat_summary(fun.y="mean", geom="point", shape=23, size=2, fill="white")+
  plot_theme()+
  labs(title="Distributions of Earning Per Year",x="Year",y="In Millions",
       subtitle="Inflation not taken into account(Diamond Point Represents Mean)",caption="Data From FiveThirtyEight")+
  facet_wrap(~subject_sex,ncol=1)+
  theme(axis.text.x = element_text(angle=90,vjust=1))

## ----fig.width=7---------------------------------------------------------
options(scipen=999)
biopics %>%
  filter(box_office!="-") %>% 
  mutate(
    box_office=gsub("$","",box_office,fixed=T),
    denom=str_sub(box_office,nchar(box_office),nchar(box_office)),
    box_office=gsub("M","",box_office),
    box_office=gsub("K","",box_office),
    box_office=as.numeric(box_office),
    box_office=ifelse(denom=="M",box_office*1000000,box_office),
    box_office=ifelse(denom=="K",box_office*1000,box_office),
    box_office=box_office/1000000) %>%
  ggplot(aes(x=subject_sex, y=box_office,fill=subject_sex)) + 
  geom_violin(color = "grey50")+
  xlab("Box Office") + 
  ylab("Count")  +
  stat_summary(fun.y="mean", geom="point", size=2, colour="white") +
  plot_theme() + 
  theme(legend.position="none")+
  labs(x="Gender",y="In Millions",title="Distributions of Box Office Earnings",
       subtitle="Inflation Not Taken into Account",
       caption="Source: FiveThirtyEight")

## ----fig.width=7,fig.height=7--------------------------------------------
biopics %>% 
  filter(box_office!="-") %>% 
  mutate(
    box_office=gsub("$","",box_office,fixed=T),
    denom=str_sub(box_office,nchar(box_office),nchar(box_office)),
    box_office=gsub("M","",box_office),
    box_office=gsub("K","",box_office),
    box_office=as.numeric(box_office),
    box_office=ifelse(denom=="M",box_office*100000,box_office),
    box_office=ifelse(denom=="K",box_office*1000,box_office),
    box_office=box_office/1000000
  ) %>%
  ggplot(aes(x=as.factor(person_of_color), y=box_office,fill=as.factor(person_of_color))) + 
  geom_violin(color = "grey50")+
  xlab("Person of Color") + 
  ylab("Count")  +
  stat_summary(fun.y="mean", geom="point", size=2, colour="white") +
  plot_theme() + 
  theme(legend.position="none")+
  labs(x="Person of Color",y="In Millions",title="Distributions of Box Office Earnings",
       subtitle="Inflation Not Taken into Account",
       caption="Source: FiveThirtyEight")

