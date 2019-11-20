library(dplyr)
library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

impeachment_polls <- read_csv("data-raw/impeachment-polls/IMPEACHMENT-POLLS - Public Master List.csv") %>%
  clean_names() %>%
  mutate(
    Start = col_date(format = ""),
    End = col_date(format = ""),
    pollster = as.factor(pollster),
    sponsor = as.factor(sponsor),
    Pop = as.factor(Pop),
    category = as.factor(category),
    `Include?` = as.logical(`Include?`))

names(impeachment_polls)[names(impeachment_polls)== "start"] <- "Start_Date"
names(impeachment_polls)[names(impeachment_polls)== "end"] <- "End_Date"
names(impeachment_polls)[names(impeachment_polls)== "pollster"] <- "Pollster"
names(impeachment_polls)[names(impeachment_polls)== "sponsor"] <- "Poll_Sponsor"
names(impeachment_polls)[names(impeachment_polls)== "text"] <- "Poll _Question"
names(impeachment_polls)[names(impeachment_polls)== "category"] <- "Poll_Type"
names(impeachment_polls)[names(impeachment_polls)== "yes"] <- "Yes"
names(impeachment_polls)[names(impeachment_polls)=="no"] <- "No"
names(impeachment_polls)[names(impeachment_polls)== "unsure"] <- "Unsure"

usethis::use_data(impeachment_polls, overwrite = TRUE)