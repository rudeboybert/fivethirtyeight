library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# nba-draymond ---------------------------------------------------------------
nba_draymond <- read_csv("data-raw/nba-draymond/draymond.csv") %>%
  clean_names 

usethis::use_data(nba_draymond, overwrite = TRUE)
