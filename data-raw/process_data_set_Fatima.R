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
    pollster = as.factor(pollster),
    sponsor = as.factor(sponsor),
    Pop = as.factor(Pop),
    category = as.factor(category),
    include = as.logical(include))

usethis::use_data(impeachment_polls, overwrite = TRUE)