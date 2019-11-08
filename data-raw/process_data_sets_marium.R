library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# index ------------------------------------------------------------
index <- read_csv("data-raw/state-of-the-state/index.csv") %>% 
  mutate(
    state = as.factor(state),
    party = as.factor(party))
usethis::use_data(index, overwrite = TRUE)

# words ------------------------------------------------------------
words <- read_csv("data-raw/state-of-the-state/words.csv")%>% 
  mutate(
    category = as.factor(category),
    d_speeches = as.integer(d_speeches),
    r_speeches = as.integer(r_speeches),
    total = as.integer(total)
  )
usethis::use_data(words, overwrite = TRUE)

