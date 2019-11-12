library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)
library(snakecase)

## wwc_matches ---------------------------------------------------------------------------------------------------------
wwc_2019_matches <- readr::read_csv("https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_matches.csv") %>%
  clean_names() %>%
  select(-c(league, league_id)) %>%
  mutate(
    team1 = to_snake_case(team1),
    team2 = to_snake_case(team2)
    )

usethis::use_data(wwc_2019_matches, overwrite = TRUE)

## wwc_forecasts ---------------------------------------------------------------------------------------------------------
wwc_2019_forecasts <- readr::read_csv("https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_forecasts.csv") %>%
  clean_names() %>%
  mutate(
    team = to_snake_case(team),
    date = as.Date(forecast_timestamp),
    group = as.factor(group),
    team = as.factor(team)
    ) %>%
  select(-c(forecast_timestamp, timestamp))

wwc_2019_forecasts <- wwc_2019_forecasts[c(
  "date", "team", "group", "spi", "global_o", "global_d", "sim_wins", "sim_ties", "sim_losses",
  "sim_goal_diff", "goals_scored", "goals_against", "group_1", "group_2", "group_3", "group_4",
  "make_round_of_16", "make_quarters", "make_semis", "make_final", "win_league"
)]

usethis::use_data(wwc_2019_forecasts, overwrite = TRUE)
