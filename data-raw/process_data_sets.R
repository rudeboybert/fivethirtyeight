library(tidyverse)
library(janitor)
library(lubridate)
library(stringr)
library(usethis)
library(devtools)



# Datasets cleaned and written by Albert Y. Kim

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
    airline = ifelse(incl_reg_subsidiaries, str_sub(airline, end = -2), airline)
  ) %>%
  select(airline, incl_reg_subsidiaries, everything())
usethis::use_data(airline_safety, overwrite = TRUE)

# alcohol_consumption ----------------------------------------------------------
drinks <- read_csv("data-raw/alcohol-consumption/drinks.csv")
colnames(drinks) <- colnames(drinks) %>%
  tolower() %>%
  str_replace_all(" ", "_")
usethis::use_data(drinks, overwrite = TRUE)

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
usethis::use_data(avengers, overwrite = TRUE)

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
usethis::use_data(bad_drivers, overwrite = TRUE)

# bechdel ----------------------------------------------------------------------
bechdel <- read_csv("data-raw/bechdel/movies.csv")
colnames(bechdel) <- colnames(bechdel) %>%
  tolower() %>%
  str_replace_all(" ", "_")

bechdel <- bechdel %>%
  rename(
    budget_2013 = `budget_2013$`,
    domgross_2013 = `domgross_2013$`,
    intgross_2013 = `intgross_2013$`
  ) %>%
  mutate(
    # Clean some movie titles
    title = str_replace_all(title, "&amp;", "&"),
    title = str_replace_all(title, "&#39;", "'"),
    # Convert strings to numeric
    # Avatar and Titanic overflow integer capacity
    domgross = as.numeric(domgross),
    intgross = as.numeric(intgross),
    domgross_2013 = as.numeric(domgross_2013),
    intgross_2013 = as.numeric(intgross_2013),
    # Set levels to factors
    clean_test = factor(clean_test, levels = c("nowomen", "notalk", "men", "dubious", "ok"), ordered = TRUE)
  )
usethis::use_data(bechdel, overwrite = TRUE)

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
    box_office = str_sub(box_office, end = -2),
    box_office = as.numeric(box_office),
    units = ifelse(units == "M", 10^6, ifelse(units == "K", 10^3, NA)),
    box_office = box_office * units,
    # Convert 0/1 to TRUE/FALSE
    person_of_color = as.logical(person_of_color),
    # Shorten IMDB link
    site = str_sub(site, 27, 35)
  ) %>%
  select(-units)
usethis::use_data(biopics, overwrite = TRUE)

# births -----------------------------------------------------------------------
US_births_1994_2003 <- read_csv("data-raw/births/US_births_1994-2003_CDC_NCHS.csv")
colnames(US_births_1994_2003) <- colnames(US_births_1994_2003) %>%
  tolower() %>%
  str_replace_all(" ", "_")
US_births_1994_2003 <- US_births_1994_2003 %>%
  mutate(
    date = ymd(paste(year, month, date_of_month)),
    day_of_week = wday(date, label = TRUE)
  ) %>%
  select(year, month, date_of_month, date, everything())
usethis::use_data(US_births_1994_2003, overwrite = TRUE)

US_births_2000_2014 <- read_csv("data-raw/births/US_births_2000-2014_SSA.csv")
colnames(US_births_2000_2014) <- colnames(US_births_2000_2014) %>%
  tolower() %>%
  str_replace_all(" ", "_")
US_births_2000_2014 <- US_births_2000_2014 %>%
  mutate(
    date = ymd(paste(year, month, date_of_month)),
    day_of_week = wday(date, label = TRUE)
  ) %>%
  select(year, month, date_of_month, date, everything())
usethis::use_data(US_births_2000_2014, overwrite = TRUE)

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
usethis::use_data(bob_ross, overwrite = TRUE)

# buster-posey_mvp -------------------------------------------------------------
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
usethis::use_data(classic_rock_raw_data, overwrite = TRUE)

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
usethis::use_data(classic_rock_song_list, overwrite = TRUE)

# college-majors ---------------------------------------------------------------
college_all_ages <- read_csv("data-raw/college-majors/all-ages.csv")
colnames(college_all_ages) <- colnames(college_all_ages) %>%
  tolower() %>%
  str_replace_all(" ", "_")
college_all_ages <- college_all_ages %>%
  rename(employed_fulltime_yearround = employed_full_time_year_round) %>%
  mutate(
    median = as.double(median),
    p25th = as.double(p25th),
    major = str_to_title(major)
  ) %>%
  select(
    major_code, major, major_category, total, employed,
    employed_fulltime_yearround, unemployed, unemployment_rate,
    p25th, median, p75th
  )
usethis::use_data(college_all_ages, overwrite = TRUE)

college_grad_students <- read_csv("data-raw/college-majors/grad-students.csv")
colnames(college_grad_students) <- colnames(college_grad_students) %>%
  tolower() %>%
  str_replace_all(" ", "_")
college_grad_students <- college_grad_students %>%
  rename(
    grad_employed_fulltime_yearround = grad_full_time_year_round,
    nongrad_employed_fulltime_yearround = nongrad_full_time_year_round,
    grad_p25th = grad_p75,
    grad_p75th = grad_p25,
    nongrad_p25th = nongrad_p25,
    nongrad_p75th = nongrad_p75
  ) %>%
  mutate(
    grad_p25th = as.double(grad_p25th),
    nongrad_p25th = as.double(nongrad_p25th),
    major = str_to_title(major)
  ) %>%
  select(
    major_code, major, major_category,
    grad_total, grad_sample_size, grad_employed, grad_employed_fulltime_yearround,
    grad_unemployed, grad_unemployment_rate,
    grad_p25th, grad_median, grad_p75th,
    nongrad_total, nongrad_employed, nongrad_employed_fulltime_yearround,
    nongrad_unemployed, nongrad_unemployment_rate,
    nongrad_p25th, nongrad_median, nongrad_p75th,
    grad_share, grad_premium
  )
usethis::use_data(college_grad_students, overwrite = TRUE)

# Redundant: These are the first three columns of college_all_ages and
# college_grad_students
# college_majors <- read_csv("data-raw/college-majors/majors-list.csv")
# colnames(college_majors) <- colnames(college_majors) %>%
#   tolower() %>%
#   str_replace_all(" ", "_")
# college_majors <- college_majors %>%
#   rename(major_code = fod1p) %>%
#   mutate(major = str_to_title(major))
# usethis::use_data(college_majors, overwrite = TRUE)

college_recent_grads <- read_csv("data-raw/college-majors/recent-grads.csv")
colnames(college_recent_grads) <- colnames(college_recent_grads) %>%
  tolower() %>%
  str_replace_all(" ", "_")
college_recent_grads <- college_recent_grads %>%
  rename(
    employed_fulltime_yearround = full_time_year_round,
    employed_fulltime = full_time,
    employed_parttime = part_time
  ) %>%
  mutate(
    p25th = as.double(p25th),
    median = as.double(median),
    p75th = as.double(p75th),
    major = str_to_title(major)
  ) %>%
  select(
    rank, major_code, major, major_category, total, sample_size,
    men, women, sharewomen,
    employed, employed_fulltime, employed_parttime, employed_fulltime_yearround,
    unemployed, unemployment_rate,
    p25th, median, p75th,
    college_jobs, non_college_jobs, low_wage_jobs
  )
usethis::use_data(college_recent_grads, overwrite = TRUE)

# Redundant: Simply a subset of college_recent_grads
# college_women_stem <- read_csv("data-raw/college-majors/women-stem.csv")
# colnames(college_women_stem) <- colnames(college_women_stem) %>%
#   tolower() %>%
#   str_replace_all(" ", "_")
# college_women_stem <- college_women_stem %>%
#   mutate(
#     median = as.double(median),
#     major = str_to_title(major)
#     )
# usethis::use_data(college_women_stem, overwrite = TRUE)

# comma-survey ------------------------------------------------------------
comma_survey <- read_csv("data-raw/comma-survey/comma-survey.csv")
colnames(comma_survey) <- colnames(comma_survey) %>%
  tolower() %>%
  str_replace_all(" ", "_")

comma_survey <- comma_survey %>%
  rename(
    respondent_id = respondentid,
    location = `location_(census_region)`,
    more_grammar_correct = `in_your_opinion,_which_sentence_is_more_gramatically_correct?`,
    heard_oxford_comma = `prior_to_reading_about_it_above,_had_you_heard_of_the_serial_(or_oxford)_comma?`,
    care_oxford_comma = `how_much,_if_at_all,_do_you_care_about_the_use_(or_lack_thereof)_of_the_serial_(or_oxford)_comma_in_grammar?`,
    write_following = `how_would_you_write_the_following_sentence?`,
    data_singular_plural = `when_faced_with_using_the_word_\"data\",_have_you_ever_spent_time_considering_if_the_word_was_a_singular_or_plural_noun?`,
    care_data = `how_much,_if_at_all,_do_you_care_about_the_debate_over_the_use_of_the_word_\"data\"_as_a_singluar_or_plural_noun?`,
    care_proper_grammar = `in_your_opinion,_how_important_or_unimportant_is_proper_use_of_grammar?`
  ) %>%
  mutate(
    # Set levels to factors
    age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60"), ordered = TRUE),
    household_income = factor(household_income, levels = c(
      "$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999",
      "$100,000 - $149,999", "$150,000+"
    ), ordered = TRUE),
    education = factor(education, levels = c(
      "Less than high school degree", "High school degree",
      "Some college or Associate degree", "Bachelor degree", "Graduate degree"
    ), ordered = TRUE),
    heard_oxford_comma = ifelse(heard_oxford_comma == "Yes", TRUE, FALSE),
    data_singular_plural = ifelse(data_singular_plural == "Yes", TRUE, FALSE),
    care_oxford_comma = factor(care_oxford_comma, levels = c(
      "Not at all", "Not much", "Some", "A lot"
    ), ordered = TRUE),
    care_data = factor(care_data, levels = c(
      "Not at all", "Not much", "Some", "A lot"
    ), ordered = TRUE),
    care_proper_grammar = factor(care_proper_grammar, levels = c(
      "Very unimportant", "Somewhat unimportant",
      "Neither important nor unimportant (neutral)", "Somewhat important",
      "Very important"
    ), ordered = TRUE)
  ) %>%
  select(
    respondent_id, gender, age, household_income,
    education, location, everything()
  )
usethis::use_data(comma_survey, overwrite = TRUE)

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
usethis::use_data(congress_age, overwrite = TRUE)

# cousin-marriage --------------------------------------------------------------
cousin_marriage <- read_csv("data-raw/cousin-marriage/cousin-marriage-data.csv")
colnames(cousin_marriage) <- colnames(cousin_marriage) %>%
  tolower() %>%
  str_replace_all(" ", "_")
usethis::use_data(cousin_marriage, overwrite = TRUE)

# daily_show_guests ------------------------------------------------------------
daily_show_guests <- read_csv("data-raw/daily-show-guests/daily_show_guests.csv")
colnames(daily_show_guests) <- colnames(daily_show_guests) %>%
  tolower() %>%
  str_replace_all(" ", "_")
daily_show_guests <- daily_show_guests %>%
  rename(google_knowledge_occupation = googleknowlege_occupation) %>%
  mutate(
    # Convert Show date to POSIX date object
    show = mdy(show),
    # Try to consolidate category of guest a bit
    google_knowledge_occupation = tolower(google_knowledge_occupation)
  )
usethis::use_data(daily_show_guests, overwrite = TRUE)

# democratic-bench -------------------------------------------------------------
democratic_bench <- read_csv("data-raw/democratic-bench/democratic-bench.csv")
colnames(democratic_bench) <- colnames(democratic_bench) %>%
  tolower() %>%
  str_replace_all(" ", "_")
democratic_bench <- democratic_bench %>%
  rename(candidate = cand)
usethis::use_data(democratic_bench, overwrite = TRUE)

# drug-use-by-age --------------------------------------------------------------
drug_use <- read_csv("data-raw/drug-use-by-age/drug-use-by-age.csv", na = c("", "NA", "-"))
colnames(drug_use) <- colnames(drug_use) %>%
  tolower() %>%
  str_replace_all(" ", "_") %>%
  str_replace_all("-", "_") %>%
  str_replace_all("frequency", "freq")
drug_use <- drug_use %>%
  mutate(age = factor(age,
    levels = c(
      "12", "13", "14", "15", "16", "17", "18", "19", "20", "21",
      "22-23", "24-25", "26-29", "30-34", "35-49", "50-64", "65+"
    ),
    ordered = TRUE
  ))
usethis::use_data(drug_use, overwrite = TRUE)

# early-senate-polls -----------------------------------------------------------
senate_polls <- read_csv("data-raw/early-senate-polls/early-senate-polls.csv")
colnames(senate_polls) <- colnames(senate_polls) %>%
  tolower() %>%
  str_replace_all(" ", "_")
usethis::use_data(senate_polls, overwrite = TRUE)

# elo-blatter ------------------------------------------------------------------
elo_blatter <- read_csv("data-raw/elo-blatter/elo_blatter.csv")
colnames(elo_blatter) <- colnames(elo_blatter) %>%
  tolower() %>%
  str_replace_all(" ", "_")
usethis::use_data(elo_blatter, overwrite = TRUE)

# endorsements-june-30 ---------------------------------------------------------
endorsements <- read_csv("data-raw/endorsements-june-30/endorsements-june-30.csv")
colnames(endorsements) <- colnames(endorsements) %>%
  tolower() %>%
  str_replace_all(" ", "_")
endorsements <- endorsements %>%
  mutate(won_primary = ifelse(won_primary == "Yes", TRUE, FALSE))
usethis::use_data(endorsements, overwrite = TRUE)

# fandango ---------------------------------------------------------------------
fandango <- read_csv("data-raw/fandango/fandango_score_comparison.csv")
colnames(fandango) <- colnames(fandango) %>%
  tolower() %>%
  str_replace_all(" ", "_")
fandango <- fandango %>%
  separate(film, c("film", "year"), sep = " \\(") %>%
  mutate(
    year = str_replace_all(year, "\\)", ""),
    year = as.numeric(year)
  )
usethis::use_data(fandango, overwrite = TRUE)

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
# usethis::use_data(fandango_scrape, overwrite = TRUE)

# fifa -------------------------------------------------------------------------
fifa_audience <- read_csv("data-raw/fifa/fifa_countries_audience.csv")
colnames(fifa_audience) <- colnames(fifa_audience) %>%
  tolower() %>%
  str_replace_all(" ", "_")
usethis::use_data(fifa_audience, overwrite = TRUE)

# flying-etiquette-survey ------------------------------------------------------
flying <- read_csv("data-raw/flying-etiquette-survey/flying-etiquette.csv") %>%
  rename(
    respondent_id = RespondentID,
    location = `Location (Census Region)`,
    frequency = `How often do you travel by plane?`,
    recline_frequency = `Do you ever recline your seat when you fly?`,
    height = `How tall are you?`,
    children_under_18 = `Do you have any children under 18?`,
    two_arm_rests = `In a row of three seats, who should get to use the two arm rests?`,
    middle_arm_rest = `In a row of two seats, who should get to use the middle arm rest?`,
    shade = `Who should have control over the window shade?`,
    unsold_seat = `Is itrude to move to an unsold seat on a plane?`,
    talk_stranger = `Generally speaking, is it rude to say more than a few words tothe stranger sitting next to you on a plane?`,
    get_up = `On a 6 hour flight from NYC to LA, how many times is it acceptable to get up if you're not in an aisle seat?`,
    recline_obligation = `Under normal circumstances, does a person who reclines their seat during a flight have any obligation to the person sitting behind them?`,
    recline_rude = `Is itrude to recline your seat on a plane?`,
    recline_eliminate = `Given the opportunity, would you eliminate the possibility of reclining seats on planes entirely?`,
    switch_seats_friends = `Is it rude to ask someone to switch seats with you in order to be closer to friends?`,
    switch_seats_family = `Is itrude to ask someone to switch seats with you in order to be closer to family?`,
    wake_up_bathroom = `Is it rude to wake a passenger up if you are trying to go to the bathroom?`,
    wake_up_walk = `Is itrude to wake a passenger up if you are trying to walk around?`,
    baby = `In general, is itrude to bring a baby on a plane?`,
    unruly_child = `In general, is it rude to knowingly bring unruly children on a plane?`,
    electronics = `Have you ever used personal electronics during take off or landing in violation of a flight attendant's direction?`,
    smoked = `Have you ever smoked a cigarette in an airplane bathroom when it was against the rules?`
  )
colnames(flying) <- colnames(flying) %>%
  tolower() %>%
  str_replace_all(" ", "_")

flying <- flying %>%
  mutate(
    # Demographic Info
    age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60"), ordered = TRUE),
    household_income = factor(household_income, levels = c(
      "$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999",
      "$100,000 - $149,999", "$150,000+"
    ), ordered = TRUE),
    education = factor(education, levels = c(
      "Less than high school degree", "High school degree",
      "Some college or Associate degree", "Bachelor degree", "Graduate degree"
    ), ordered = TRUE),
    # Convert Yes/No to booleans
    electronics = ifelse(electronics == "Yes", TRUE, FALSE),
    smoked = ifelse(smoked == "Yes", TRUE, FALSE),
    children_under_18 = ifelse(children_under_18 == "Yes", TRUE, FALSE),
    recline_obligation =
      ifelse(recline_obligation ==
        "Yes, they should not recline their chair if the person behind them asks them not to",
      TRUE, FALSE
      ),
    recline_eliminate = ifelse(recline_eliminate == "Yes", TRUE, FALSE),
    # Convert ordinal categorical to factor
    height = factor(height, levels = c(
      "Under 5 ft.", "5'0\"", "5'1\"", "5'2\"", "5'3\"", "5'4\"", "5'5\"",
      "5'6\"", "5'7\"", "5'8\"", "5'9\"", "5'10\"", "5'11\"",
      "6'0\"", "6'1\"", "6'2\"", "6'3\"", "6'4\"", "6'5\"", "6'6\" and above"
    ), ordered = TRUE),
    frequency = factor(frequency, levels = c(
      "Never", "Once a year or less", "Once a month or less", "A few times per month",
      "A few times per week", "Every day"
    ), ordered = TRUE),
    recline_frequency = factor(recline_frequency, levels = c(
      "Never", "Once in a while", "About half the time", "Usually", "Always"
    ), ordered = TRUE),
    unsold_seat = factor(unsold_seat, levels = c(
      "No, not rude at all", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    talk_stranger = factor(talk_stranger, levels = c(
      "No, not at all rude", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    get_up = factor(get_up, levels = c(
      "It is not okay to get up during flight", "Once", "Twice", "Three times", "Four times",
      "More than five times times"
    ), ordered = TRUE),
    recline_rude = factor(recline_rude, levels = c(
      "No, not rude at all", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    switch_seats_friends = factor(switch_seats_friends, levels = c(
      "No, not at all rude", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    switch_seats_family = factor(switch_seats_family, levels = c(
      "No, not at all rude", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    wake_up_bathroom = factor(wake_up_bathroom, levels = c(
      "No, not at all rude", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    wake_up_walk = factor(wake_up_walk, levels = c(
      "No, not at all rude", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    baby = factor(baby, levels = c(
      "No, not at all rude", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE),
    unruly_child = factor(unruly_child, levels = c(
      "No, not at all rude", "Yes, somewhat rude", "Yes, very rude"
    ), ordered = TRUE)
  ) %>%
  select(
    respondent_id, gender, age, height, children_under_18, household_income, education, location,
    frequency, recline_frequency, recline_obligation, recline_rude, recline_eliminate,
    switch_seats_friends, switch_seats_family,
    wake_up_bathroom, wake_up_walk,
    baby, unruly_child,
    two_arm_rests, middle_arm_rest,
    everything()
  )

levels(flying$recline_rude) <- c("No", "Somewhat", "Very")
levels(flying$switch_seats_friends) <- c("No", "Somewhat", "Very")
levels(flying$switch_seats_family) <- c("No", "Somewhat", "Very")
levels(flying$wake_up_bathroom) <- c("No", "Somewhat", "Very")
levels(flying$wake_up_walk) <- c("No", "Somewhat", "Very")
levels(flying$baby) <- c("No", "Somewhat", "Very")
levels(flying$unruly_child) <- c("No", "Somewhat", "Very")
levels(flying$unsold_seat) <- c("No", "Somewhat", "Very")
levels(flying$talk_stranger) <- c("No", "Somewhat", "Very")

flying %>%
  select(
    recline_rude, switch_seats_friends, switch_seats_family, wake_up_bathroom,
    wake_up_walk, baby, unruly_child, unsold_seat, talk_stranger
  ) %>%
  apply(2, table)

usethis::use_data(flying, overwrite = TRUE)

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
    ), ordered = TRUE),
    interest = factor(interest, levels = c(
      "Not at all", "Not much", "Some", "A lot"
    ), ordered = TRUE),
    age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60")),
    household_income = factor(household_income, levels = c(
      "$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999",
      "$100,000 - $149,999", "$150,000+"
    )),
    education = factor(education, levels = c(
      "Less than high school degree", "High school degree",
      "Some college or Associate degree", "Bachelor degree", "Graduate degree"
    ), ordered = TRUE)
  ) %>%
  select(
    respondent_id, knowledge, interest, gender, age, household_income,
    education, location, algeria, argentina, australia, belgium,
    bosnia_and_herzegovina,
    brazil, cameroon, chile, china, colombia, costa_rica,
    croatia, cuba, ecuador, england, ethiopia, france,
    germany, ghana, greece, honduras, india, iran, ireland,
    italy, ivory_coast, japan, mexico, nigeria, portugal,
    russia, south_korea, spain, switzerland, thailand,
    the_netherlands, turkey, united_states, uruguay, vietnam
  )
usethis::use_data(food_world_cup, overwrite = TRUE)

# love-actually -------------------------------------------------------------------------
love_actually_adj <- read_csv("data-raw/love-actually/love_actually_adjacencies.csv")

# HACK: Make adjacency matrix symmetric
love_actually_adj <- replace(love_actually_adj, is.na(love_actually_adj), 0)
for (i in 1:nrow(love_actually_adj)) {
  love_actually_adj[i, -1] <- t(love_actually_adj[, i + 1])
}
usethis::use_data(love_actually_adj, overwrite = TRUE)

love_actually_appearance <- read_csv("data-raw/love-actually/love_actually_appearances.csv") %>%
  # Only first 71 rows had data
  slice(1:71)
# Replace all NA's with FALSE
love_actually_appearance <- replace(love_actually_appearance, is.na(love_actually_appearance), FALSE)

usethis::use_data(love_actually_appearance, overwrite = TRUE)



# Datasets cleaned and written by Chester Ismay

# Get list of variable names in df with newline
get_names <- function(x) {
  cat(names(x), sep = "\n")
}

# Chester: forecast-methodology thru police-killings
chester_folders <- list.files(path = "data-raw")[c(26:30, 32:51)]
dirs <- paste0("data-raw/", chester_folders, "\n")
cat(dirs)

# To make headers, guess at data frame names, and use_data
prep <- function(x) {
  dashes <- rep("-", times = (81 - nchar(x))) %>%
    paste(collapse = "")
  x <- x %>% str_replace_all("-", "_")
  paste0(
    "# ", x, " ", dashes, "\n",
    x, " <-", "\n\n",
    "devtools::use_data(", x, ", overwrite = TRUE) \n\n\n\n\n"
  )
}
lapply(chester_folders, prep) %>%
  unlist() %>%
  cat()

# Get state info
source("data-raw/state_info.R")

# forecast_methodology -------------------------------------------------------------
hist_senate_preds <-
  read_csv("data-raw/forecast-methodology/historical-senate-predictions.csv") %>%
  # Redundant column not specified in README.md
  select(-winflag)
colnames(hist_senate_preds) <- colnames(hist_senate_preds) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(hist_senate_preds, overwrite = TRUE)

# hate-crimes ----------------------------------------------------------------------
hate_crimes <- read_csv("data-raw/hate-crimes/hate_crimes.csv") %>%
  rename(
    "share_pop_HS" = share_population_with_high_school_degree,
    "share_pop_metro" = share_population_in_metro_areas,
    "share_vote_trump" = share_voters_voted_trump,
    "share_unemp_seas" = share_unemployed_seasonal,
    "median_house_inc" = median_household_income
  )
colnames(hate_crimes) <- colnames(hate_crimes) %>%
  tolower() %>%
  str_replace_all(" ", "_")

# Add state abbreviations only
hate_crimes <- hate_crimes %>%
  left_join(state_info, by = "state") %>%
  select(-c(division, region)) %>%
  select(state, state_abbrev, everything())
usethis::use_data(hate_crimes, overwrite = TRUE)

# hip_hop_candidate_lyrics ---------------------------------------------------------
hiphop_cand_lyrics <-
  read_csv("data-raw/hip-hop-candidate-lyrics/genius_hip_hop_lyrics.csv",
    na = "N/A"
  ) %>%
  # Not specified in README.md
  select(-id) %>%
  mutate(sentiment = factor(sentiment, levels = c("negative", "neutral", "positive"), ordered = TRUE))
colnames(hiphop_cand_lyrics) <- colnames(hiphop_cand_lyrics) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(hiphop_cand_lyrics, overwrite = TRUE)

# historical_ncaa_forecasts --------------------------------------------------------
path <- "data-raw/historical-ncaa-forecasts/"
hist_ncaa_bball_casts <-
  read_csv(paste0(path, "historical-538-ncaa-tournament-model-results.csv")) %>%
  rename(
    favorite_prob = favorite_probability,
    favorite_win = favorite_win_flag
  ) %>%
  mutate(favorite_win = ifelse(favorite_win == 1, TRUE, FALSE))
colnames(hist_ncaa_bball_casts) <- colnames(hist_ncaa_bball_casts) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(hist_ncaa_bball_casts, overwrite = TRUE)

# infrastructure_jobs --------------------------------------------------------------
state_payrolls <- read_csv("data-raw/infrastructure-jobs/payroll-states.csv") %>%
  # Drop row number variable
  select(-X1) # %>%
# gather(key = "state", value = "value", -date)
colnames(state_payrolls) <- colnames(state_payrolls) %>%
  tolower() %>%
  str_replace_all(" ", "_")
# devtools::use_data(state_payrolls, overwrite = TRUE)

# librarians -----------------------------------------------------------------------
librarians <- read_csv("data-raw/librarians/librarians-by-msa.csv") %>%
  # Remove missing data rows
  slice(-c(1, 2)) %>%
  rename(loc_quotient = loc.quotient) %>%
  mutate(
    jobs_1000 = as.numeric(jobs_1000),
    loc_quotient = as.numeric(loc_quotient)
  )
colnames(librarians) <- colnames(librarians) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(librarians, overwrite = TRUE)

# mad_men --------------------------------------------------------------------------
mad_men <- read_csv("data-raw/mad-men/show-data.csv") %>%
  rename(
    num_lead = `#LEAD`,
    num_support = `#SUPPORT`,
    num_shows = `#Shows`,
    status = `Status?`,
    score_div_y = `Score/Y`
  )
colnames(mad_men) <- colnames(mad_men) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(mad_men, overwrite = TRUE)

# male_flight_attendants -----------------------------------------------------------
male_flight_attend <-
  read_tsv("data-raw/male-flight-attendants/male-flight-attendants.tsv")
colnames(male_flight_attend) <- colnames(male_flight_attend) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(male_flight_attend, overwrite = TRUE)

# march_madness_predictions --------------------------------------------------------

#-- MULTIPLE DATA FILES

# march_madness_predictions_2015 ---------------------------------------------------

#-- MULTIPLE DATA FILES

# marriage -------------------------------------------------------------------------

#-- Needs tidying and MULTIPLE DATA FILES

# mlb_allstar_teams ----------------------------------------------------------------
mlb_as_team_talent <- read_csv("data-raw/mlb-allstar-teams/allstar_team_talent.csv")
colnames(mlb_as_team_talent) <- colnames(mlb_as_team_talent) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(mlb_as_team_talent, overwrite = TRUE)

mlb_as_play_talent <- read_csv("data-raw/mlb-allstar-teams/allstar_player_talent.csv")
colnames(mlb_as_play_talent) <- colnames(mlb_as_play_talent) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(mlb_as_play_talent, overwrite = TRUE)

# most_common_name -----------------------------------------------------------------

#-- MULTIPLE DATA FILES

# murder_2016 ----------------------------------------------------------------------
murder_2016_prelim <- read_csv("data-raw/murder_2016/murder_2016_prelim.csv") %>%
  rename(
    murders_2015 = `2015_murders`,
    murders_2016 = `2016_murders`
  ) %>%
  mutate(as_of = mdy(as_of))
colnames(murder_2016_prelim) <- colnames(murder_2016_prelim) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(murder_2016_prelim, overwrite = TRUE)

murder_2015_final <- read_csv("data-raw/murder_2016/murder_2015_final.csv") %>%
  rename(
    murders_2014 = `2014_murders`,
    murders_2015 = `2015_murders`
  )
colnames(murder_2015_final) <- colnames(murder_2015_final) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(murder_2015_final, overwrite = TRUE)

# nba_draft_2015 -------------------------------------------------------------------
nba_draft_2015 <- read_csv("data-raw/nba-draft-2015/historical_projections.csv")
colnames(nba_draft_2015) <- colnames(nba_draft_2015) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nba_draft_2015, overwrite = TRUE)

# nba_elo --------------------------------------------------------------------------
nba_elo <- read_csv("data-raw/nba-elo/nbaallelo.csv") %>%
  rename(is_copy = `_iscopy`) %>%
  mutate(
    is_playoffs = ifelse(is_playoffs == 1, TRUE, FALSE),
    is_copy = ifelse(is_copy == 1, TRUE, FALSE),
    date_game = mdy(date_game)
  )
colnames(nba_elo) <- colnames(nba_elo) %>%
  tolower() %>%
  str_replace_all(" ", "_")
# Not included due to size
# devtools::use_data(nba_elo, overwrite = TRUE)

# nba_tattoos ----------------------------------------------------------------------
nba_tattoos <- read_csv("data-raw/nba-tattoos/nba-tattoos-data.csv") %>%
  rename(
    player_name = `Player Name`,
    tattoos = `Tattoos yes/no`
  ) %>%
  mutate(tattoos = ifelse(tattoos == "yes", TRUE, FALSE))
colnames(nba_tattoos) <- colnames(nba_tattoos) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nba_tattoos, overwrite = TRUE)

# nba_winprobs ---------------------------------------------------------------------
# Needs tidying (documentation not created)
nba_winprobs <- read_tsv("data-raw/nba-winprobs/nba.tsv")
colnames(nba_winprobs) <- colnames(nba_winprobs) %>%
  tolower() %>%
  str_replace_all(" ", "_")
# devtools::use_data(nba_winprobs, overwrite = TRUE)

# nfl_favorite_team ----------------------------------------------------------------
nfl_fav_team <-
  read_csv("data-raw/nfl-favorite-team/team-picking-categories.csv") %>%
  rename(
    big_market = BMK,
    uniform = UNI,
    coaching = CCH,
    stadium_exp = STX,
    small_market = SMK,
    afford = AFF,
    stlouis_prox = SLP,
    nyc_prox = NYP,
    fan_relations = FRL,
    bang_buck = BNG,
    tradition = TRD,
    bandwagon = BWG,
    future_wins = FUT,
    players = PLA,
    ownership = OWN,
    behavior = BEH
  )
colnames(nfl_fav_team) <- colnames(nfl_fav_team) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nfl_fav_team, overwrite = TRUE)

# nfl_suspensions ------------------------------------------------------------------
nfl_suspensions <- read_csv("data-raw/nfl-suspensions/nfl-suspensions-data.csv") %>%
  rename(description = `desc.`)
colnames(nfl_suspensions) <- colnames(nfl_suspensions) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nfl_suspensions, overwrite = TRUE)

# nfl_ticket_prices ----------------------------------------------------------------
nfltix_div_avgprice <-
  read_csv("data-raw/nfl-ticket-prices/2014-average-ticket-price.csv") %>%
  rename(avg_tix_price = `Avg TP, $`)
colnames(nfltix_div_avgprice) <- colnames(nfltix_div_avgprice) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nfltix_div_avgprice, overwrite = TRUE)

nfltix_jets_buy <- read_csv("data-raw/nfl-ticket-prices/jets-buyer.csv")
# Needs cleaning, multiple subtables

nfltix_usa_avg <- read_csv("data-raw/nfl-ticket-prices/national-average.csv") %>%
  rename(
    avg_tix_price = `Avg TP, $`,
    team = Genre
  ) %>%
  mutate(team = str_replace_all(team, pattern = " Tickets", replacement = ""))
colnames(nfltix_usa_avg) <- colnames(nfltix_usa_avg) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nfltix_usa_avg, overwrite = TRUE)

# nfl_wide_receivers ---------------------------------------------------------------
nflwr_hist <- read_csv("data-raw/nfl-wide-receivers/advanced-historical.csv",
  na = "NULL"
)
colnames(nflwr_hist) <- colnames(nfl_wr_hist) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nflwr_hist, overwrite = TRUE)

nflwr_aging_curve <- read_csv("data-raw/nfl-wide-receivers/try-per-game-aging-curve.csv")
colnames(nflwr_aging_curve) <- colnames(nflwr_aging_curve) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nflwr_aging_curve, overwrite = TRUE)

# nutrition_studies ----------------------------------------------------------------
nutrition_survey <- read_csv("data-raw/nutrition-studies/raw_anonymized_data.csv")
colnames(nutrition_survey) <- colnames(nutrition_survey) %>%
  tolower() %>%
  str_replace_all(" ", "_")
# Needs to be flipped with survey respondent as OU

nutrition_pvalues <- read_csv("data-raw/nutrition-studies/p_values_analysis.csv")
colnames(nutrition_pvalues) <- colnames(nutrition_pvalues) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(nutrition_pvalues, overwrite = TRUE)

# pew_religions --------------------------------------------------------------------
# A transition matrix of data is included here.

# police_deaths --------------------------------------------------------------------
police_deaths <- read_csv("data-raw/police-deaths/clean_data.csv") %>%
  # Removed extra variables
  select(person, cause_short, date:state) %>%
  rename(cause_of_death = cause_short)
colnames(police_deaths) <- colnames(police_deaths) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(police_deaths, overwrite = TRUE)

# police_killings ------------------------------------------------------------------
police_killings <- read_csv("data-raw/police-killings/police_killings.csv",
  na = c("Unknown", "-", "NA")
)
colnames(police_killings) <- colnames(police_killings) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(police_killings, overwrite = TRUE)

# presidential-campaign-trail ------------------------------------------------------
clin_trail <- read_csv("data-raw/presidential-campaign-trail/clinton.csv") %>%
  mutate(candidate = "Clinton", date = mdy(date))
trum_trail <- read_csv("data-raw/presidential-campaign-trail/trump.csv") %>%
  mutate(candidate = "Trump", date = mdy(date))
pres_2016_trail <- bind_rows(clin_trail, trum_trail) %>%
  select(candidate, everything())
colnames(pres_2016_trail) <- colnames(pres_2016_trail) %>%
  tolower() %>%
  str_replace_all(" ", "_")
devtools::use_data(pres_2016_trail, overwrite = TRUE)



# Datasets cleaned and written by Jennifer Chunn

# police-locals ---------------------------------------------------------------
police_locals <- read_csv("data-raw/police-locals/police-locals.csv",
  na = c("", "NA", "**")
)
colnames(police_locals) <- colnames(police_locals) %>%
  tolower() %>%
  str_replace_all("-", "_")
police_locals <- police_locals %>% rename(force_size = police_force_size)

usethis::use_data(police_locals, overwrite = TRUE)

# poll-of-pollsters ---------------------------------------------------------------

#-- MULTIPLE DATA FILES

# pollster-ratings ---------------------------------------------------------------

#-- MULTIPLE DATA FILES

# potential-candidates ---------------------------------------------------------------
cand_events_20150114 <- read_csv("data-raw/potential-candidates/2015_01_14/events.csv")
colnames(cand_events_20150114) <- colnames(cand_events_20150114) %>% tolower()
cand_events_20150114 <- cand_events_20150114 %>%
  mutate(date = dmy(paste(date, "2015")))
usethis::use_data(cand_events_20150114, overwrite = TRUE)

cand_state_20150114 <- read_csv("data-raw/potential-candidates/2015_01_14/statements.csv")
colnames(cand_state_20150114) <- colnames(cand_state_20150114) %>% tolower()
cand_state_20150114 <- cand_state_20150114 %>%
  rename(
    date = `statement date`,
    latest = `latest statement`,
    score = `statement score`
  ) %>%
  mutate(
    date = dmy(paste(date, "2015")),
    score = factor(score, labels = c(
      "Not running", "Haven't ruled out running but leaning towards no",
      "Unsure", "Actively exploring or seriously considering"
    ))
  )
usethis::use_data(cand_state_20150114, overwrite = TRUE)


cand_events_20150130 <- read_csv("data-raw/potential-candidates/2015_01_30/events.csv")
colnames(cand_events_20150130) <- colnames(cand_events_20150130) %>% tolower()
cand_events_20150130 <- cand_events_20150130 %>%
  mutate(date = dmy(paste(date, "2015")))
usethis::use_data(cand_events_20150130, overwrite = TRUE)

cand_state_20150130 <- read_csv("data-raw/potential-candidates/2015_01_30/statements.csv")
colnames(cand_state_20150130) <- colnames(cand_state_20150130) %>% tolower()
cand_state_20150130 <- cand_state_20150130 %>%
  rename(
    date = `statement date`,
    latest = `latest statement`,
    score = `statement score`
  ) %>%
  mutate(
    date = dmy(paste(date, "2015")),
    score = factor(score, labels = c(
      "Not running", "Haven't ruled out running but leaning towards no",
      "Unsure", "Actively exploring or seriously considering"
    ))
  )
usethis::use_data(cand_state_20150130, overwrite = TRUE)

# presidential-commencement-speeches ---------------------------------------------------------------
pres_commencement <- read_csv("data-raw/presidential-commencement-speeches/commencement_speeches.csv")

pres_commencement <- pres_commencement %>%
  # Convert Show date to POSIX date object
  mutate(date = mdy(date)) %>%
  rename(pres = president, pres_name = president_name)

usethis::use_data(pres_commencement, overwrite = TRUE)

# pulitzer ---------------------------------------------------------------
pulitzer <- read_csv("data-raw/pulitzer/pulitzer-circulation-data.csv")
colnames(pulitzer) <- colnames(pulitzer) %>%
  tolower() %>%
  str_replace_all("pulitzer prize ", "") %>%
  str_replace_all(" ", "_") %>%
  str_replace_all(",", "") %>%
  str_replace_all("-", "_")

pulitzer <- pulitzer %>%
  rename(
    circ2004 = daily_circulation_2004,
    circ2013 = daily_circulation_2013,
    pctchg_circ = change_in_daily_circulation_2004_2013,
    num_finals1990_2003 = winners_and_finalists_1990_2003,
    num_finals2004_2014 = winners_and_finalists_2004_2014,
    num_finals1990_2014 = winners_and_finalists_1990_2014
  ) %>%
  mutate(pctchg_circ = as.integer(str_replace(pctchg_circ, "%", "")))

usethis::use_data(pulitzer, overwrite = TRUE)

# region-survey ---------------------------------------------------------------

#-- MULTIPLE DATA FILES

# religion-survey ---------------------------------------------------------------
# religion_survey <- read_csv("data-raw/religion-survey/religion-survey-results.csv")
# need to create all variable names
# usethis::use_data(religion_survey, overwrite = TRUE)

# san-andreas ---------------------------------------------------------------
san_andreas <- read_csv("data-raw/san-andreas/earthquake_data.csv")
colnames(san_andreas) <- c(
  "worry_general",
  "worry_bigone",
  "will_occur",
  "experience",
  "prepared",
  "fam_san_andreas",
  "fam_yellowstone",
  "age",
  "female",
  "hhold_income",
  "region"
)
san_andreas <- san_andreas %>%
  mutate(
    worry_general = factor(worry_general,
      levels = c(
        "Not at all worried", "Not so worried", "Somewhat worried",
        "Very worried", "Extremely worried"
      ), ordered = TRUE
    ),
    worry_bigone = factor(worry_bigone,
      levels = c(
        "Not at all worried", "Not so worried", "Somewhat worried",
        "Very worried", "Extremely worried"
      ), ordered = TRUE
    ),
    will_occur = ifelse(will_occur == "Yes", TRUE, FALSE),
    experience = factor(experience,
      levels = c("No", "Yes, one or more minor ones", "Yes, one or more major ones"), ordered = TRUE
    ),
    prepared = ifelse(prepared == "Yes", TRUE, FALSE),
    fam_san_andreas = factor(fam_san_andreas,
      levels = c(
        "Not at all familiar", "Not so familiar", "Somewhat familiar",
        "Very familiar", "Extremely familiar"
      ), ordered = TRUE
    ),
    fam_yellowstone = factor(fam_yellowstone,
      levels = c(
        "Not at all familiar", "Not so familiar", "Somewhat familiar",
        "Very familiar", "Extremely familiar"
      ), ordered = TRUE
    ),
    age = factor(age,
      levels = c("18 - 29", "30 - 44", "45 - 59", "60"),
      labels = c("18 - 29", "30 - 44", "45 - 59", "60+"), ordered = TRUE
    ),
    female = ifelse(female == "Female", TRUE, FALSE),
    hhold_income = factor(hhold_income,
      levels = c(
        "$0 to $9,999", "$10,000 to $24,999", "$25,000 to $49,999",
        "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $124,999",
        "$125,000 to $149,999", "$150,000 to $174,999", "$175,000 to $199,999",
        "$200,000 and up", "Prefer not to answer"
      ), ordered = TRUE
    )
  )
usethis::use_data(san_andreas, overwrite = TRUE)

# sleeping-alone-data ---------------------------------------------------------------
# sleeping_alone_data <- read_csv("data-raw/sleeping-alone-data/sleeping-alone-data.csv")
# much data editing needed
# usethis::use_data(sleeping_alone_data, overwrite = TRUE)

# star-wars-survey ---------------------------------------------------------------
# star_wars_survey <- read_csv("data-raw/star-wars-survey/StarWars.csv")
# much data editing needed
# usethis::use_data(star_wars_survey, overwrite = TRUE)

# steak-survey ---------------------------------------------------------------
steak_survey <- read_csv("data-raw/steak-survey/steak-risk-survey.csv")
colnames(steak_survey) <- c(
  "respondent_id",
  "lottery_a",
  "smoke",
  "alcohol",
  "gamble",
  "skydiving",
  "speed",
  "cheated",
  "steak",
  "steak_prep",
  "female",
  "age",
  "hhold_income",
  "educ",
  "region"
)
# remove row that only contains "Response" for each var
steak_survey <- steak_survey %>% filter(!is.na(respondent_id))

steak_survey <- steak_survey %>%
  mutate(
    lottery_a = ifelse(lottery_a == "Lottery A", TRUE, FALSE),
    smoke = ifelse(smoke == "Yes", TRUE, FALSE),
    alcohol = ifelse(alcohol == "Yes", TRUE, FALSE),
    gamble = ifelse(gamble == "Yes", TRUE, FALSE),
    skydiving = ifelse(skydiving == "Yes", TRUE, FALSE),
    speed = ifelse(speed == "Yes", TRUE, FALSE),
    cheated = ifelse(cheated == "Yes", TRUE, FALSE),
    steak = ifelse(steak == "Yes", TRUE, FALSE),
    steak_prep = factor(steak_prep,
      levels = c("Rare", "Medium rare", "Medium", "Medium Well", "Well"), ordered = TRUE
    ),
    female = ifelse(female == "Female", TRUE, FALSE),
    age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60"), ordered = TRUE),
    hhold_income = factor(hhold_income,
      levels = c("$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999",
        "$100,000 - $149,999", "$150,000+",
        ordered = TRUE
      )
    ),
    educ = factor(educ, levels = c(
      "Less than high school degree", "High school degree",
      "Some college or Associate degree", "Bachelor degree",
      "Graduate degree"
    ), ordered = TRUE)
  )
usethis::use_data(steak_survey, overwrite = TRUE)

# study-drugs ---------------------------------------------------------------
# DATA IS CONFIDENTIAL

# tarantino ---------------------------------------------------------------
tarantino <- read_csv("data-raw/tarantino/tarantino.csv")
tarantino <- tarantino %>%
  mutate(profane = ifelse(type == "word", TRUE, FALSE)) %>%
  select(movie, profane, word, minutes_in)
usethis::use_data(tarantino, overwrite = TRUE)

# tennis-time ---------------------------------------------------------------
tennis_events_time <- read_csv("data-raw/tennis-time/events_time.csv")

year_start <- sapply(str_split(tennis_events_time$years, "-"), function(x) {
  x[1]
})
year_end <- sapply(str_split(tennis_events_time$years, "-"), function(x) {
  ifelse(length(x) == 1, x[1], x[2])
})

tennis_events_time <- tennis_events_time %>%
  mutate(
    surface = factor(surface),
    year_start = as.integer(year_start),
    year_end = as.integer(year_end)
  ) %>%
  rename(sec_added = seconds_added_per_point) %>%
  select(-years)

usethis::use_data(tennis_events_time, overwrite = TRUE)

tennis_players_time <- read_csv("data-raw/tennis-time/players_time.csv")
tennis_players_time <- tennis_players_time %>% rename(sec_added = seconds_added_per_point)
usethis::use_data(tennis_players_time, overwrite = TRUE)

tennis_serve_time <- read_csv("data-raw/tennis-time/serve_times.csv")
tennis_serve_time <- tennis_serve_time %>%
  mutate(date = dmy(day)) %>%
  rename(sec_between = seconds_before_next_point) %>%
  select(-day)
usethis::use_data(tennis_serve_time, overwrite = TRUE)

# terrorism ---------------------------------------------------------------

# MULTIPLE FILES

# thanksgiving-2015 ---------------------------------------------------------------
# thanksgiving_2015 <- read_csv("data-raw/thanksgiving-2015/thanksgiving-2015-poll-data.csv")
#
# need to create all variable names
# usethis::use_data(thanksgiving_2015, overwrite = TRUE)

# trump-news ---------------------------------------------------------------
trump_news <- read_csv("data-raw/trump-news/trump_news_data.csv")
trump_news <- trump_news %>%
  mutate(date = mdy(date)) %>%
  rename(major_cat = major_category)
usethis::use_data(trump_news, overwrite = TRUE)

# trump-twitter ---------------------------------------------------------------
trump_twitter <- read_csv("data-raw/trump-twitter/realDonaldTrump_poll_tweets.csv")
trump_twitter <- trump_twitter %>%
  mutate(created_at = mdy_hms(created_at))
usethis::use_data(trump_twitter, overwrite = TRUE)

# unisex-names ---------------------------------------------------------------
unisex_names <- read_csv("data-raw/unisex-names/unisex_names_table.csv")
unisex_names <- unisex_names %>% select(-X1)
usethis::use_data(unisex_names, overwrite = TRUE)

# us-weather-history ---------------------------------------------------------------
#-- MULTIPLE FILES

# weather-check ---------------------------------------------------------------
weather_check <- read_csv("data-raw/weather-check/weather-check.csv", na = c("", "NA", "-"))
colnames(weather_check) <- c(
  "respondent_id",
  "ck_weather",
  "weather_source",
  "weather_source_site",
  "ck_weather_watch",
  "age",
  "female",
  "hhold_income",
  "region"
)
weather_check <- weather_check %>%
  mutate(
    ck_weather = ifelse(ck_weather == "Yes", TRUE, FALSE),
    ck_weather_watch = factor(ck_weather_watch,
      levels = c(
        "Very unlikely", "Somewhat unlikely",
        "Somewhat likely", "Very likely"
      ), ordered = TRUE
    ),
    age = factor(age,
      levels = c("18 - 29", "30 - 44", "45 - 59", "60+")
    ),
    female = ifelse(female == "Female", TRUE, FALSE),
    hhold_income = factor(hhold_income,
      levels = c(
        "$0 to $9,999", "$10,000 to $24,999", "$25,000 to $49,999",
        "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $124,999",
        "$125,000 to $149,999", "$150,000 to $174,999", "$175,000 to $199,999",
        "$200,000 and up", "Prefer not to answer"
      ), ordered = TRUE
    )
  )

usethis::use_data(weather_check, overwrite = TRUE)

# womens-world-cup-predictions ---------------------------------------------------------------
#--MULTIPLE FILES

# world-cup-predictions ---------------------------------------------------------------
#--MULTIPLE FILES

# obama-commutations ---------------------------------------------------------------
#-- not possible

# riddler-castles ---------------------------------------------------------------
riddler_castles <- read_csv("data-raw/riddler-castles/castle-solutions.csv", na = c("", "NA", "-"))
riddler_castles <- riddler_castles %>%
  rename("reason" = `Why did you choose your troop deployment?`)
colnames(riddler_castles) <- colnames(riddler_castles) %>%
  tolower() %>%
  str_replace_all(" ", "")
usethis::use_data(riddler_castles, overwrite = TRUE)

# riddler-castles2 ---------------------------------------------------------------
riddler_castles2 <- read_csv("data-raw/riddler-castles/castle-solutions-2.csv", na = c("", "NA", "-"))
riddler_castles2 <- riddler_castles2 %>%
  rename("reason" = `Why did you choose your troop deployment?`)
colnames(riddler_castles2) <- colnames(riddler_castles2) %>%
  tolower() %>%
  str_replace_all(" ", "")
usethis::use_data(riddler_castles2, overwrite = TRUE)

# antiquities-act ---------------------------------------------------------------
antiquities_act <- read_csv("data-raw/antiquities-act/actions_under_antiquities_act.csv", na = c("", "NA"))
names(antiquities_act)[1] <- "current_name"
antiquities_act <- antiquities_act %>%
  # fix date for Acadia NP
  mutate(
    year = ifelse(str_length(date) == 4, date, year),
    date = ifelse(str_length(date) == 4, paste("1", "1", str_sub(date, 3, 4), sep = "/"), date),
    date = mdy(date),
    # ensure century is correct
    date = mdy(paste(month(date), day(date), year, sep = "/")),
    # remove text from acres_affected variable
    acres_affected = as.numeric(str_replace_all(acres_affected, "[^0-9\\.]", ""))
  )
usethis::use_data(antiquities_act, overwrite = TRUE)

# tenth-circuit ---------------------------------------------------------------
tenth_circuit <- read_csv("data-raw/tenth-circuit/tenth-circuit.csv", na = c("", "NA"))
colnames(tenth_circuit) <- colnames(tenth_circuit) %>%
  tolower() %>%
  str_replace_all(" citation", "_cit") %>%
  str_replace_all(" ", "")
tenth_circuit <- tenth_circuit %>%
  mutate(date = mdy(date)) %>%
  rename(
    vote1_liberal = vote1,
    vote2_liberal = vote2,
    vote3_liberal = vote3
  )
usethis::use_data(tenth_circuit, overwrite = TRUE)



# Datasets cleaned and written by Meredith Manley

# ahca_polls ----------------------------------------------------------------------
ahca_polls <- read_csv("data-raw/ahca-polls/ahca_polls.csv") %>%
  clean_names() %>%
  mutate(
    start = as.Date(start, "%m/%d/%y"),
    end = as.Date(end, "%m/%d/%y"),
    pollster = as.factor(pollster)
  )
usethis::use_data(ahca_polls, overwrite = TRUE)

# bachelorette ---------------------------------------------------------------------
bachelorette <- read_csv("data-raw/bachelorette/bachelorette.csv") %>%
  clean_names() %>%
  mutate_at(vars(starts_with("elimination")), as.factor) %>%
  mutate_at(vars(starts_with("elimination")), funs(ifelse(. == "<NA>", NA, .))) %>%
  mutate_at(vars(starts_with("dates")), as.factor) %>%
  mutate_at(vars(starts_with("dates")), funs(ifelse(. == "<NA>", NA, .))) %>%
  mutate(season = as.integer(season)) %>%
  filter(season != "SEASON")
usethis::use_data(bachelorette, overwrite = TRUE)

# candy-power-rankings -------------------------------------------------------------
candy_rankings <- read_csv("data-raw/candy-power-ranking/candy-data.csv") %>%
  clean_names() %>%
  mutate(
    chocolate = as.logical(chocolate),
    fruity = as.logical(fruity),
    caramel = as.logical(caramel),
    peanutyalmondy = as.logical(peanutyalmondy),
    nougat = as.logical(nougat),
    crispedricewafer = as.logical(crispedricewafer),
    hard = as.logical(hard),
    bar = as.logical(bar),
    pluribus = as.logical(pluribus)
  ) %>%
  mutate(win)
mutate_at(vars(competitorname), funs(gsub("Õ", "'", .)))
usethis::use_data(candy_rankings, overwrite = TRUE)

# chess-transfers ----------------------------------------------------------------
chess_transfers <- read_csv("data-raw/chess-transfers/transfers.csv") %>%
  clean_names() %>%
  mutate(
    transfer_date = as.Date(transfer_date, "%m/%d/%y"),
    id = as.character(id)
  )
usethis::use_data(chess_transfers, overwrite = TRUE)

# congress-generic-ballot --------------------------------------------------------
# generic_polllist
generic_polllist <-
  read_csv("https://projects.fivethirtyeight.com/generic-ballot-data/generic_polllist.csv") %>%
  clean_names() %>%
  mutate(
    modeldate = as.Date(modeldate, "%m/%d/%Y"),
    startdate = as.Date(startdate, "%m/%d/%Y"),
    enddate = as.Date(enddate, "%m/%d/%Y"),
    createddate = as.Date(createddate, "%m/%d/%Y"),
    timestamp = parse_date_time(timestamp, "HMS dmY"),
    subgroup = as.factor(subgroup),
    pollster = as.factor(pollster),
    grade = factor(grade, levels = rev(c("A+", "A", "A-", "B+", "B", "B-", "C+", "C", "C-")), ordered = TRUE),
    population = as.factor(population),
    poll_id = as.character(poll_id),
    question_id = as.character(question_id)
  ) %>%
  mutate_at(vars(multiversions), funs(ifelse(. == "<NA>", NA, .)))
usethis::use_data(generic_polllist, overwrite = TRUE)

# generic_topline
generic_topline <-
  read_csv("https://projects.fivethirtyeight.com/generic-ballot-data/generic_topline.csv") %>%
  clean_names() %>%
  mutate(
    modeldate = as.Date(modeldate, "%m/%d/%Y"),
    timestamp = parse_date_time(timestamp, "HMS dmY"),
    subgroup = as.factor(subgroup)
  )
usethis::use_data(generic_topline, overwrite = TRUE)

# soccer-spi ------------------------------------------------------------------------
# spi_global_rankings
spi_global_rankings <-
  read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_global_rankings.csv")
usethis::use_data(spi_global_rankings, overwrite = TRUE)



# Datasets cleaned and written by Maggie Shea

# nfl-fandom---------------------------------------------------------------------
nfl_fandom_google <- read_csv("data-raw/nfl-fandom/NFL_fandom_data-google_trends.csv", skip = 1) %>%
  clean_names() %>%
  rename(
    trump_2016_vote = "trump_2016_votepercent"
  ) %>%
  mutate(
    nfl = as.numeric(str_replace_all(nfl, "%", "")),
    nba = as.numeric(str_replace_all(nba, "%", "")),
    mlb = as.numeric(str_replace_all(mlb, "%", "")),
    nhl = as.numeric(str_replace_all(nhl, "%", "")),
    nascar = as.numeric(str_replace_all(nascar, "%", "")),
    cbb = as.numeric(str_replace_all(cbb, "%", "")),
    cfb = as.numeric(str_replace_all(cfb, "%", "")),
    trump_2016_vote = as.numeric(str_replace_all(trump_2016_vote, "%", ""))
  )
usethis::use_data(nfl_fandom_google, overwrite = TRUE)

nfl_fandom_surveymonkey <- read_csv(
  "data-raw/nfl-fandom/NFL_fandom_data-surveymonkey.csv",
  skip = 1
) %>%
  clean_names() %>%
  rename(
    total_respondents = "tot_respondents",
    gop_percent = "goppercent",
    dem_percent = "dempercent",
    ind_percent = "indpercent",
    white_percent = "whitepercent",
    nonwhite_percent = "nonwhitepercent",
    asian_dem = "asian",
    black_dem = "black",
    hispanic_dem = "hispanic",
    other_dem = "other",
    white_dem = "white",
    total_dem = "total"
  ) %>%
  mutate(
    team = as.factor(team),
    gop_percent = str_replace_all(gop_percent, "%", ""),
    dem_percent = str_replace_all(dem_percent, "%", ""),
    ind_percent = str_replace_all(ind_percent, "%", ""),
    white_percent = str_replace_all(white_percent, "%", ""),
    nonwhite_percent = str_replace_all(nonwhite_percent, "%", "")
  )
colnames(nfl_fandom_surveymonkey) <- colnames(nfl_fandom_surveymonkey) %>%
  str_replace_all(pattern = "_1", replacement = "_ind") %>%
  str_replace_all(pattern = "_2", replacement = "_gop")
usethis::use_data(nfl_fandom_surveymonkey, overwrite = TRUE)

# puerto-rico-media---------------------------------------------------------------------
# Data on Google trend searches for hurricanes Harvey, Irma, Jose, and Maria
google_trends <- read_csv("data-raw/puerto-rico-media/google_trends.csv") %>%
  clean_names() %>%
  rename(
    date = day,
    hurricane_harvey_us = hurricane_harvey_united_states,
    hurricane_irma_us = hurricane_irma_united_states,
    hurricane_maria_us = hurricane_maria_united_states,
    hurricane_jose_us = hurricane_jose_united_states
  )
usethis::use_data(google_trends, overwrite = TRUE)

# Data on the number of sentences per day that mention Hurricanes Harvey, Irma,
# Jose, and Maria in online news
mediacloud_hurricanes <- read_csv("data-raw/puerto-rico-media/mediacloud_hurricanes.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format = "%m / %d / %y")
  )
usethis::use_data(mediacloud_hurricanes, overwrite = TRUE)

# Data on the number of sentences per day
# that mention Puerto Rico, Texas, and Florida in online news
mediacloud_states <- read_csv("data-raw/puerto-rico-media/mediacloud_states.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format = "%m / %d / %y")
  )
usethis::use_data(mediacloud_states, overwrite = TRUE)

# A list of sources included in Media Cloud's "U.S. Top Online News" collection
mediacloud_online_news <- read_csv("data-raw/puerto-rico-media/mediacloud_top_online_news.csv")
usethis::use_data(mediacloud_online_news, overwrite = TRUE)

# Data on the number of headlines that mention Puerto Rico, Texas, and Florida,
# as well as headlines that mention each location and 'President' or 'Trump'.
mediacloud_trump <- read_csv("data-raw/puerto-rico-media/mediacloud_trump.csv") %>%
  clean_names() %>%
  rename(
    puerto_rico = title_puerto_rico,
    puerto_rico_and_trump = title_puerto_rico_and_title_trump_or_title_president,
    florida = title_florida,
    florida_and_trump = title_florida_and_title_trump_or_title_president,
    texas = title_texas,
    texas_and_trump = title_texas_and_title_trump_or_title_president
  )
usethis::use_data(mediacloud_trump, overwrite = TRUE)

# Data on the percent of sentences per day in TV News that mention Hurricanes
# Harvey, Irma, Jose, and Maria.
tv_hurricanes <- read_csv("data-raw/puerto-rico-media/tv_hurricanes.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format = "%m / %d / %y")
  )
usethis::use_data(tv_hurricanes, overwrite = TRUE)

# Data on the percent of sentences per day in TV News that mention Hurricanes
# Harvey, Irma, Jose, and Maria by network.
tv_hurricanes_by_network <- read_csv("data-raw/puerto-rico-media/tv_hurricanes_by_network.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format = "%m / %d / %y"),
    query = as.factor(query)
  )
usethis::use_data(tv_hurricanes_by_network, overwrite = TRUE)

# Data on the percent of sentences per day in TV News that mention Puerto Rico,
# Texas, and Florida.
tv_states <- read_csv("data-raw/puerto-rico-media/tv_states.csv") %>%
  clean_names() %>%
  mutate(date = as.Date(date, format = "%m / %d / %y"))
usethis::use_data(tv_states, overwrite = TRUE)

# riddler-pick-lowest---------------------------------------------------------------------
riddler_pick_lowest <- read_csv("data-raw/riddler-pick-lowest/low_numbers.csv") %>%
  clean_names()
usethis::use_data(riddler_pick_lowest, overwrite = TRUE)

# sandy-311-calls---------------------------------------------------------------------
sandy_311 <- read_csv("data-raw/sandy-311-calls/sandy-311-calls-by-day.csv") %>%
  clean_names() %>%
  rename(
    nyc_311 = nyc_3_1_1,
    nyc_service = nycservice,
    nys_emergency_mg = nysemergencymg
  ) %>%
  mutate(date = as.Date(date, format = "%m / %d / %y"))
usethis::use_data(sandy_311, overwrite = TRUE)

# trump-approval-ratings---------------------------------------------------------------------
trump_approval_poll <- read_csv("https://projects.fivethirtyeight.com/trump-approval-data/approval_polllist.csv") %>%
  mutate(
    multiversions = ifelse(multiversions == "*", TRUE, FALSE),
    multiversions = ifelse(is.na(multiversions), FALSE, TRUE),
    tracking = ifelse(is.na(tracking), FALSE, TRUE),
    subgroup = as.factor(subgroup),
    modeldate = as.Date(modeldate, format = "%m / %d / %Y"),
    startdate = as.Date(startdate, format = "%m / %d / %Y"),
    enddate = as.Date(enddate, format = "%m / %d / %Y"),
    pollster = as.factor(pollster),
    grade = factor(grade, levels = rev(c("A+", "A", "A-", "B+", "B", "B-", "C+", "C", "C-")), ordered = TRUE),
    population = as.factor(population),
    url = as.factor(url),
    createddate = as.Date(createddate, format = "%m / %d / %Y"),
    timestamp = as.POSIXct(timestamp, tz = "GMT", format = "%H:%M:%S %d %b %Y")
  ) %>%
  rename(
    model_date = modeldate,
    start_date = startdate,
    end_date = enddate,
    sample_size = samplesize,
    created_date = createddate
  ) %>%
  select(-c(president, model_date, influence))
usethis::use_data(trump_approval_poll, overwrite = TRUE)

trump_approval_trend <- read_csv("https://projects.fivethirtyeight.com/trump-approval-data/approval_topline.csv") %>%
  clean_names() %>%
  mutate(
    president = as.factor(president),
    subgroup = as.factor(subgroup),
    modeldate = as.Date(modeldate, format = "%m / %d / %Y"),
    timestamp = as.POSIXct(timestamp, tz = "GMT", format = "%H:%M:%S %d %b %Y")
  ) %>%
  rename(
    approve_high = approve_hi,
    approve_low = approve_lo,
    disapprove_high = disapprove_hi,
    disapprove_low = disapprove_lo
  ) %>%
  select(-c(president))
usethis::use_data(trump_approval_trend, overwrite = TRUE)

# trump-world-trust---------------------------------------------------------------------
trumpworld_issue_1 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-1.csv") %>%
  clean_names() %>%
  mutate(
    country = as.factor(country),
    issue = 1
  )
trumpworld_issue_2 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-2.csv") %>%
  clean_names() %>%
  mutate(
    country = as.factor(country),
    issue = 2
  )
trumpworld_issue_3 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-3.csv") %>%
  clean_names() %>%
  mutate(
    country = as.factor(country),
    issue = 3
  )
trumpworld_issue_4 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-4.csv") %>%
  clean_names() %>%
  mutate(
    country = as.factor(country),
    issue = 4
  )
trumpworld_issue_5 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-5.csv") %>%
  clean_names() %>%
  mutate(
    country = as.factor(country),
    issue = 5
  )
trumpworld_issues <- bind_rows(
  trumpworld_issue_1, trumpworld_issue_2, trumpworld_issue_3,
  trumpworld_issue_4, trumpworld_issue_5
)
usethis::use_data(trumpworld_issues, overwrite = TRUE)

trumpworld_pres <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-pres.csv") %>%
  clean_names() %>%
  mutate(question = "Favorable view of US")
trumpworld_us <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-us.csv") %>%
  clean_names() %>%
  mutate(question = "Trust President")
trumpworld_polls <- bind_rows(trumpworld_pres, trumpworld_us)
usethis::use_data(trumpworld_polls, overwrite = TRUE)

# undefeated-boxers---------------------------------------------------------------------
undefeated <- read_csv("data-raw/undefeated-boxers/undefeated.csv")
usethis::use_data(undefeated, overwrite = TRUE)



# Datasets cleaned and written by Starry Yujia Zhou

# august-senate-polls ---------------------------------------------------------------
august_senate_polls <- read_csv("data-raw/august-senate-polls/august_senate_polls.csv") %>%
  clean_names() %>%
  mutate(
    cycle = as.numeric(cycle),
    state = as.factor(state),
    senate_class = as.factor(senate_class),
    start_date = as.Date(start_date), end_date = as.Date(end_date)
  )

usethis::use_data(august_senate_polls, overwrite = TRUE)

# endorsements ---------------------------------------------------------------
endorsements_2020 <- read_csv("https://projects.fivethirtyeight.com/endorsements-2020-data/endorsements-2020.csv") %>%
  clean_names() %>%
  mutate(
    position = as.factor(position),
    city = as.factor(city),
    state = as.factor(state),
    endorser_party = as.factor(endorser_party),
    category = as.factor(category)
  )

usethis::use_data(endorsements_2020, overwrite = TRUE)

# forecast-review ---------------------------------------------------------------
forecast_results_2018 <- read_csv("data-raw/forecast-review/forecast_results_2018.csv") %>%
  clean_names() %>%
  rename(dem_win_prob = democrat_win_probability) %>%
  rename(rep_win_prob = republican_win_probability) %>%
  mutate(
    branch = as.factor(branch),
    forecastdate = as.Date(forecastdate, "%m/%d/%y"),
    version = as.factor(version),
    category = factor(category, levels = c("Solid D", "Likely D", "Lean D", "Tossup (Tilt D)", "Tossup (Tilt R)", "Lean R", "Likely R", "Safe R")),
    democrat_won = as.logical(democrat_won), # Convert 0/1 to TRUE/FALSE
    republican_won = as.logical(republican_won),
    uncalled = as.logical(uncalled)
  )

usethis::use_data(forecast_results_2018, overwrite = TRUE)

# governors-forecast-2018 ---------------------------------------------------------------
governor_national_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/governor_national_forecast.csv") %>%
  clean_names() %>%
  mutate(
    party = as.factor(party),
    model = as.factor(model)
  ) %>%
  select(-state)
governor_state_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/governor_state_forecast.csv") %>%
  clean_names() %>%
  mutate(
    state = as.factor(state),
    candidate = as.factor(candidate),
    party = as.factor(party),
    incumbent = as.logical(incumbent),
    model = as.factor(model)
  ) %>%
  select(-district, -special)

usethis::use_data(governor_national_forecast, overwrite = TRUE)
usethis::use_data(governor_state_forecast, overwrite = TRUE)

# house-forecast-2018 ---------------------------------------------------------------
house_national_forecast <-
  "https://projects.fivethirtyeight.com/congress-model-2018/house_national_forecast.csv" %>%
  read_csv() %>%
  clean_names() %>%
  mutate(
    party = as.factor(party),
    model = as.factor(model)
  ) %>%
  select(-state)

usethis::use_data(house_district_forecast, overwrite = TRUE)
usethis::use_data(house_national_forecast, overwrite = TRUE)

# mueller-polls ---------------------------------------------------------------
mueller_approval_polls <- read_csv("data-raw/mueller-polls/mueller-approval-polls.csv") %>%
  clean_names() %>%
  mutate(
    start = as.Date(start, "%m/%d/%y"),
    end = as.Date(end, "%m/%d/%y"),
    pollster = as.factor(pollster),
    population = as.factor(population),
    text = as.factor(text)
  )

usethis::use_data(mueller_approval_polls, overwrite = TRUE)

# ncaa-womens-basketball-tournament ---------------------------------------------------------------
ncaa_w_bball_tourney <- read_csv("data-raw/ncaa-womens-basketball-tournament/ncaa-womens-basketball-tournament-history.csv") %>%
  clean_names() %>%
  rename(first_home_game = x1st_game_at_home) %>%
  mutate(
    school = as.factor(school),
    seed = as.numeric(seed),
    conference = as.factor(conference),
    conf_w = as.numeric(conf_w),
    conf_l = as.numeric(conf_l),
    conf_percent = as.numeric(conf_percent),
    conf_place = as.factor(conf_place),
    how_qual = as.factor(how_qual),
    first_home_game = as.factor(str_replace_all(first_home_game, "\\^", "")),
    tourney_w = as.logical(tourney_w),
    tourney_l = as.logical(tourney_l),
    tourney_finish = factor(tourney_finish, levels = c("OR", "1st", "2nd", "RSF", "RF", "NSF", "N2nd", "Champ")),
    full_percent = as.numeric(full_percent),
    first_home_game = as.logical(ifelse(first_home_game == "Y", TRUE, FALSE))
  )
usethis::use_data(ncaa_w_bball_tourney, overwrite = TRUE)

# partisan-lean ---------------------------------------------------------------
partisan_lean_district <- read_csv("data-raw/partisan-lean/fivethirtyeight_partisan_lean_DISTRICTS.csv") %>%
  clean_names() %>%
  separate(district, c("state", "district_number")) %>%
  separate(pvi_538, c("pvi_party", "pvi_amount"))
partisan_lean_district <- partisan_lean_district %>%
  mutate(
    state = as.factor(state.name[match(partisan_lean_district$state, state.abb)]),
    district_number = as.numeric(district_number),
    pvi_party = as.factor(pvi_party),
    pvi_amount = as.numeric(pvi_amount)
  )

usethis::use_data(partisan_lean_district, overwrite = TRUE)

partisan_lean_state <- read_csv("data-raw/partisan-lean/fivethirtyeight_partisan_lean_STATES.csv") %>%
  clean_names() %>%
  separate(pvi_538, c("pvi_party", "pvi_amount")) %>%
  mutate(
    state = as.factor(state),
    pvi_party = as.factor(pvi_party),
    pvi_amount = as.numeric(pvi_amount)
  )
usethis::use_data(partisan_lean_state, overwrite = TRUE)

# political-elasticity-scores ---------------------------------------------------------------
elasticity_by_district <- read_csv("data-raw/political-elasticity-scores/elasticity-by-district.csv") %>%
  clean_names() %>%
  separate(district, c("state", "district_number"))
elasticity_by_district <- elasticity_by_district %>%
  mutate(
    state = as.factor(state.name[match(elasticity_by_district$state, state.abb)]),
    district_number = as.numeric(district_number)
  )
usethis::use_data(elasticity_by_district, overwrite = TRUE)

elasticity_by_state <- read_csv("data-raw/political-elasticity-scores/elasticity-by-state.csv") %>%
  clean_names() %>%
  left_join(state_info, by = c("state" = "state_abbrev")) %>%
  select(state, state_name = state.y, elasticity)
usethis::use_data(elasticity_by_state, overwrite = TRUE)

# russia-investigation ---------------------------------------------------------------
russia_investigation <- read_csv("data-raw/russia-investigation/russia-investigation.csv") %>%
  clean_names() %>%
  mutate(
    investigation = as.factor(investigation),
    name = as.factor(name),
    type = as.factor(type),
    president = as.factor(president)
  )
usethis::use_data(russia_investigation, overwrite = TRUE)

# senate-forecast-2018 ---------------------------------------------------------------
senate_national_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/senate_national_forecast.csv") %>%
  clean_names() %>%
  mutate(
    party = as.factor(party),
    model = as.factor(model)
  ) %>%
  select(-state)
usethis::use_data(senate_national_forecast, overwrite = TRUE)

senate_seat_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/senate_seat_forecast.csv") %>%
  clean_names() %>%
  mutate(
    state = as.factor(state),
    candidate = as.factor(candidate),
    party = as.factor(party),
    model = as.factor(model)
  )
usethis::use_data(senate_seat_forecast, overwrite = TRUE)

# trump-lawsuits ---------------------------------------------------------------
trump_lawsuits <- read_csv("data-raw/trump-lawsuits/trump-lawsuits.csv") %>%
  clean_names() %>%
  mutate(
    case_name = as.factor(case_name),
    plaintiff = as.factor(plaintiff),
    defendant = as.factor(defendant),
    current_location = as.factor(current_location),
    previous_location = as.factor(previous_location),
    judge = as.factor(judge),
    capacity = as.factor(capacity),
    type = as.factor(type),
    trump_category = as.factor(trump_category),
    issue = as.factor(issue),
    status = as.factor(status)
  )
usethis::use_data(trump_lawsuits, overwrite = TRUE)

# masculinity-survey  ---------------------------------------------------------------
masculinity_survey <- read_csv("data-raw/masculinity-survey/masculinity-survey-r.csv") %>%
  clean_names() %>%
  mutate(
    question = as.factor(question),
    response = as.factor(response)
  )
usethis::use_data(masculinity_survey, overwrite = TRUE)



# Datasets cleaned and written by Natalia Iannucci

# media-mentions-2020---------------------------------------------------------------------
media_mentions_cable <- read_csv("data-raw/media-mentions-2020/cable_weekly.csv")
media_mentions_online <- read_csv("data-raw/media-mentions-2020/online_weekly.csv")

media_mentions_cable <- media_mentions_cable %>%
  clean_names() %>%
  mutate(
    matched_clips = as.numeric(matched_clips),
    all_candidate_clips = as.numeric(all_candidate_clips),
    total_clips = as.numeric(total_clips)
  )
usethis::use_data(media_mentions_cable, overwrite = TRUE)

media_mentions_online <- media_mentions_online %>%
  clean_names() %>%
  mutate(
    matched_stories = as.numeric(matched_stories),
    all_candidate_stories = as.numeric(all_candidate_stories)
  )
usethis::use_data(media_mentions_online, overwrite = TRUE)



# Datasets cleaned and written by Marium Tapal
# index ------------------------------------------------------------
state_index <- read_csv("data-raw/state-of-the-state/index.csv") %>%
  mutate(
    state = as.factor(state),
    party = as.factor(party)
  )
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



# Datasets cleaned and written by Alina Barylsky

# dem_candidates ---------------------------------------------------------------
dem_candidates <- read_csv("data-raw/primary-candidates-2018/dem_candidates.csv") %>%
  clean_names() %>%
  # change classes from character to factor and date to date
  mutate(
    state = as.factor(state),
    office_type = as.factor(office_type),
    race_type = as.factor(race_type),
    primary_status = as.factor(primary_status),
    primary_runoff_status = as.factor(primary_runoff_status),
    general_status = as.factor(general_status),
    race = as.factor(race),
    race_primary_election_date = as.Date(race_primary_election_date, "%m/%d/%y"),
    won_primary = as.factor(won_primary),
    veteran = as.factor(veteran),
    lgbtq = as.factor(lgbtq),
    elected_official = as.factor(elected_official),
    self_funder = as.factor(self_funder),
    stem = as.factor(stem),
    obama_alum = as.factor(obama_alum),
    party_support = as.factor(party_support),
    emily_endorsed = as.factor(emily_endorsed),
    guns_sense_candidate = as.factor(guns_sense_candidate),
    biden_endorsed = as.factor(biden_endorsed),
    warren_endorsed = as.factor(warren_endorsed),
    sanders_endorsed = as.factor(sanders_endorsed),
    our_revolution_endorsed = as.factor(our_revolution_endorsed),
    justice_dems_endorsed = as.factor(justice_dems_endorsed),
    pccc_endorsed = as.factor(pccc_endorsed),
    indivisible_endorsed = as.factor(indivisible_endorsed),
    wfp_endorsed = as.factor(wfp_endorsed),
    no_labels_support = as.factor(no_labels_support)
  )

# transform district variable into 2 variables:

# body of government
dem_candidates <- dem_candidates %>%
  mutate(
    body = case_when(
      str_detect(district, "Governor") ~ "governor",
      str_detect(district, "House") ~ "house",
      str_detect(district, "Senate") ~ "senate"
    ),
    body = as.factor(body)
  )

# district number
dem_candidates <- dem_candidates %>%
  mutate(
    district_num = as.double(str_extract(district, "[[:digit:]]+"))
  )

# remove original district variable
dem_candidates$district <- NULL

# change levels from Yes/No to TRUE/FALSE for relevant variables
levels(dem_candidates$won_primary) <- c(FALSE, TRUE)
levels(dem_candidates$veteran) <- c(FALSE, TRUE)
levels(dem_candidates$lgbtq) <- c(FALSE, TRUE)
levels(dem_candidates$elected_official) <- c(FALSE, TRUE)
levels(dem_candidates$self_funder) <- c(FALSE, TRUE)
levels(dem_candidates$stem) <- c(FALSE, TRUE)
levels(dem_candidates$obama_alum) <- c(FALSE, TRUE)
levels(dem_candidates$party_support) <- c(FALSE, TRUE)
levels(dem_candidates$emily_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$guns_sense_candidate) <- c(FALSE, TRUE)
levels(dem_candidates$biden_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$warren_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$sanders_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$our_revolution_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$justice_dems_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$pccc_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$indivisible_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$wfp_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$vote_vets_endorsed) <- c(FALSE, TRUE)
levels(dem_candidates$no_labels_support) <- c(FALSE, TRUE)

# change the TRUE/FALSE variables to logical
dem_candidates <- dem_candidates %>%
  mutate(
    won_primary = as.logical(won_primary),
    veteran = as.logical(veteran),
    lgbtq = as.logical(lgbtq),
    elected_official = as.logical(elected_official),
    self_funder = as.logical(self_funder),
    stem = as.logical(stem),
    obama_alum = as.logical(obama_alum),
    party_support = as.logical(party_support),
    emily_endorsed = as.logical(emily_endorsed),
    guns_sense_candidate = as.logical(guns_sense_candidate),
    biden_endorsed = as.logical(biden_endorsed),
    warren_endorsed = as.logical(warren_endorsed),
    sanders_endorsed = as.logical(sanders_endorsed),
    our_revolution_endorsed = as.logical(our_revolution_endorsed),
    justice_dems_endorsed = as.logical(justice_dems_endorsed),
    pccc_endorsed = as.logical(pccc_endorsed),
    indivisible_endorsed = as.logical(indivisible_endorsed),
    wfp_endorsed = as.logical(wfp_endorsed),
    vote_vets_endorsed = as.logical(vote_vets_endorsed),
    no_labels_support = as.logical(no_labels_support)
  )

dem_candidates <- dem_candidates %>%
  select(candidate, state, body, district_num, office_type, everything())

usethis::use_data(dem_candidates, overwrite = TRUE)



# Datasets cleaned and written by Sunni Raleigh

## wwc_matches ---------------------------------------------------------------------------------------------------------
wwc_2019_matches <- readr::read_csv("https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_matches.csv") %>%
  clean_names() %>%
  select(-c(league, league_id)) %>%
  mutate(
    team1 = str_remove_all(to_snake_case(team1), "_women"),
    team2 = str_remove_all(to_snake_case(team2), "_women")
  )

usethis::use_data(wwc_2019_matches, overwrite = TRUE)

## wwc_forecasts ---------------------------------------------------------------------------------------------------------
wwc_2019_forecasts <- readr::read_csv("https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_forecasts.csv") %>%
  clean_names() %>%
  mutate(
    team = to_snake_case(team),
    forecast_timestamp = as.Date(forecast_timestamp),
    group = as.factor(group),
    team = as.factor(team)
  ) %>%
  rename(date = forecast_timestamp) %>%
  select(-timestamp) %>%
  arrange(date, group)

usethis::use_data(wwc_2019_forecasts, overwrite = TRUE)



# Datasets cleaned and written by Anna Ballou

# foul-balls -------------------------------------------------------------------
foul_balls <- read_csv("data-raw/foul-balls/foul-balls.csv") %>%
  clean_names() %>%
  mutate(
    matchup = str_replace_all(matchup, c("VS" = "vs", "Diamondsbacks" = "Diamondbacks")),
    type_of_hit = as.factor(type_of_hit),
    camera_zone = as.factor(camera_zone),
    used_zone = as.factor(used_zone),
    predicted_zone = as.factor(predicted_zone)
  )

usethis::use_data(foul_balls, overwrite = TRUE)



# Datasets cleaned and written by Jane Bang

# nba-draymond ---------------------------------------------------------------
nba_draymond <- read_csv("data-raw/nba-draymond/draymond.csv") %>%
  clean_names()

usethis::use_data(nba_draymond, overwrite = TRUE)



# Datasets cleaned and written by Jordan Moody

# Import dataset from csv
fight_songs <- read_csv("data-raw/fight-songs/fight-songs.csv")

# Change variable types
fight_songs <- fight_songs %>%
  rename(num_fights = number_fights) %>%
  mutate(
    year = as.numeric(year),
    conference = ifelse(conference == "Yes", TRUE, FALSE),
    student_writer = ifelse(student_writer == "Yes", TRUE, FALSE),
    official_song = ifelse(official_song == "Yes", TRUE, FALSE),
    contest = ifelse(contest == "Yes", TRUE, FALSE),
    fight = ifelse(fight == "Yes", TRUE, FALSE),
    victory = ifelse(victory == "Yes", TRUE, FALSE),
    win_won = ifelse(win_won == "Yes", TRUE, FALSE),
    victory_win_won = ifelse(victory_win_won == "Yes", TRUE, FALSE),
    rah = ifelse(rah == "Yes", TRUE, FALSE),
    nonsense = ifelse(nonsense == "Yes", TRUE, FALSE),
    colors = ifelse(colors == "Yes", TRUE, FALSE),
    men = ifelse(men == "Yes", TRUE, FALSE),
    opponents = ifelse(opponents == "Yes", TRUE, FALSE),
    spelling = ifelse(spelling == "Yes", TRUE, FALSE)
  )

# Names are clean, checked with janitor's clean_names()

# Overwrite .rda files
usethis::use_data(fight_songs, overwrite = TRUE)



# Datasets cleaned and written by Kara Van Allen

# reading in csv
nba_elo_latest <- read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo_latest.csv")

rownames(nba_elo_latest) <- NULL

# tidying and taming data for nba_elo_latest
nba_elo_latest <- nba_elo_latest %>%
  clean_names() %>%
  mutate_if(is.logical, as.numeric) %>%
  mutate(neutral = as.logical(neutral)) %>%
  mutate(playoff = as.logical(playoff))

# setting up .rda
usethis::use_data(nba_elo_latest, overwrite = TRUE)



# Datasets cleaned and written by Lizette Carpenter

# cabinet_turnover -------------------------------------------------------------
presidents <- c("Carter", "Reagan", "Bush 41", "Clinton", "Bush 43", "Obama", "Trump")

cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv") %>%
  clean_names() %>%
  mutate(
    combined = str_detect(length, "combined"),
    length = str_replace_all(length, " combined", ""),
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
        TRUE ~ start
      ),
    end =
      case_when(
        appointee == "Bob Gates" ~ "6/30/2011",
        appointee == "George Tenet" ~ "7/11/97",
        appointee == "Lauro Cavazos" ~ "12/12/1990",
        appointee == "Dick Thornburgh" ~ "8/15/1991",
        appointee == "Bill Webster" ~ "8/31/1991",
        appointee == "Nicholas Brady" ~ "1/17/1993",
        TRUE ~ end
      ),
    start = mdy(start),
    end = mdy(end),
    president = factor(president, levels = presidents)
  )

usethis::use_data(cabinet_turnover, overwrite = TRUE)



# Datasets cleaned and written by Fatima Keita

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
    include = as.logical(include)
  )

usethis::use_data(impeachment_polls, overwrite = TRUE)
