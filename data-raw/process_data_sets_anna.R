#load packages for taming
library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# foul-balls -------------------------------------------------------------------
foul_balls <- read_csv("data-raw/foul-balls/foul-balls.csv") %>% 
  clean_names() %>% 
  mutate(
    type_of_hit = as.factor(type_of_hit),
    camera_zone = as.factor(camera_zone),
    used_zone = as.factor(used_zone),
    predicted_zone = as.factor(predicted_zone)
  )

usethis::use_data(foul_balls, overwrite = TRUE)

