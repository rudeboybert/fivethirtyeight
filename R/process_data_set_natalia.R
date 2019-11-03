library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

media_mentions_cable <- read_csv("data-raw/media-mentions-2020/cable_weekly.csv")
media_mentions_online <- read_csv("data-raw/media-mentions-2020/online_weekly.csv")

media_mentions_cable <-media_mentions_cable %>%
  clean_names() %>%
  mutate(
    matched_clips = as.numeric(matched_clips),
    all_candidate_clips = as.numeric(all_candidate_clips),
    total_clips = as.numeric(total_clips)
  )

usethis::use_data(media_mentions_cable, overwrite = TRUE)

media_mentions_online <- media_mentions_online %>%
  clean_names() %>%
  mutate(
    matched_stories = as.numeric(matched_stories),
    all_candidate_stories = as.numeric(all_candidate_stories)
  )

usethis::use_data(media_mentions_online, overwrite = TRUE)
