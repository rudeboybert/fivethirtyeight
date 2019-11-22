library(dplyr)
library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

impeachment_polls <- read_csv("data-raw/impeachment-polls/IMPEACHMENT-POLLS - Public Master List.csv") %>%
  clean_names() %>%
  mutate(
    start = mdy(start),
    end = mdy(end),
    sponsor = as.factor(sponsor),
    pollster = as.factor(pollster),
    pop = as.factor(pop),
    pollster = as.factor(pollster),
    category = as.factor(category),
    include = as.logical(include))

usethis::use_data(impeachment_polls, overwrite = TRUE)