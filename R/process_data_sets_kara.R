library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

#reading in csv
nba_elo <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo.csv")
nba_elo_latest <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo_latest.csv")

#tidying and taming data for nba_elo
nba_elo %>% clean_names()
gsub(x = colnames(nba_elo), pattern = "-", replacement = "_")
nba_elo[13:22] <- as.numeric(as.character(nba_elo[13:22]))


#tidying and taming data for nba_elo_latest
nba_elo_latest %>% clean_names()
gsub(x = colnames(nba_elo_latest), pattern = "-", replacement = "_")

nba_elo_latest[13:22] <- as.numeric(as.character(nba_elo_latest[13:22]))

#setting up .rda
usethis::use_data(nba_elo, overwrite = TRUE)
usethis::use_data(nba_elo_latest, overwrite = TRUE)