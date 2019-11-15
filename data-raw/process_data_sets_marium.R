library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# index ------------------------------------------------------------
state_index <- read_csv("data-raw/state-of-the-state/index.csv") %>% 
  mutate(
    state = as.factor(state),
    party = as.factor(party))
usethis::use_data(state_index, overwrite = TRUE)

# words ------------------------------------------------------------
state_words <- read_csv("data-raw/state-of-the-state/words.csv") %>% 
  mutate(
    category = as.factor(category),
    d_speeches = as.integer(d_speeches),
    r_speeches = as.integer(r_speeches),
    total = as.integer(total)
  )
usethis::use_data(state_words, overwrite = TRUE)

