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
    forecast_timestamp = as.Date(forecast_timestamp),
    group = as.factor(group),
    team = as.factor(team)
    ) %>%
  rename(date = forecast_timestamp) %>%
  select(-timestamp)

usethis::use_data(wwc_2019_forecasts, overwrite = TRUE)
