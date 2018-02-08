library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)


# ahca_polls ----------------------------------------------------------------------
ahca_polls <- read_csv("data-raw/ahca-polls/ahca_polls.csv") %>%
  clean_names() %>%
  mutate(
    start = as.Date(start, "%m/%d/%y"),
    end = as.Date(end, "%m/%d/%y"),
    pollster = as.factor(pollster)
  )
devtools::use_data(ahca_polls, overwrite = TRUE)



# bachelorette ---------------------------------------------------------------------
bachelorette <- read_csv("data-raw/bachelorette/bachelorette.csv") %>%
  clean_names() %>%
  mutate_at(vars(starts_with("elimination")), as.factor) %>%
  mutate_at(vars(starts_with("elimination")), funs(ifelse(. == "<NA>", NA, .))) %>%
  mutate_at(vars(starts_with("dates")), as.factor) %>%
  mutate_at(vars(starts_with("dates")), funs(ifelse(. == "<NA>", NA, .))) %>%
  mutate(season = as.integer(season)) %>%
  filter(season != "SEASON")
devtools::use_data(bachelorette, overwrite = TRUE)



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
  mutate_at(vars(competitorname), funs(gsub("Õ", "'", .))) 
devtools::use_data(candy_rankings, overwrite = TRUE)



# chess-transfers ----------------------------------------------------------------
chess_transfers <- read_csv("data-raw/chess-transfers/transfers.csv") %>%
  clean_names() %>%
  mutate(
    transfer_date = as.Date(transfer_date, "%m/%d/%y"),
    id = as.character(id)
  )
devtools::use_data(chess_transfers, overwrite = TRUE)



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
    grade = as.factor(grade),
    population = as.factor(population),
    poll_id = as.character(poll_id),
    question_id = as.character(question_id)
  ) %>%
  mutate_at(vars(multiversions), funs(ifelse(. == "<NA>", NA, .)))
devtools::use_data(generic_polllist, overwrite = TRUE)

# generic_topline
generic_topline <-
  read_csv("https://projects.fivethirtyeight.com/generic-ballot-data/generic_topline.csv") %>%
  clean_names() %>%
  mutate(
    modeldate = as.Date(modeldate, "%m/%d/%Y"),
    timestamp = parse_date_time(timestamp, "HMS dmY"),
    subgroup = as.factor(subgroup)
  )
devtools::use_data(generic_topline, overwrite = TRUE)



# inconvenient-sequel ----------------------------------------------------------
ratings <- read_csv("data-raw/inconvenient-sequel/ratings.csv") %>%
  mutate(category = as.factor(category),
         votes_1 = `1_votes`,
         votes_2 = `2_votes`,
         votes_3 = `3_votes`,
         votes_4 = `4_votes`,
         votes_5 = `5_votes`,
         votes_6 = `6_votes`,
         votes_7 = `7_votes`,
         votes_8 = `8_votes`,
         votes_9 = `9_votes`,
         votes_10 = `10_votes`,
         pct_1 = `1_pct`,
         pct_2 = `2_pct`,
         pct_3 = `3_pct`,
         pct_4 = `4_pct`,
         pct_5 = `5_pct`,
         pct_6 = `6_pct`,
         pct_7 = `7_pct`,
         pct_8 = `8_pct`,
         pct_9 = `9_pct`,
         pct_10 = `10_pct`) %>%
  select(-c(`1_votes`, `2_votes`, `3_votes`, `4_votes`, `5_votes`, `6_votes`, 
            `7_votes`, `8_votes`, `9_votes`, `10_votes`, 
            `1_pct`, `2_pct`, `3_pct`, `4_pct`, `5_pct`, `6_pct`, `7_pct`, 
            `8_pct`, `9_pct`, `10_pct`))
devtools::use_data(ratings, overwrite = TRUE)



# mayweather-mcgregor ---------------------------------------------------------------
tweets <- read_csv("data-raw/mayweather-mcgregor/tweets.csv") %>%
  mutate(
    emojis = as.logical(emojis),
    retweeted = as.logical(retweeted),
    id = as.character(id)
  )
devtools::use_data(tweets, overwrite = TRUE)



# mlb-elo ---------------------------------------------------------------------------
mlb_elo <- read_csv("https://projects.fivethirtyeight.com/mlb-api/mlb_elo.csv") %>%
  mutate(
    playoff = as.factor(playoff),
    playoff = ifelse(playoff == "<NA>", NA, playoff),
    neutral = as.logical(neutral)
  ) %>% 
  slice(1:100)
devtools::use_data(mlb_elo, overwrite = TRUE)



# soccer-spi ------------------------------------------------------------------------
# spi_matches
spi_matches <- read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_matches.csv")
devtools::use_data(spi_matches, overwrite = TRUE)

#spi_global_rankings
spi_global_rankings <-
  read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_global_rankings.csv")
devtools::use_data(spi_global_rankings, overwrite = TRUE)
