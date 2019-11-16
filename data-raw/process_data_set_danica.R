library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

historical_RAPTOR_by_player <- read_csv("data-raw/nba-raptor/historical_RAPTOR_by_player.csv") 

modern_RAPTOR_by_player <- read_csv("data-raw/nba-raptor/modern_RAPTOR_by_player.csv") 

historical_RAPTOR_by_team <-read_csv("data-raw/nba-raptor/historical_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type)
    )

modern_RAPTOR_by_team <-read_csv("data-raw/nba-raptor/modern_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type)
  )

usethis::use_data(historical_RAPTOR_by_player, overwrite = TRUE)
usethis::use_data(modern_RAPTOR_by_player, overwrite = TRUE)
usethis::use_data(historical_RAPTOR_by_team, overwrite = TRUE)
usethis::use_data(modern_RAPTOR_by_team, overwrite = TRUE)
