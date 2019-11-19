library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)
library(tidyr)

# mlb-quasi-win-shares
quasi_winshares <- read_csv("data-raw/mlb-quasi-win-shares/quasi_winshares.csv") %>%
  clean_names() %>%
  mutate(
    team_id = as.factor(team_id),
    lg_id   = as.factor(lg_id),
    def_pos = as.factor(def_pos),
    franch_id   = as.factor(franch_id),
    prev_franch  = as.factor(prev_franch),
    next_franch = as.factor(next_franch),
    #defense positions as lgl (played or not)
    P = str_detect(def_pos, "P"),
    C = str_detect(def_pos, "C"),
    X1B = str_detect(def_pos, "1B"),
    X2B = str_detect(def_pos, "2B"),
    X3B = str_detect(def_pos, "3B"),
    SS = str_detect(def_pos, "SS"),
    LF = str_detect(def_pos, "LF"),
    CF = str_detect(def_pos, "CF"),
    RF = str_detect(def_pos, "RF"),
    #change null values
    prev_franch = replace(prev_franch, prev_franch == "NULL", NA), 
    next_franch = replace(next_franch, next_franch == "NULL", NA)
  ) %>%
  select(-def_pos)


usethis::use_data(quasi_winshares, overwrite = TRUE)
