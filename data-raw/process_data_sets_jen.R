library(tidyverse)
library(stringr)
library(lubridate)
library(usethis)



# police-locals ---------------------------------------------------------------
police_locals <- read_csv("data-raw/police-locals/police-locals.csv",
                          na = c("","NA", "**"))
colnames(police_locals) <- colnames(police_locals) %>%
  tolower() %>%
  str_replace_all("-", "_")
police_locals <- police_locals %>% rename(force_size=police_force_size)

usethis::use_data(police_locals, overwrite = TRUE)



# poll-of-pollsters ---------------------------------------------------------------

#-- MULTIPLE DATA FILES


# pollster-ratings ---------------------------------------------------------------

#-- MULTIPLE DATA FILES



# potential-candidates ---------------------------------------------------------------
cand_events_20150114 <- read_csv("data-raw/potential-candidates/2015_01_14/events.csv")
colnames(cand_events_20150114) <- colnames(cand_events_20150114) %>% tolower()
cand_events_20150114 <- cand_events_20150114 %>%
  mutate(date = dmy(paste(date,"2015")) )
usethis::use_data(cand_events_20150114, overwrite = TRUE)

cand_state_20150114 <- read_csv("data-raw/potential-candidates/2015_01_14/statements.csv")
colnames(cand_state_20150114) <- colnames(cand_state_20150114) %>% tolower()
cand_state_20150114 <- cand_state_20150114 %>%
  rename(date = `statement date`,
         latest = `latest statement`,
         score = `statement score`) %>%
  mutate(date = dmy(paste(date,"2015")),
         score = factor(score, labels = c("Not running", "Haven't ruled out running but leaning towards no",
                                          "Unsure","Actively exploring or seriously considering")))
usethis::use_data(cand_state_20150114, overwrite = TRUE)


cand_events_20150130 <- read_csv("data-raw/potential-candidates/2015_01_30/events.csv")
colnames(cand_events_20150130) <- colnames(cand_events_20150130) %>% tolower()
cand_events_20150130 <- cand_events_20150130 %>%
  mutate(date = dmy(paste(date,"2015")) )
usethis::use_data(cand_events_20150130, overwrite = TRUE)

cand_state_20150130 <- read_csv("data-raw/potential-candidates/2015_01_30/statements.csv")
colnames(cand_state_20150130) <- colnames(cand_state_20150130) %>% tolower()
cand_state_20150130 <- cand_state_20150130 %>%
  rename(date = `statement date`,
         latest = `latest statement`,
         score = `statement score`) %>%
  mutate(date = dmy(paste(date,"2015")),
         score = factor(score, labels = c("Not running", "Haven't ruled out running but leaning towards no",
                                          "Unsure","Actively exploring or seriously considering")))
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
  rename(circ2004 = daily_circulation_2004,
         circ2013 = daily_circulation_2013,
         pctchg_circ = change_in_daily_circulation_2004_2013,
         num_finals1990_2003 = winners_and_finalists_1990_2003,
         num_finals2004_2014 = winners_and_finalists_2004_2014,
         num_finals1990_2014 = winners_and_finalists_1990_2014) %>%
  mutate(pctchg_circ = as.integer(str_replace(pctchg_circ, "%","")))

usethis::use_data(pulitzer, overwrite = TRUE)



# region-survey ---------------------------------------------------------------

#-- MULTIPLE DATA FILES


# religion-survey ---------------------------------------------------------------
#religion_survey <- read_csv("data-raw/religion-survey/religion-survey-results.csv")
#need to create all variable names
#usethis::use_data(religion_survey, overwrite = TRUE)


# san-andreas ---------------------------------------------------------------
san_andreas <- read_csv("data-raw/san-andreas/earthquake_data.csv")
colnames(san_andreas) <- c("worry_general",
                           "worry_bigone",
                           "will_occur",
                           "experience",
                           "prepared",
                           "fam_san_andreas",
                           "fam_yellowstone",
                           "age",
                           "female",
                           "hhold_income",
                           "region")
san_andreas <- san_andreas %>%
  mutate(worry_general = factor(worry_general,
                                levels = c("Not at all worried", "Not so worried", "Somewhat worried",
                                           "Very worried","Extremely worried" ), ordered=TRUE),
         worry_bigone = factor(worry_bigone,
                               levels = c("Not at all worried", "Not so worried", "Somewhat worried",
                                          "Very worried","Extremely worried" ), ordered=TRUE),
         will_occur = ifelse(will_occur == "Yes", TRUE, FALSE),
         experience = factor(experience,
                             levels = c("No", "Yes, one or more minor ones", "Yes, one or more major ones"), ordered=TRUE),
         prepared = ifelse(prepared == "Yes", TRUE, FALSE),
         fam_san_andreas = factor(fam_san_andreas,
                                  levels = c("Not at all familiar", "Not so familiar", "Somewhat familiar",
                                             "Very familiar","Extremely familiar"), ordered=TRUE),
         fam_yellowstone = factor(fam_yellowstone,
                                  levels = c("Not at all familiar", "Not so familiar", "Somewhat familiar",
                                             "Very familiar","Extremely familiar"), ordered=TRUE),
         age = factor(age, levels = c("18 - 29", "30 - 44", "45 - 59", "60"),
                      labels = c("18 - 29", "30 - 44", "45 - 59", "60+"), ordered=TRUE),
         female = ifelse(female == "Female", TRUE, FALSE),
         hhold_income = factor(hhold_income,
                               levels = c("$0 to $9,999", "$10,000 to $24,999", "$25,000 to $49,999",
                                          "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $124,999",
                                          "$125,000 to $149,999", "$150,000 to $174,999", "$175,000 to $199,999",
                                          "$200,000 and up", "Prefer not to answer"), ordered=TRUE))
usethis::use_data(san_andreas, overwrite = TRUE)



# sleeping-alone-data ---------------------------------------------------------------
# sleeping_alone_data <- read_csv("data-raw/sleeping-alone-data/sleeping-alone-data.csv")
# much data editing needed
#usethis::use_data(sleeping_alone_data, overwrite = TRUE)



# star-wars-survey ---------------------------------------------------------------
# star_wars_survey <- read_csv("data-raw/star-wars-survey/StarWars.csv")
# much data editing needed
#usethis::use_data(star_wars_survey, overwrite = TRUE)



# steak-survey ---------------------------------------------------------------
steak_survey <- read_csv("data-raw/steak-survey/steak-risk-survey.csv")
colnames(steak_survey) <- c("respondent_id",
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
                            "region")
#remove row that only contains "Response" for each var
steak_survey <- steak_survey %>% filter(!is.na(respondent_id))

steak_survey <- steak_survey %>%
  mutate(lottery_a = ifelse(lottery_a == "Lottery A", TRUE, FALSE),
         smoke = ifelse(smoke == "Yes", TRUE, FALSE),
         alcohol = ifelse(alcohol == "Yes", TRUE, FALSE),
         gamble = ifelse(gamble == "Yes", TRUE, FALSE),
         skydiving = ifelse(skydiving == "Yes", TRUE, FALSE),
         speed = ifelse(speed == "Yes", TRUE, FALSE),
         cheated = ifelse(cheated == "Yes", TRUE, FALSE),
         steak = ifelse(steak == "Yes", TRUE, FALSE),
         steak_prep = factor(steak_prep,
                             levels = c("Rare", "Medium rare", "Medium", "Medium Well", "Well"), ordered=TRUE),
         female = ifelse(female == "Female", TRUE, FALSE),
         age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60"), ordered=TRUE),
         hhold_income = factor(hhold_income,
                               levels = c("$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999",
                                          "$100,000 - $149,999", "$150,000+", ordered=TRUE)),
         educ = factor(educ, levels = c("Less than high school degree", "High school degree",
                                        "Some college or Associate degree","Bachelor degree",
                                        "Graduate degree"), ordered=TRUE))
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

year_start <- sapply(str_split(tennis_events_time$years, "-"), function(x){x[1]} )
year_end <- sapply(str_split(tennis_events_time$years, "-"), function(x){ifelse(length(x)==1, x[1], x[2])} )

tennis_events_time <- tennis_events_time %>%
  mutate(surface = factor(surface),
         year_start = as.integer(year_start),
         year_end = as.integer(year_end)) %>%
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

#MULTIPLE FILES



# thanksgiving-2015 ---------------------------------------------------------------
#thanksgiving_2015 <- read_csv("data-raw/thanksgiving-2015/thanksgiving-2015-poll-data.csv")
#
#need to create all variable names
#usethis::use_data(thanksgiving_2015, overwrite = TRUE)



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
weather_check <- read_csv("data-raw/weather-check/weather-check.csv", na=c("","NA","-"))
colnames(weather_check) <- c("respondent_id",
                             "ck_weather",
                             "weather_source",
                             "weather_source_site",
                             "ck_weather_watch",
                             "age",
                             "female",
                             "hhold_income",
                             "region")
weather_check <- weather_check %>%
  mutate(ck_weather = ifelse(ck_weather == "Yes", TRUE, FALSE),
         ck_weather_watch = factor(ck_weather_watch,
                                   levels = c("Very unlikely", "Somewhat unlikely",
                                              "Somewhat likely", "Very likely"), ordered=TRUE),
         age = factor(age,
                      levels = c("18 - 29", "30 - 44", "45 - 59", "60+")),
         female = ifelse(female == "Female", TRUE, FALSE),
         hhold_income = factor(hhold_income,
                               levels = c("$0 to $9,999", "$10,000 to $24,999", "$25,000 to $49,999",
                                          "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $124,999",
                                          "$125,000 to $149,999", "$150,000 to $174,999", "$175,000 to $199,999",
                                          "$200,000 and up", "Prefer not to answer"), ordered=TRUE))

usethis::use_data(weather_check, overwrite = TRUE)



# womens-world-cup-predictions ---------------------------------------------------------------
#--MULTIPLE FILES


# world-cup-predictions ---------------------------------------------------------------
#--MULTIPLE FILES


# obama-commutations ---------------------------------------------------------------
#-- not possible


# riddler-castles ---------------------------------------------------------------
riddler_castles <- read_csv("data-raw/riddler-castles/castle-solutions.csv", na=c("","NA","-"))
riddler_castles <- riddler_castles %>%
  rename("reason" = `Why did you choose your troop deployment?`)
colnames(riddler_castles) <- colnames(riddler_castles) %>%
  tolower() %>%
  str_replace_all(" ", "")
usethis::use_data(riddler_castles, overwrite = TRUE)

# riddler-castles2 ---------------------------------------------------------------
riddler_castles2 <- read_csv("data-raw/riddler-castles/castle-solutions-2.csv", na=c("","NA","-"))
riddler_castles2 <- riddler_castles2 %>%
  rename("reason" = `Why did you choose your troop deployment?`)
colnames(riddler_castles2) <- colnames(riddler_castles2) %>%
  tolower() %>%
  str_replace_all(" ", "")
usethis::use_data(riddler_castles2, overwrite = TRUE)

# antiquities-act ---------------------------------------------------------------
antiquities_act <- read_csv("data-raw/antiquities-act/actions_under_antiquities_act.csv", na=c("","NA"))
names(antiquities_act)[1] <- "current_name"
antiquities_act <- antiquities_act %>%
  #fix date for Acadia NP
  mutate(year = ifelse(str_length(date)==4, date, year),
         date = ifelse(str_length(date)==4, paste("1","1",str_sub(date,3,4),sep="/"), date),
         date = mdy(date),
         #ensure century is correct
         date = mdy(paste(month(date), day(date), year, sep="/")),
         #remove text from acres_affected variable
         acres_affected = as.numeric(str_replace_all(acres_affected, "[^0-9\\.]","")))
usethis::use_data(antiquities_act, overwrite = TRUE)



# tenth-circuit ---------------------------------------------------------------
tenth_circuit <- read_csv("data-raw/tenth-circuit/tenth-circuit.csv", na=c("","NA"))
colnames(tenth_circuit) <- colnames(tenth_circuit) %>%
  tolower() %>%
  str_replace_all(" citation", "_cit") %>%
  str_replace_all(" ", "")
tenth_circuit <- tenth_circuit %>%
  mutate(date = mdy(date)) %>%
  rename(vote1_liberal = vote1,
         vote2_liberal = vote2,
         vote3_liberal = vote3)
usethis::use_data(tenth_circuit, overwrite = TRUE)

