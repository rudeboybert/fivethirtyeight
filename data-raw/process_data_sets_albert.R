library(tidyverse)
library(stringr)
library(lubridate)

# Albert: airline_safety thru food-world-cup




# airline_safety ---------------------------------------------------------------
airline_safety <- readr::read_csv("data-raw/airline-safety/airline-safety.csv") %>%
  mutate(
    # Convert asterisks to own variable indicating if regional subsidiaries are
    # included
    incl_reg_subsidiaries = str_sub(airline, -1) == "*",
    airline = ifelse(incl_reg_subsidiaries, str_sub(airline, end=-2), airline)
    ) %>%
  select(airline, incl_reg_subsidiaries, everything())
devtools::use_data(airline_safety, overwrite = TRUE)




# biopics ----------------------------------------------------------------------
biopics <- readr::read_csv("data-raw/biopics/biopics.csv") %>%
  mutate(
    # Convert box_office variable to numeric
    box_office = str_replace_all(box_office, "-", ""),
    box_office = str_replace_all(box_office, "\\$", ""),
    box_office = ifelse(box_office == "", NA, box_office),
    units = str_sub(box_office, -1),
    box_office = str_sub(box_office, end=-2),
    box_office = as.numeric(box_office),
    units = ifelse(units == "M", 10^6, ifelse(units=="K", 10^3, NA)),
    box_office = box_office*units,
    # Convert 0/1 to TRUE/FALSE
    person_of_color = as.logical(person_of_color)
  ) %>%
  select(-units)
devtools::use_data(biopics, overwrite = TRUE)




# daily_show_guests ------------------------------------------------------------
daily_show_guests <- readr::read_csv("data-raw/daily-show-guests/daily_show_guests.csv") %>%
  mutate(
    # Convert Show date to POSIX date object
    Show=mdy(Show),
    # Try to consolidate category of guest a bit
    GoogleKnowlege_Occupation = tolower(GoogleKnowlege_Occupation)
    ) %>%
  rename(
    year = YEAR,
    google_knowledge_occupation = GoogleKnowlege_Occupation,
    show = Show,
    group = Group,
    raw_guest_list = Raw_Guest_List
  )
devtools::use_data(daily_show_guests, overwrite = TRUE)




