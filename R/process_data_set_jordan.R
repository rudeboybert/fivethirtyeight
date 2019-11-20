library(tidyverse)
library(usethis)
library(stringr)
library(lubridate)
library(janitor)

# Import dataset from csv
fight_songs <- read_csv("data-raw/fight-songs/fight-songs.csv")

names(fight_songs)[12] <- "num_fights"

# Change variable types
fight_songs <- fight_songs %>%
  mutate(year = as.numeric(year),
         conference = ifelse(conference == "Yes", TRUE, FALSE),
         student_writer = ifelse(student_writer == "Yes", TRUE, FALSE),
         official_song = ifelse(official_song == "Yes", TRUE, FALSE),
         contest = ifelse(contest == "Yes", TRUE, FALSE),
         fight = ifelse(fight == "Yes", TRUE, FALSE),
         victory = ifelse(victory == "Yes", TRUE, FALSE),
         win_won = ifelse(win_won == "Yes", TRUE, FALSE),
         victory_win_won = ifelse(victory_win_won == "Yes", TRUE, FALSE),
         rah = ifelse(rah == "Yes", TRUE, FALSE),
         nonsense = ifelse(nonsense == "Yes", TRUE, FALSE),
         colors = ifelse(colors == "Yes", TRUE, FALSE),
         men = ifelse(men == "Yes", TRUE, FALSE),
         opponents = ifelse(opponents == "Yes", TRUE, FALSE),
         spelling = ifelse(spelling == "Yes", TRUE, FALSE))

# Names are clean, checked with janitor's clean_names()

# Overwrite .rda files
usethis::use_data(fight_songs, overwrite = TRUE)
