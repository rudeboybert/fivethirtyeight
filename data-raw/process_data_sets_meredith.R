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
  mutate(
    season = as.factor(season),
    elimination_1 = as.factor(elimination_1),
    elimination_2 = as.factor(elimination_2),
    elimination_3 = as.factor(elimination_3),
    elimination_4 = as.factor(elimination_4),
    elimination_5 = as.factor(elimination_5),
    elimination_6 = as.factor(elimination_6),
    elimination_7 = as.factor(elimination_7),
    elimination_8 = as.factor(elimination_8),
    elimination_9 = as.factor(elimination_9),
    elimination_10 = as.factor(elimination_10),
    dates_1 = as.factor(dates_1),
    dates_2 = as.factor(dates_2),
    dates_3 = as.factor(dates_3),
    dates_4 = as.factor(dates_4),
    dates_5 = as.factor(dates_5),
    dates_6 = as.factor(dates_6),
    dates_7 = as.factor(dates_7),
    dates_8 = as.factor(dates_8),
    dates_9 = as.factor(dates_9),
    dates_10 = as.factor(dates_10)
  ) %>%
  filter(
    season != "SEASON"
  )
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
  )
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
  read_csv("https://projects.fivethirtyeight.com/generic-ballot-data/generic_polllist.csv")
write.csv(generic_polllist, "generic_polllist.csv")

generic_polllist <- 
  read_csv("data-raw/congress-generic-ballot/generic_polllist.csv") %>%
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
  )
devtools::use_data(generic_polllist, overwrite = TRUE)

# generic_topline
generic_topline <- 
  read_csv("https://projects.fivethirtyeight.com/generic-ballot-data/generic_topline.csv")
write.csv(generic_topline, "generic_topline.csv")

generic_topline <- 
  read_csv("data-raw/congress-generic-ballot/generic_topline.csv") %>%
  clean_names() %>%
  mutate(
    model_date = as.Date(model_date, "%m/%d/%Y"),
    timestamp = parse_date_time(timestamp, "HMS dmY"),
    subgroup = as.factor(subgroup)
  )
devtools::use_data(generic_topline, overwrite = TRUE)


#inconvenient-sequel ----------------------------------------------------------------
ratings <- read_csv("data-raw/inconvenient-sequel/ratings.csv") %>%
  mutate(
    category = as.factor(category)
  )
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
mlb_elo <- read_csv("https://projects.fivethirtyeight.com/mlb-api/mlb_elo.csv")
write.csv(mlb_elo, "mlb_elo.csv")

mlb_elo <- read_csv("data-raw/mlb-elo/mlb_elo.csv") %>%
  mutate(
    playoff = as.factor(playoff),
    neutral = as.logical(neutral)
  )
devtools::use_data(mlb_elo, overwrite = TRUE)


# soccer-spi ------------------------------------------------------------------------
#spi_matches
spi_matches <- read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_matches.csv")
write.csv(spi_matches, "spi_matches.csv")

spi_matches <- read_csv("data-raw/soccer-spi/spi_matches.csv") %>%
  mutate(
    league_id = as.factor(league_id)
  )
devtools::use_data(spi_matches, overwrite = TRUE)

#spi_global_rankings
spi_global_rankings <- 
  read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_global_rankings.csv")
write.csv(spi_global_rankings, "spi_global_rankings.csv")
# No changes made
devtools::use_data(spi_global_rankings, overwrite = TRUE)

