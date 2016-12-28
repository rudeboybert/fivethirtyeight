library(tidyverse)
library(stringr)
library(lubridate)

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
    # date = ifelse(is.na(month), paste(year, "Jan", "01", sep="-"), 
    # paste(year, month, "01", sep="-")),
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
colnames(US_births_2000_2014) <- colnames(US_births_2000_2014) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
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



# college-majors ---------------------------------------------------------------
college_all_ages <- read_csv("data-raw/college-majors/all-ages.csv")
colnames(college_all_ages) <- colnames(college_all_ages) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
devtools::use_data(college_all_ages, overwrite = TRUE)

# TODO: more here



# comic-characters -------------------------------------------------------------
comic_characters_dc <- read_csv("data-raw/comic-characters/dc-wikia-data.csv")
colnames(comic_characters_dc) <- colnames(comic_characters_dc) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
comic_characters_dc <- comic_characters_dc %>% 
  separate(first_appearance, c("year2", "month"), ", ", remove = FALSE) %>% 
  mutate(
    publisher = "DC", 
    # If month was missing, set as January. Set day as 01
    month = ifelse(is.na(month), "01", month), 
    day = "01",
    # Note some years missing
    date = ymd(paste(year, month, day, sep="-"))
  ) %>% 
  select(-c(year2, day))

comic_characters_marvel <- read_csv("data-raw/comic-characters/marvel-wikia-data.csv")
colnames(comic_characters_marvel) <- colnames(comic_characters_marvel) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
comic_characters_marvel <- comic_characters_marvel %>% 
  separate(first_appearance, c("month", "year2"), "-", remove = FALSE) %>% 
  mutate(
    publisher = "Marvel", 
    # If month was missing, set as January. Set day as 01
    month = ifelse(is.na(month), "Jan", month), 
    day = "01",
    # Note some years missing
    date = ymd(paste(year, month, day, sep="-")),
    # Make first_appearance variable format match that of DC comics
    month = month.name[month(date)],
    first_appearance = paste(year, month, sep=", ")
  ) %>% 
  select(-c(year2, day))

comic_characters <- bind_rows(comic_characters_marvel, comic_characters_dc) %>% 
  select(publisher, everything())
devtools::use_data(comic_characters, overwrite = TRUE)




# comma-survey-data ------------------------------------------------------------
comma_survey <- read_csv("data-raw/comma-survey-data/comma-survey-data.csv")
colnames(comma_survey) <- colnames(comma_survey) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

comma_survey <- comma_survey %>%
  rename(
    respondent_id = respondentid,
    location = `location_(census_region)`,
    more_grammar_correct = `in_your_opinion,_which_sentence_is_more_gramatically_correct?`,
    heard_oxford_comma=`prior_to_reading_about_it_above,_had_you_heard_of_the_serial_(or_oxford)_comma?`,
    care_oxford_comma=`how_much,_if_at_all,_do_you_care_about_the_use_(or_lack_thereof)_of_the_serial_(or_oxford)_comma_in_grammar?`,
    write_following=`how_would_you_write_the_following_sentence?`,
    data_singular_plural=`when_faced_with_using_the_word_\"data\",_have_you_ever_spent_time_considering_if_the_word_was_a_singular_or_plural_noun?`,
    care_data = `how_much,_if_at_all,_do_you_care_about_the_debate_over_the_use_of_the_word_\"data\"_as_a_singluar_or_plural_noun?`,
    care_proper_grammar =`in_your_opinion,_how_important_or_unimportant_is_proper_use_of_grammar?`
    ) %>% 
  mutate(
    # Set levels to factors
    age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60")),
    household_income = factor(household_income, levels = c(
      "$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999", 
      "$100,000 - $149,999", "$150,000+")),
    education = factor(education, levels=c(
      "Less than high school degree", "High school degree", 
      "Some college or Associate degree","Bachelor degree", "Graduate degree"
    )),
    heard_oxford_comma = ifelse(heard_oxford_comma=="Yes", TRUE, FALSE),
    data_singular_plural = ifelse(data_singular_plural=="Yes", TRUE, FALSE),
    care_oxford_comma = factor(care_oxford_comma, levels=c(
      "Not at all", "Not much", "Some", "A lot"      
    )),
    care_data = factor(care_data, levels=c(
      "Not at all", "Not much", "Some", "A lot"      
    )),
    care_proper_grammar = factor(care_proper_grammar, levels=c(
      "Very unimportant", "Somewhat unimportant", 
      "Neither important nor unimportant (neutral)", "Somewhat important", 
      "Very important"
    ))
  ) %>% 
  select(respondent_id, gender, age, household_income, 
         education, location, everything())
devtools::use_data(comma_survey, overwrite = TRUE)



# congress-age -----------------------------------------------------------------
# Manually edited original CSV:
# -Lines 7054, 7581, 8088:
#  (Pierre,Samuel, IV,du Pont,,) to (Pierre,Samuel,du Pont,IV,)
# -Lines 9719, 10235, 10764, 11290:
#  (Harold,John, Jr.,,Daub,,) to (Harold,John, Daub, Jr.,)
# -Lines 10019, 10550, 11075, 11606, 12141, 12664: 
#  (Itimous,Thaddeus, Jr.,,Valentine,,) to (Itimous,Thaddeus,Valentine,Jr.,)
# -Lines 10641, 11168, 11697, 12230, 12738: 
#  (John,Alexander, III,McMillan,,) to (John,Alexander,McMillan,III) 
congress_age <- read_csv("data-raw/congress-age/congress-terms.csv")
colnames(congress_age) <- colnames(congress_age) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

congress_age <- congress_age %>% 
  mutate(incumbent = ifelse(incumbent == "Yes", TRUE, FALSE))
devtools::use_data(congress_age, overwrite = TRUE)



# cousin-marriage --------------------------------------------------------------





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



# democratic-bench -------------------------------------------------------------
democratic_bench <- read_csv("data-raw/democratic-bench/democratic-bench.csv") 
colnames(democratic_bench) <- colnames(democratic_bench) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
democratic_bench <- democratic_bench %>% 
  rename(candidate = cand)
devtools::use_data(democratic_bench, overwrite = TRUE)



# drug-use-by-age --------------------------------------------------------------



# early-senate-polls -----------------------------------------------------------



# elo-blatter ------------------------------------------------------------------
elo_blatter <- read_csv("data-raw/elo-blatter/elo_blatter.csv")
colnames(elo_blatter) <- colnames(elo_blatter) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
devtools::use_data(elo_blatter, overwrite = TRUE)



# endorsements-june-30 ---------------------------------------------------------
endorsements <- read_csv("data-raw/endorsements-june-30/endorsements-june-30.csv")
colnames(endorsements) <- colnames(endorsements) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
endorsements <- endorsements %>% 
  mutate(won_primary = ifelse(won_primary == "Yes", TRUE, FALSE))
devtools::use_data(endorsements, overwrite = TRUE)



# fandango ---------------------------------------------------------------------
fandango <- read_csv("data-raw/fandango/fandango_score_comparison.csv")
colnames(fandango) <- colnames(fandango) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
fandango <- fandango %>% 
  separate(film, c("film", "year"), sep=" \\(") %>% 
  mutate(
    year = str_replace_all(year, "\\)", ""),
    year = as.numeric(year)
    )
devtools::use_data(fandango, overwrite = TRUE)

fandango_scrape <- read_csv("data-raw/fandango/fandango_scrape.csv")
colnames(fandango_scrape) <- colnames(fandango_scrape) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
# double parentheses at some points
# fandango_scrape <- fandango_scrape %>% 
#   separate(film, c("film", "year"), sep=" \\(") %>% 
#   mutate(
#     year = str_replace_all(year, "\\)", ""),
#     year = as.numeric(year)
#   )
# devtools::use_data(fandango_scrape, overwrite = TRUE)





# fifa -------------------------------------------------------------------------
fifa_audience <- read_csv("data-raw/fifa/fifa_countries_audience.csv")
colnames(fifa_audience) <- colnames(fifa_audience) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
devtools::use_data(fifa_audience, overwrite = TRUE)



# flying-etiquette-survey ------------------------------------------------------
flying <- read_csv("data-raw/flying-etiquette-survey/flying-etiquette.csv")



# food-world-cup ---------------------------------------------------------------
food_world_cup <- read_csv("data-raw/food-world-cup/food-world-cup-data.csv")

# Modify variable names
varnames <- colnames(food_world_cup)
country_indices <- 
  str_sub(varnames, 1, 29) == "Please rate how much you like"
varnames[country_indices] <- str_sub(varnames[country_indices], 58, -2)
varnames[c(1, 2, 3, 48)] <- c("respondent_id", "knowledge", "interest", "location")
colnames(food_world_cup) <- varnames %>%
  tolower() %>% 
  str_replace_all(" ", "_") 

food_world_cup <- food_world_cup %>% 
  mutate(
    interest = str_replace_all(interest, "\xca", ""),
    knowledge = factor(knowledge, levels = c(
      "Novice", "Intermediate", "Advanced", "Expert"
      )), 
    interest = factor(interest, levels = c(
      "Not at all", "Not much", "Some", "A lot"
      )), 
    age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60")),
    household_income = factor(household_income, levels = c(
      "$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999", 
      "$100,000 - $149,999", "$150,000+")),
    education = factor(education, levels=c(
      "Less than high school degree", "High school degree", 
      "Some college or Associate degree","Bachelor degree", "Graduate degree"
    ))
  ) %>% 
  select(respondent_id, knowledge, interest, gender, age, household_income, 
         education, location, algeria, argentina, australia, belgium, 
         bosnia_and_herzegovina, 
         brazil, cameroon, chile, china, colombia, costa_rica, 
         croatia, cuba, ecuador, england, ethiopia, france, 
         germany, ghana, greece, honduras, india, iran, ireland, 
         italy, ivory_coast, japan, mexico, nigeria, portugal, 
         russia, south_korea, spain, switzerland, thailand, 
         the_netherlands, turkey, united_states, uruguay, vietnam)
devtools::use_data(food_world_cup, overwrite = TRUE)




