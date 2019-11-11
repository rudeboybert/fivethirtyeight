library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# mlb-quasi-win-shares
quasi_winshares <- read_csv("data-raw/mlb-quasi-win-shares/quasi_winshares.csv") %>%
  clean_names()%>%
  mutate(
    team_id = as.factor(team_id),
    lg_id   = as.factor(lg_id),
    def_pos = as.factor(def_pos)
  ) 

usethis::use_data(quasi_winshares, overwrite = TRUE)
