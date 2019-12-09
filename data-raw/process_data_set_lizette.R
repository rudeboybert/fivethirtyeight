library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# cabinet_turnover -------------------------------------------------------------
presidents <- c("Carter", "Reagan", "Bush 41", "Clinton", "Bush 43", "Obama", "Trump")

cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv") %>% 
  clean_names() %>%
  mutate(
    combined = str_detect(length, "combined"),
    length = str_replace_all(length, " combined",""),
    length = as.numeric(length),
    president = factor(president),
    start = 
      case_when(
        appointee == "Bob Gates" ~ "12/18/2006",
        appointee == "George Tenet" ~ "7/3/95",
        appointee == "Lauro Cavazos" ~ "9/20/88",
        appointee == "Dick Thornburgh" ~ "8/15/88",
        appointee == "Bill Webster" ~ "5/26/87",
        appointee == "Nicholas Brady" ~ "9/15/88",
        TRUE ~ start), 
    end = 
      case_when(
        appointee == "Bob Gates" ~ "6/30/2011",
        appointee == "George Tenet" ~ "7/11/97",
        appointee == "Lauro Cavazos" ~ "12/12/1990",
        appointee == "Dick Thornburgh" ~ "8/15/1991",
        appointee == "Bill Webster" ~ "8/31/1991",
        appointee == "Nicholas Brady" ~ "1/17/1993",
        TRUE ~ end),
    start = mdy(start),
    end = mdy(end),
    president = factor(president, levels = presidents))

usethis::use_data(cabinet_turnover, overwrite = TRUE)
