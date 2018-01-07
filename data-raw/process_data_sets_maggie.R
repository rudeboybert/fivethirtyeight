library(tidyverse)
library(stringr)
library(lubridate)
library(readr)
install.packages("janitor")
library(janitor)

# nba-carmelo---------------------------------------------------------------------
nba_carmelo <- read_csv("data-raw/nba-carmelo/nba_elo.csv")
colnames(nba_carmelo) <- colnames(nba_carmelo) %>%
  tolower() %>%
  str_replace_all(" ", "_")
nba_carmelo <- nba_carmelo %>%
  mutate(
    team1 = as.factor(team1),
    team2 = as.factor(team2),
    playoff = ifelse(playoff == "t", TRUE, FALSE),
    playoff = ifelse(is.na(playoff), FALSE, TRUE),
    neutral = ifelse(neutral == 1, TRUE, FALSE))
#TODO: Discuss: data could be narrower if separated elo_score and carmelo_score then also had type (1_pre, 2_pre, prob1, prob2, 1_post, 2_post) but I'm not sure if this is as intuitive
devtools::use_data(nba_carmelo, overwrite = TRUE)

# nfl-elo---------------------------------------------------------------------
nfl_elo <- read_csv("data-raw/nfl-elo/nfl_elo.csv")
colnames(nfl_elo) <- colnames(nfl_elo) %>%
  tolower() %>%
  str_replace_all(" ", "_")
nfl_elo <- nfl_elo %>%
  mutate(
    team1 = as.factor(team1),
    team2 = as.factor(team2),
    playoff = ifelse(playoff == "t", TRUE, FALSE),
    playoff = ifelse(is.na(playoff), FALSE, TRUE),
    neutral = ifelse(neutral == 1, TRUE, FALSE))
devtools::use_data(nfl_elo, overwrite = TRUE)

# nfl-fandom---------------------------------------------------------------------
nfl_fandom_google <- read_csv("data-raw/nfl-fandom/NFL_fandom_data-google_trends.csv", skip=1)
names(nfl_fandom_google) <- tolower(names(nfl_fandom_google))
nfl_fandom_google <- nfl_fandom_google %>% 
  rename(
    trump_2016_vote = 'trump 2016 vote%'
  ) %>%
  mutate(
    dma = as.factor(dma),
    nfl = as.numeric(str_replace_all(nfl, "%", "")), 
    nba = as.numeric(str_replace_all(nba, "%", "")), 
    mlb = as.numeric(str_replace_all(mlb, "%", "")), 
    nhl = as.numeric(str_replace_all(nhl, "%", "")), 
    nascar = as.numeric(str_replace_all(nascar, "%", "")), 
    cbb = as.numeric(str_replace_all(cbb, "%", "")), 
    cfb = as.numeric(str_replace_all(cfb, "%", "")), 
    trump_2016_vote = as.numeric(str_replace_all(trump_2016_vote, "%", ""))
      )
#TODO: should I create a sport variable to get rid of nfl, nba etc to make this more long/narrow? How would I do that?
devtools::use_data(nfl_fandom_google, overwrite = TRUE)

nfl_fandom_surveymonkey <-read_csv("data-raw/nfl-fandom/NFL_fandom_data-surveymonkey.csv", skip=1)
#TODO: Clarify: unsure of why there are three variables for each race (with different values) for each team-- maybe stats for people who chose that team as first second and third favorite? 
nfl_fandom_surveymonkey <- clean_names(nfl_fandom_surveymonkey)
nfl_fandom_surveymonkey <- nfl_fandom_surveymonkey %>%
  rename(
    total_respondents = 'tot_respondents',
    gop_percent = 'goppercent',
    dem_percent = 'dempercent',
    ind_percent = 'indpercent',
    white_percent = 'whitepercent',
    nonwhite_percent = 'nonwhitepercent'
  ) %>%
  mutate(
    team = as.factor(team),
    gop_percent = as.numeric(str_replace_all(gop_percent, "%", "")),
    dem_percent = as.numeric(str_replace_all(dem_percent, "%", "")),
    ind_percent = as.numeric(str_replace_all(ind_percent, "%", "")),
    white_percent = as.numeric(str_replace_all(white_percent, "%", "")),
    nonwhite_percent = as.numeric(str_replace_all(nonwhite_percent, "%", ""))
  )
devtools::use_data(nfl_fandom_surveymonkey, overwrite = TRUE)

# puerto-rico-media---------------------------------------------------------------------

google_trends <- read_csv("data-raw/puerto-rico-media/google_trends.csv", skip=2)
google_trends<-clean_names(google_trends)
google_trends <- google_trends %>%
  rename(
    date = day,
    hurricane_harvey_us = hurricane_harvey_united_states,
    hurricane_irma_us = hurricane_irma_united_states,
    hurricane_maria_us = hurricane_maria_united_states,
    hurricane_jose_us = hurricane_jose_united_states)
devtools::use_data(google_trends, overwrite = TRUE)

mediacloud_hurricanes <- read_csv("data-raw/puerto-rico-media/mediacloud_hurricanes.csv")
mediacloud_hurricanes <- clean_names(mediacloud_hurricanes)
mediacloud_hurricanes$date <- as.Date(mediacloud_hurricanes$date, format= "%m / %d / %y")
devtools::use_data(mediacloud_hurricanes, overwrite = TRUE)

mediacloud_states <- read_csv("data-raw/puerto-rico-media/mediacloud_states.csv")
mediacloud_states <- clean_names(mediacloud_states)
mediacloud_states$date <- as.Date(mediacloud_states$date, format= "%m / %d / %y")
devtools::use_data(mediacloud_states, overwrite = TRUE)

mediacloud_online_news <- read_csv("data-raw/puerto-rico-media/mediacloud_top_online_news.csv")
devtools::use_data(mediacloud_top_online_news, overwrite = TRUE)

mediacloud_trump <- read_csv("data-raw/puerto-rico-media/mediacloud_trump.csv")
mediacloud_trump <- clean_names(mediacloud_trump)
mediacloud_trump <- mediacloud_trump %>%
  rename(
    puerto_rico = title_puerto_rico,
    puerto_rico_and_trump = title_puerto_rico_and_title_trump_or_title_president,
    florida = title_florida, 
    florida_and_trump = title_florida_and_title_trump_or_title_president,
    texas = title_texas,
    texas_and_trump = title_texas_and_title_trump_or_title_president
  )
devtools::use_data(mediacloud_trump, overwrite = TRUE)

tv_hurricanes <- read_csv("data-raw/puerto-rico-media/tv_hurricanes.csv")
tv_hurricanes <- clean_names(tv_hurricanes)
tv_hurricanes$date <- as.Date(tv_hurricanes$date, format= "%m / %d / %y")
devtools::use_data(tv_hurricanes, overwrite = TRUE)

tv_hurricanes_by_network <- read_csv("data-raw/puerto-rico-media/tv_hurricanes_by_network.csv")
tv_hurricanes_by_network <- clean_names(tv_hurricanes_by_network)
tv_hurricanes_by_network <- tv_hurricanes_by_network %>%
  mutate(
    date = as.Date(date, format= "%m / %d / %y"),
    query = as.factor(query)
  )
devtools::use_data(tv_hurricanes_by_network, overwrite = TRUE)

tv_states <- read_csv("data-raw/puerto-rico-media/tv_states.csv")
tv_states <- clean_names(tv_states)
tv_states$date <- as.Date(tv_states$date, format= "%m / %d / %y")
devtools::use_data(tv_states, overwrite = TRUE)

# riddler-pick-lowest---------------------------------------------------------------------
riddler_pick_lowest <- read_csv("data-raw/riddler-pick-lowest/low_numbers.csv")
riddler_pick_lowest <- clean_names(riddler_pick_lowest)
devtools::use_data(riddler_pick_lowest, overwrite = TRUE)

# sandy-311-calls---------------------------------------------------------------------
sandy_311 <- read_csv("data-raw/sandy-311-calls/sandy-311-calls-by-day.csv")
sandy_311 <- clean_names(sandy_311)

sandy_311 <- sandy_311 %>%
  rename(
    nyc_311 = nyc_3_1_1,
    nyc_service = nycservice,
    nys_emergency_mg = nysemergencymg
  ) %>%
  mutate(
    date = as.Date(date, format= "%m / %d / %y")
  )
sandy_311<-gather(sandy_311, "agency", "num_calls", 2:24)
sandy_311$agency <- as.factor(sandy_311$agency)
devtools::use_data(sandy_311, overwrite = TRUE)

# trump-approval-ratings---------------------------------------------------------------------
trump_approval_poll <- read_csv("data-raw/trump-approval-ratings/approval_polllist.csv")
trump_approval_poll <- trump_approval_poll %>%
  mutate(
    multiversions = ifelse(multiversions == "*", TRUE, FALSE),
    multiversions = ifelse(is.na(multiversions), FALSE, TRUE),
    tracking = ifelse(is.na(tracking), FALSE, TRUE),
    subgroup = as.factor(subgroup),
    modeldate = as.Date(modeldate, format = "%m / %d / %Y"),
    startdate = as.Date(startdate, format = "%m / %d / %Y"),
    enddate = as.Date(enddate, format = "%m / %d / %Y"),
    pollster = as.factor(pollster),
    grade = as.factor(grade),
    population = as.factor(population),
    url = as.factor(url),
    createddate = as.Date(createddate, format = "%m / %d / %Y")
  ) %>%
  rename(
    model_date = modeldate,
    start_date = startdate,
    end_date = enddate,
    sample_size = samplesize,
    created_date = createddate
  )
#TODO: unsure how to deal with timestamp-- split into date and time or leave as is?
#TODO: can I delete "president" and "modeldate" since each only has one value in this dataset (trump and Jan 5)? if so:
trump_approval_poll <- trump_approval_poll[,-c(1,3)]
devtools::use_data(trump_approval_poll, overwrite = TRUE)

trump_approval_trend <- read_csv("data-raw/trump-approval-ratings/approval_topline.csv")
trump_approval_trend <- trump_approval_trend %>%
  mutate(
    president = as.factor(president),
    subgroup = as.factor(subgroup),
    modeldate = as.Date(modeldate, format = "%m / %d / %Y")
  ) %>%
  rename(
    approve_high = approve_hi,
    approve_low = approve_lo,
    disapprove_high = disapprove_hi,
    disapprove_low = disapprove_lo
  )
trump_approval_poll <- trump_approval_poll[,-c(1,3)]
devtools::use_data(trump_approval_trend, overwrite = TRUE)
#same comments as above about timestamp, president, model date

# trump-world-trust---------------------------------------------------------------------
trumpworld_issue_1 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-1.csv")
trumpworld_issue_1 <- clean_names(trumpworld_issue_1)
trumpworld_issue_1$country <- as.factor(trumpworld_issue_1$country)
trumpworld_issue_1$issue <- 1

trumpworld_issue_2 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-2.csv")
trumpworld_issue_2 <- clean_names(trumpworld_issue_2)
trumpworld_issue_2$country <- as.factor(trumpworld_issue_2$country)
trumpworld_issue_2$issue <- 2

trumpworld_issue_3 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-3.csv")
trumpworld_issue_3 <- clean_names(trumpworld_issue_3)
trumpworld_issue_3$country <- as.factor(trumpworld_issue_3$country)
trumpworld_issue_3$issue <- 3

trumpworld_issue_4 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-4.csv")
trumpworld_issue_4 <- clean_names(trumpworld_issue_4)
trumpworld_issue_4$country <- as.factor(trumpworld_issue_4$country)
trumpworld_issue_4$issue <- 4

trumpworld_issue_5 <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-issue-5.csv")
trumpworld_issue_5 <- clean_names(trumpworld_issue_5)
trumpworld_issue_5$country <- as.factor(trumpworld_issue_5$country)
trumpworld_issue_5$issue <- 5

trumpworld_combined<- rbind(trumpworld_issue_1, trumpworld_issue_2, trumpworld_issue_3, trumpworld_issue_4, trumpworld_issue_5)
#TODO: would it make sense to merge these datasets like this? If so, can delete devtools for individual issues
devtools::use_data(trumpworld_issue_1, overwrite = TRUE)
devtools::use_data(trumpworld_issue_2, overwrite = TRUE)
devtools::use_data(trumpworld_issue_3, overwrite = TRUE)
devtools::use_data(trumpworld_issue_4, overwrite = TRUE)
devtools::use_data(trumpworld_issue_5, overwrite = TRUE)
devtools::use_data(trumpworld_combined, overwrite = TRUE)
devtools::use_data(trump_approval_trend, overwrite = TRUE)

trumpworld_pres <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-pres.csv")
trumpworld_pres <- clean_names(trumpworld_pres)
devtools::use_data(trumpworld_pres, overwrite = TRUE)

trumpworld_us <- read_csv("data-raw/trump-world-trust/TRUMPWORLD-us.csv")
trumpworld_us <- clean_names(trumpworld_us)
devtools::use_data(trumpworld_us, overwrite = TRUE)

# twitter-ratio---------------------------------------------------------------------
barack_obama <- read_csv("data-raw/twitter-ratio/BarackObama.csv")
#TODO: unsure of what to do with timestamp here too
devtools::use_data(barack_obama, overwrite = TRUE)

real_donald_trump <- read_csv("data-raw/twitter-ratio/realDonaldTrump.csv")
#same as above
devtools::use_data(real_donald_trump, overwrite = TRUE)

senators <- read_csv("data-raw/twitter-ratio/senators.csv")
senators <- senators %>%
  mutate(
    party = as.factor(party),
    state = as.factor(state)
  )
#same as above
devtools::use_data(senators, overwrite = TRUE)