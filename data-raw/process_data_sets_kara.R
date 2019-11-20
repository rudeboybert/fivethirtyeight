library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

#reading in csv
nba_elo <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo.csv")
nba_elo_latest <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo_latest.csv")

rownames(nba_elo) <- NULL
rownames(nba_elo_latest) <- NULL

#tidying and taming data for nba_elo
nba_elo %>% clean_names()
gsub(x = colnames(nba_elo), pattern = "-", replacement = "_")

nba_elo <- nba_elo %>%
  mutate_if(is.logical, as.numeric)

#tidying and taming data for nba_elo_latest
nba_elo_latest %>% clean_names()
gsub(x = colnames(nba_elo_latest), pattern = "-", replacement = "_")

nba_elo_latest <- nba_elo_latest %>%
  mutate_if(is.logical, as.numeric)

#setting up .rda
usethis::use_data(nba_elo, overwrite = TRUE)
usethis::use_data(nba_elo_latest, overwrite = TRUE)

