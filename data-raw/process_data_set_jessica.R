library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# This dataset has been moved to the `fivethirtyeightdata` package

nba_all_elo <- read_csv("data-raw/nba-elo/nbaallelo.csv")%>%
  arrange(game_id, `_iscopy`)%>%
  mutate_if(is.character,as.factor)%>%
  mutate(opp_win_equiv = lead(win_equiv),
         opp_seasongame = lead(seasongame, 1),
         date_game = mdy(date_game),
         is_playoffs = as.logical(is_playoffs),
         notes =  as.character(notes))%>%
  filter(`_iscopy` == 0)%>%
  select(-c(`_iscopy`, game_location))

usethis::use_data(nba_all_elo, overwrite = TRUE)
