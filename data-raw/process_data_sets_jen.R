library(tidyverse)
library(stringr)
library(lubridate)

# Jen: police-locals thru world-cup-predictions
setwd("/Users/JC/Google Drive/Research/fivethirtyeight")


# police-locals ---------------------------------------------------------------
police_locals <- read_csv("data-raw/police-locals/police-locals.csv", 
                          na = c("","NA", "**"))
colnames(police_locals) <- colnames(police_locals) %>% 
  tolower() %>% 
  str_replace_all("-", "_")

devtools::use_data(police_locals, overwrite = TRUE)



# poll-of-pollsters ---------------------------------------------------------------

#-- MULTIPLE DATA FILES


# pollster-ratings ---------------------------------------------------------------

#-- MULTIPLE DATA FILES



# potential-candidates ---------------------------------------------------------------
#-- MULTIPLE DATA FILES



# presidential-commencement-speeches ---------------------------------------------------------------
presidential_commencement_speeches <- read_csv("data-raw/presidential-commencement-speeches/commencement_speeches.csv")

presidential_commencement_speeches <- presidential_commencement_speeches %>%
  # Convert Show date to POSIX date object
  mutate(date = mdy(date))

devtools::use_data(presidential_commencement_speeches, overwrite = TRUE)



# pulitzer ---------------------------------------------------------------
pulitzer <- read_csv("data-raw/pulitzer/pulitzer-circulation-data.csv")
colnames(pulitzer) <- colnames(pulitzer) %>% 
  tolower() %>% 
  str_replace_all("pulitzer prize ", "") %>% 
  str_replace_all(" ", "_") %>% 
  str_replace_all(",", "") %>% 
  str_replace_all("-", "_") 

pulitzer <- pulitzer %>% 
  rename(pctchange_in_daily_circulation_2004_2013 = change_in_daily_circulation_2004_2013) %>% 
  mutate(pctchange_in_daily_circulation_2004_2013 = as.integer(str_replace(pctchange_in_daily_circulation_2004_2013, "%","")))
  
devtools::use_data(pulitzer, overwrite = TRUE)



# region-survey ---------------------------------------------------------------

#-- MULTIPLE DATA FILES


# religion-survey ---------------------------------------------------------------
religion_survey <- read_csv("data-raw/religion-survey/religion-survey-results.csv")
#need to create all variable names
#devtools::use_data(religion_survey, overwrite = TRUE)


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
                                           "Very worried","Extremely worried" )),
         worry_bigone = factor(worry_bigone, 
                               levels = c("Not at all worried", "Not so worried", "Somewhat worried",
                                          "Very worried","Extremely worried" )),
         will_occur = ifelse(will_occur == "Yes", TRUE, FALSE),
         experience = factor(experience,
                             levels = c("No", "Yes, one or more minor ones", "Yes, one or more major ones")),
         prepared = ifelse(prepared == "Yes", TRUE, FALSE),
         fam_san_andreas = factor(fam_san_andreas, 
                                  levels = c("Not at all familiar", "Not so familiar", "Somewhat familiar",  
                                             "Very familiar","Extremely familiar")),
         fam_yellowstone = factor(fam_yellowstone, 
                                 levels = c("Not at all familiar", "Not so familiar", "Somewhat familiar",  
                                            "Very familiar","Extremely familiar")),
         age = factor(age, levels = c("18 - 29", "30 - 44", "45 - 59", "60"),
                      labels = c("18 - 29", "30 - 44", "45 - 59", "60+")),
         female = ifelse(female == "Female", TRUE, FALSE),
         hhold_income = factor(hhold_income, 
                               levels = c("$0 to $9,999", "$10,000 to $24,999", "$25,000 to $49,999", 
                                          "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $124,999", 
                                          "$125,000 to $149,999", "$150,000 to $174,999", "$175,000 to $199,999",
                                          "$200,000 and up", "Prefer not to answer")),
         region = factor(region, levels = c("New England", "Middle Atlantic", "South Atlantic",    
                                            "East North Central", "West North Central",
                                            "East South Central", "West South Central",  
                                            "Mountain", "Pacific")))
devtools::use_data(san_andreas, overwrite = TRUE)



# sleeping-alone-data ---------------------------------------------------------------
sleeping_alone_data <- read_csv("data-raw/sleeping-alone-data/sleeping-alone-data.csv")
# much data editing needed
#devtools::use_data(sleeping_alone_data, overwrite = TRUE)



# star-wars-survey ---------------------------------------------------------------
star_wars_survey <- read_csv("data-raw/star-wars-survey/StarWars.csv")
# much data editing needed
#devtools::use_data(star_wars_survey, overwrite = TRUE)



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
                             levels = c("Rare", "Medium rare", "Medium", "Medium Well", "Well")),
         female = ifelse(female == "Female", TRUE, FALSE),
         age = factor(age, levels = c("18-29", "30-44", "45-60", "> 60"),
                      labels = c("18-29", "30-44", "45-60", ">60")),
         hhold_income = factor(hhold_income, 
                               levels = c("$0 - $24,999", "$25,000 - $49,999", "$50,000 - $99,999",
                                          "$100,000 - $149,999", "$150,000+")),
         educ = factor(educ, levels = c("Less than high school degree", "High school degree",
                                        "Some college or Associate degree","Bachelor degree", 
                                        "Graduate degree")),
         region = factor(region, levels = c("New England", "Middle Atlantic", "South Atlantic",    
                                              "East North Central", "West North Central",
                                              "East South Central", "West South Central",  
                                              "Mountain", "Pacific")))
devtools::use_data(steak_survey, overwrite = TRUE)



# study-drugs ---------------------------------------------------------------
# DATA IS CONFIDENTIAL



# tarantino ---------------------------------------------------------------
tarantino <- read_csv("data-raw/tarantino/tarantino.csv")
tarantino <- tarantino %>% 
  mutate(type_word = ifelse(type == "word", TRUE, FALSE)) %>% 
  select(movie, type_word, word, minutes_in)
devtools::use_data(tarantino, overwrite = TRUE)



# tennis-time ---------------------------------------------------------------
tennis_events_time <- read_csv("data-raw/tennis-time/events_time.csv")

year_start <- sapply(str_split(tennis_events_time$years, "-"), function(x){x[1]} )
year_end <- sapply(str_split(tennis_events_time$years, "-"), function(x){ifelse(length(x)==1, x[1], x[2])} )

tennis_events_time <- tennis_events_time %>% 
  mutate(surface = factor(surface),
         year_start = as.integer(year_start),
         year_end = as.integer(year_end)) %>% 
  select(-years)

devtools::use_data(tennis_events_time, overwrite = TRUE)



tennis_players_time <- read_csv("data-raw/tennis-time/players_time.csv")
devtools::use_data(tennis_players_time, overwrite = TRUE)

tennis_serve_time <- read_csv("data-raw/tennis-time/serve_times.csv")
tennis_serve_time <- tennis_serve_time %>% 
  mutate(date = dmy(day)) %>% select(-day)
devtools::use_data(tennis_serve_time, overwrite = TRUE)



# terrorism ---------------------------------------------------------------

#MULTIPLE FILES



# thanksgiving-2015 ---------------------------------------------------------------
thanksgiving_2015 <- read_csv("data-raw/thanksgiving-2015/thanksgiving-2015-poll-data.csv")

#need to create all variable names
#devtools::use_data(thanksgiving_2015, overwrite = TRUE)



# trump-news ---------------------------------------------------------------
trump_news <- read_csv("data-raw/trump-news/trump_news_data.csv")
trump_news <- trump_news %>%
  mutate(date = mdy(date),
         major_category = factor(major_category)) 
devtools::use_data(trump_news, overwrite = TRUE)



# trump-twitter ---------------------------------------------------------------
trump_twitter <- read_csv("data-raw/trump-twitter/realDonaldTrump_poll_tweets.csv")
trump_twitter <- trump_twitter %>%
  mutate(created_at = mdy_hms(created_at)) 
devtools::use_data(trump_twitter, overwrite = TRUE)


# unisex-names ---------------------------------------------------------------
unisex_names <- read_csv("data-raw/unisex-names/unisex_names_table.csv")
unisex_names <- unisex_names %>% select(-X1)
devtools::use_data(unisex_names, overwrite = TRUE)


# us-weather-history ---------------------------------------------------------------
#-- MULTIPLE FILES


# weather-check ---------------------------------------------------------------
weather_check <- read_csv("data-raw/weather-check/weather-check.csv", na=c("","NA","-"))
colnames(weather_check) <- c("respondent_id",
                             "ck_weather",
                             "weather_source",
                             "weather_source_site",
                             "ck_weather_smartwatch",
                             "age",
                             "female",
                             "hhold_income",
                             "region")
weather_check <- weather_check %>%
  mutate(ck_weather = ifelse(ck_weather == "Yes", TRUE, FALSE),
         weather_source = factor(weather_source),
         ck_weather_smartwatch = factor(ck_weather_smartwatch, 
                                        levels = c("Very unlikely", "Somewhat unlikely",
                                                   "Somewhat likely", "Very likely")),
         age = factor(age),
         female = ifelse(female == "Female", TRUE, FALSE),
         hhold_income = factor(hhold_income, 
                               levels = c("$0 to $9,999", "$10,000 to $24,999", "$25,000 to $49,999", 
                                          "$50,000 to $74,999", "$75,000 to $99,999", "$100,000 to $124,999", 
                                          "$125,000 to $149,999", "$150,000 to $174,999", "$175,000 to $199,999",
                                          "$200,000 and up", "Prefer not to answer")),
         region = factor(region, levels = c("New England", "Middle Atlantic", "South Atlantic",    
                                            "East North Central", "West North Central",
                                            "East South Central", "West South Central",  
                                            "Mountain", "Pacific")))

devtools::use_data(weather_check, overwrite = TRUE)



# womens-world-cup-predictions ---------------------------------------------------------------
#--MULTIPLE FILES


# world-cup-predictions ---------------------------------------------------------------
#--MULTIPLE FILES




