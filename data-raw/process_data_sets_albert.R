library(tidyverse)
library(stringr)
library(lubridate)

# Albert: airline_safety thru food-world-cup




# airline_safety ---------------------------------------------------------------
airline_safety <- read_csv("data-raw/airline-safety/airline-safety.csv") 
colnames(airline_safety) <- colnames(airline_safety) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
airline_safety <- airline_safety %>%
  mutate(
    # Convert asterisks to own variable indicating if regional subsidiaries are
    # included
    incl_reg_subsidiaries = str_sub(airline, -1) == "*",
    airline = ifelse(incl_reg_subsidiaries, str_sub(airline, end=-2), airline)
    ) %>%
  select(airline, incl_reg_subsidiaries, everything())
devtools::use_data(airline_safety, overwrite = TRUE)




# alcohol_consumption ----------------------------------------------------------
drinks <- read_csv("data-raw/alcohol-consumption/drinks.csv")
colnames(drinks) <- colnames(drinks) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
devtools::use_data(drinks, overwrite = TRUE)




# avengers ---------------------------------------------------------------------
avengers <- read_csv("data-raw/avengers/avengers.csv")
colnames(avengers) <- colnames(avengers) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

avengers <- avengers %>% 
  rename(
    name_alias = `name/alias`,
    current = `current?`,
    probationary_intro = `probationary_introl`,
    full_reserve_avengers_intro = `full/reserve_avengers_intro`
  ) %>% 
  mutate(
    # Convert 0/1 to TRUE/FALSE
    current = ifelse(current == "YES", TRUE, FALSE),
    death1 = ifelse(death1 == "YES", TRUE, FALSE),
    return1 = ifelse(return1 == "YES", TRUE, FALSE),
    death2 = ifelse(death2 == "YES", TRUE, FALSE),
    return2 = ifelse(return2 == "YES", TRUE, FALSE),
    death3 = ifelse(death3 == "YES", TRUE, FALSE),
    return3 = ifelse(return3 == "YES", TRUE, FALSE),
    death4 = ifelse(death4 == "YES", TRUE, FALSE),
    return4 = ifelse(return4 == "YES", TRUE, FALSE),
    death5 = ifelse(death5 == "YES", TRUE, FALSE),
    return5 = ifelse(return5 == "YES", TRUE, FALSE)
    # Convert full_reserve_avengers_intro to date object?
    # month = str_replace_all(full_reserve_avengers_intro, "[:digit:]", ""),
    # month = str_replace_all(month, "-", ""),
    # 14 cases where month was missing
    # date = ifelse(is.na(month), paste(year, "Jan", "01", sep="-"), paste(year, month, "01", sep="-")),
    # full_reserve_avengers_intro2 = parse_date_time(date, "y-b-d")
  )
devtools::use_data(avengers, overwrite = TRUE)




# bad-drivers ------------------------------------------------------------------
bad_drivers <- read_csv("data-raw/bad-drivers/bad-drivers.csv") 
colnames(bad_drivers) <- colnames(bad_drivers) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

bad_drivers <- bad_drivers %>% 
  rename(
    num_drivers = `number_of_drivers_involved_in_fatal_collisions_per_billion_miles`,
    perc_speeding = `percentage_of_drivers_involved_in_fatal_collisions_who_were_speeding`, 
    perc_alcohol = `percentage_of_drivers_involved_in_fatal_collisions_who_were_alcohol-impaired`, 
    perc_not_distracted = `percentage_of_drivers_involved_in_fatal_collisions_who_were_not_distracted`, 
    perc_no_previous = `percentage_of_drivers_involved_in_fatal_collisions_who_had_not_been_involved_in_any_previous_accidents`, 
    insurance_premiums = `car_insurance_premiums_($)`, 
    losses = `losses_incurred_by_insurance_companies_for_collisions_per_insured_driver_($)`
  )
devtools::use_data(bad_drivers, overwrite = TRUE)




# bechdel ----------------------------------------------------------------------
bechdel <- read_csv("data-raw/bechdel/movies.csv") 
colnames(bechdel) <- colnames(bechdel) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

bechdel <- bechdel %>% 
  rename(
    budget_2013 = `budget_2013$`,
    domgross_2013 =`domgross_2013$`,
    intgross_2013 = `intgross_2013$`
  ) %>% 
  mutate(
    # Clean some movie titles
    title = str_replace_all(title, "&amp;", "&"),
    title = str_replace_all(title, "&#39;", "'"),
    # Convert strings to integer
    domgross = as.integer(domgross),
    intgross = as.integer(intgross),
    domgross_2013 = as.integer(domgross_2013),
    intgross_2013 = as.integer(intgross_2013)
  )
devtools::use_data(bechdel, overwrite = TRUE)




# biopics ----------------------------------------------------------------------
biopics <- read_csv("data-raw/biopics/biopics.csv") 
colnames(biopics) <- colnames(biopics) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

biopics <- biopics %>%
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



# births -----------------------------------------------------------------------
US_births_1994_2003 <- read_csv("data-raw/births/US_births_1994-2003_CDC_NCHS.csv")
colnames(US_births_1994_2003) <- colnames(US_births_1994_2003) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
US_births_1994_2003 <- US_births_1994_2003 %>% 
  mutate(
    date = ymd(paste(year, month, date_of_month)),
    day_of_week = wday(date, label=TRUE)
    ) %>% 
  select(year, month, date_of_month, date, everything())
devtools::use_data(US_births_1994_2003, overwrite = TRUE)

US_births_2000_2014 <- read_csv("data-raw/births/US_births_2000-2014_SSA.csv")
colnames(US_births_2000_2014) <- colnames(US_births_2000_2014) %>% tolower() %>% str_replace_all(" ", "_")
US_births_2000_2014 <- US_births_2000_2014 %>% 
  mutate(
    date = ymd(paste(year, month, date_of_month)),
    day_of_week = wday(date, label=TRUE)
  ) %>% 
  select(year, month, date_of_month, date, everything())
devtools::use_data(US_births_2000_2014, overwrite = TRUE)



# bob-ross ---------------------------------------------------------------------
bob_ross <- read_csv("data-raw/bob-ross/elements-by-episode.csv")
colnames(bob_ross) <- colnames(bob_ross) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
bob_ross <- bob_ross %>% 
  mutate(
    title = str_sub(title, 2, -2),
    season = as.numeric(str_sub(episode, 2, 3)),
    episode_num = as.numeric(str_sub(episode, 5, 6))
  ) %>% 
  select(episode, season, episode_num, everything())
devtools::use_data(bob_ross, overwrite = TRUE)



# buster_posey_mvp -------------------------------------------------------------
# No Data



# classic-rock -----------------------------------------------------------------
classic_rock_raw_data <- read_csv("data-raw/classic-rock/classic-rock-raw-data.csv")
colnames(classic_rock_raw_data) <- colnames(classic_rock_raw_data) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
classic_rock_raw_data <- classic_rock_raw_data %>% 
  select(-c(song_raw, artist_raw, `first?`)) %>% 
  rename(
    song = song_clean,
    artist = artist_clean
    ) %>% 
  mutate(date_time = as.POSIXct(time, origin = "1970-01-01")) %>% 
  select(song, artist, callsign, time, date_time, unique_id, combined)
devtools::use_data(classic_rock_raw_data, overwrite = TRUE)

classic_rock_song_list <- read_csv("data-raw/classic-rock/classic-rock-song-list.csv")
colnames(classic_rock_song_list) <- colnames(classic_rock_song_list) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
classic_rock_song_list <- classic_rock_song_list %>% 
  select(-c(`first?`)) %>% 
  rename(
    song = song_clean,
    artist = artist_clean,
    has_year = `year?`,
    playcount_has_year = `f*g`
  ) %>% 
  mutate(has_year = as.logical(has_year))
devtools::use_data(classic_rock_song_list, overwrite = TRUE)



# congress-age ----------------------------------------------------------------------
# Manually edited original CSV:
# Line 7054: (Pierre,Samuel, IV,du Pont,,) to (Pierre,Samuel,du Pont,IV,)
# Line 7581: (Pierre,Samuel, IV,du Pont,,) to (Pierre,Samuel,du Pont,IV,)
# Line 8088: (Pierre,Samuel, IV,du Pont,,) to (Pierre,Samuel,du Pont,IV,)
# Line 9719: (Harold,John, Jr.,,Daub,,) to (Harold,John, Daub, Jr.,)
# Line 10019: (Itimous,Thaddeus, Jr.,,Valentine,,) to (Itimous,Thaddeus,Valentine,Jr.,)
# Line 10235: (Harold,John, Jr.,,Daub,,) to (Harold,John, Daub, Jr.,)
# Line 10550: (Itimous,Thaddeus, Jr.,,Valentine,,) to (Itimous,Thaddeus,Valentine,Jr.,)
# Line 10641: (John,Alexander, III,McMillan,,) to (John,Alexander,McMillan,III) 
# Line 10764: (Harold,John, Jr.,,Daub,,) to (Harold,John, Daub, Jr.,)
# Line 11075: (Itimous,Thaddeus, Jr.,,Valentine,,) to (Itimous,Thaddeus,Valentine,Jr.,)
# Line 11168: (John,Alexander, III,McMillan,,) to (John,Alexander,McMillan,III) 
# Line 11290: (Harold,John, Jr.,,Daub,,) to (Harold,John, Daub, Jr.,)
# Line 11606: (Itimous,Thaddeus, Jr.,,Valentine,,) to (Itimous,Thaddeus,Valentine,Jr.,)
# Line 11697: (John,Alexander, III,McMillan,,) to (John,Alexander,McMillan,III)
# Line 12141: (Itimous,Thaddeus, Jr.,,Valentine,,) to (Itimous,Thaddeus,Valentine,Jr.,)
# Line 12230: (John,Alexander, III,McMillan,,) to (John,Alexander,McMillan,III)
# Line 12664: (Itimous,Thaddeus, Jr.,,Valentine,,) to (Itimous,Thaddeus,Valentine,Jr.,) 
# Line 12738: (John,Alexander, III,McMillan,,) to (John,Alexander,McMillan,III)
congress_age <- read_csv("data-raw/congress-age/congress-terms.csv")
colnames(congress_age) <- colnames(congress_age) %>% tolower() %>% str_replace_all(" ", "_")

congress_age <- congress_age %>% 
  mutate(incumbent = ifelse(incumbent == "Yes", TRUE, FALSE))
devtools::use_data(congress_age, overwrite = TRUE)





# daily_show_guests ------------------------------------------------------------
daily_show_guests <- read_csv("data-raw/daily-show-guests/daily_show_guests.csv") 
colnames(daily_show_guests) <- colnames(daily_show_guests) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
daily_show_guests <- daily_show_guests %>%
  rename(google_knowledge_occupation = googleknowlege_occupation) %>% 
  mutate(
    # Convert Show date to POSIX date object
    show=mdy(show),
    # Try to consolidate category of guest a bit
    google_knowledge_occupation = tolower(google_knowledge_occupation)
    )
devtools::use_data(daily_show_guests, overwrite = TRUE)




