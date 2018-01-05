library(tidyverse)
library(stringr)
library(lubridate)



# nba-carmelo---------------------------------------------------------------------
#Tame Data Principle 1: naming conventions
nba_carmelo <- read.csv("data-raw/nba-carmelo/nba_elo.csv")
colnames(nba_carmelo) <- colnames(nba_carmelo) %>%
  tolower() %>%
  str_replace_all(" ", "_")
  #converting variable names to snake_case
#Principle 2: variables identifying observational units
  #observational units are specific games, no changes seem necessary
#Principle 3: dates
  #there is already a date variable in year-month-day format
#Principle 4: Factors, Characters, Logicals
  #there are 20 variables. 14 of them- all the elo, carmelo, and score variables- are quantitative not categorical so we can leave them as is. 
  #season is an ordinal factor (I think), teams are regular factors, playoff and neutral are TRUE/FALSE (binary logical variables), date I assume is fine as is. 
nba_carmelo <- nba_carmelo %>%
  mutate(
  team1 = as.factor(team1),
  team2 = as.factor(team2),
  season = factor(season, levels=c(1947:2018), ordered=TRUE),
  playoff = ifelse(playoff == "t", TRUE, FALSE),
  neutral = ifelse(neutral == 1, TRUE, FALSE))
#Principle 5: tidy data format
  #data appears to adhere to guidelines and is in "long/narrow" format
  #maybe could be narrower if separated elo_score and carmelo_score then also had type (1_pre, 2_pre, prob1, prob2, 1_post, 2_post) but I'm not sure if this is as intuitive
devtools::use_data(nba_carmelo, overwrite = TRUE)

# nfl-elo---------------------------------------------------------------------
nfl_elo <- read.csv("data-raw/nfl-elo/nfl_elo.csv")
colnames(nfl_elo) <- colnames(nfl_elo) %>%
  tolower() %>%
  str_replace_all(" ", "_")
#snake case
head(nfl_elo)
#same stuff as previous dataset-- see prof Kim's comments then adapt code from above

# nfl-fandom---------------------------------------------------------------------
nfl_fandom_google <- read.csv("data-raw/nfl-fandom/NFL_fandom_data-google_trends.csv", skip=1)
nfl_fandom_surveymonkey <-read.csv("data-raw/nfl-fandom/NFL_fandom_data-surveymonkey.csv")
#For Google Dataset:

names(nfl_fandom_google) <- tolower(names(nfl_fandom_google))
nfl_fandom_google$dma <- as.factor(nfl_fandom_google$dma)

nfl_fandom_google <- nfl_fandom_google %>% 
  rename(
    trump_2016_vote = trump.2016.vote.
  )

perc <- function(x) {nfl_fandom_google[,x] <- (as.numeric(str_replace_all(nfl_fandom_google[,x],"%"," ")))/100}
nfl_fandom_google[,2:9] <- lapply(2:9, perc)

#note: should I create a sport variable to get rid of nfl, nba etc to make this more long/narrow? How would I do that?

# puerto-rico-media---------------------------------------------------------------------

# riddler-pick-lowest---------------------------------------------------------------------

# sandy-311-calls---------------------------------------------------------------------

# trump-approval-ratings---------------------------------------------------------------------

# trump-world-trust---------------------------------------------------------------------

# twitter-ratio---------------------------------------------------------------------

# undefeated-boxers---------------------------------------------------------------------
