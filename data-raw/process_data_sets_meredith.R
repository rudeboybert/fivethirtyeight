library(tidyverse)
library(stringr)
library(lubridate)

# ahca_polls ----------------------------------------------------------------------
ahca_polls <- read_csv("data-raw/ahca-polls/ahca_polls.csv")
# snake_case for variable names
colnames(ahca_polls) <- colnames(ahca_polls) %>%
  tolower()
# Change start and end dates to proper format
ahca_polls$start <- as.Date(ahca_polls$start, "%m/%d/%y") 
ahca_polls$end <- as.Date(ahca_polls$end, "%m/%d/%y")
# Convert to factor variable
ahca_polls$pollster <- as.factor(ahca_polls$pollster)
devtools::use_data(ahca_polls, overwrite = TRUE)


# bachelorette ---------------------------------------------------------------------
bachelorette <- read_csv("data-raw/bachelorette/bachelorette.csv")
# snake_case for variable names
colnames(bachelorette) <- colnames(bachelorette) %>%
  tolower() %>%
  str_replace_all("-", "_")
# Remove extra headers within data
bachelorette<-bachelorette[!(bachelorette$season=="SEASON"),]
# Convert character variables to factors
cols.num <- c("season", "elimination_1","elimination_2", "elimination_3", "elimination_4", 
              "elimination_5", "elimination_6", "elimination_7", "elimination_8", 
              "elimination_9", "elimination_10", "dates_1", "dates_2", "dates_3", "dates_4", 
              "dates_5", "dates_6", "dates_7", "dates_8", "dates_9", "dates_10")
bachelorette[cols.num] <- lapply(bachelorette[cols.num], as.factor)
devtools::use_data(bachelorette, overwrite = TRUE)


# candy-power-rankings -------------------------------------------------------------
candy_rankings <- read_csv("data-raw/candy-power-ranking/candy-data.csv")
# snake_case for variable names
candy_rankings <- rename(candy_rankings, c("competitorname"="competitor_name", 
                                          "peanutyalmondy"="peanuty_almondy", 
                                          "crispedricewafer"="crisped_ricewafer", 
                                          "sugarpercent"="sugar_percent", 
                                          "pricepercent"="price_percent", 
                                          "winpercent"="win_percent"))
# Convert binary variables to logical variables
cols.num <- c("chocolate", "fruity", "caramel", "peanuty_almondy", "nougat", "crisped_ricewafer",
              "hard", "bar", "pluribus")
candy_rankings[cols.num] <- lapply(candy_rankings[cols.num], as.logical)
devtools::use_data(candy_rankings, overwrite = TRUE)


# chess-transfers ----------------------------------------------------------------
chess_transfers <- read_csv("data-raw/chess-transfers/transfers.csv")
# snake_case for variable names
colnames(chess_transfers) <- colnames(chess_transfers) %>%
  tolower() %>%
  str_replace_all("\\.", "_") %>%
  str_replace_all(" ", "_")
# Change transfer date to proper format
chess_transfers$transfer_date <- as.Date(chess_transfers$transfer_date, "%m/%d/%y")
# Convert numeric variable to character
chess_transfers$id <- as.character(chess_transfers$id)
devtools::use_data(chess_transfers, overwrite = TRUE)

# congress-generic-ballot --------------------------------------------------------
# generic_polllist
generic_polllist <- 
  read_csv("https://projects.fivethirtyeight.com/generic-ballot-data/generic_polllist.csv")
# snake_case for variable names
generic_polllist <- rename(generic_polllist, c("modeldate"="model_date", "startdate"="start_date",
                                               "enddate"="end_date", "samplesize"="sample_size", 
                                               "createddate"="created_date"))
# Change model/start/end/created date to proper format
generic_polllist$model_date <- as.Date(generic_polllist$model_date, "%m/%d/%Y")
generic_polllist$start_date <- as.Date(generic_polllist$start_date, "%m/%d/%Y")
generic_polllist$end_date <- as.Date(generic_polllist$end_date, "%m/%d/%Y")
generic_polllist$created_date <- as.Date(generic_polllist$created_date, "%m/%d/%Y")
generic_polllist$timestamp <- parse_date_time(generic_polllist$timestamp, "HMS dmY")
# Convert character variables to factor
cols.num <- c("subgroup", "pollster", "grade", "population" )
generic_polllist[cols.num] <- lapply(generic_polllist[cols.num], as.factor)
# Convert integer variables to character
cols.num <- c("poll_id", "question_id")
generic_polllist[cols.num] <- lapply(generic_polllist[cols.num], as.character)
devtools::use_data(generic_polllist, overwrite = TRUE)

# generic_topline
generic_topline <- 
  read_csv("https://projects.fivethirtyeight.com/generic-ballot-data/generic_topline.csv")
# snake_case for variable names
generic_topline <- rename(generic_topline, c("modeldate"="model_date"))
# Change model/start/end/created date to proper format
generic_topline$model_date <- as.Date(generic_topline$model_date, "%m/%d/%Y")
generic_topline$timestamp <- parse_date_time(generic_topline$timestamp, "HMS dmY")
# Convert character variable to factor
generic_topline$subgroup <- as.factor(generic_topline$subgroup)
devtools::use_data(generic_topline, overwrite = TRUE)


#inconvenient-sequel ----------------------------------------------------------------
ratings <- read_csv("data-raw/inconvenient-sequel/ratings.csv")
# Convert character variable to factor
ratings$category <- as.factor(ratings$category)
devtools::use_data(ratings, overwrite = TRUE)


# mayweather-mcgregor ---------------------------------------------------------------
tweets <- read_csv("data-raw/mayweather-mcgregor/tweets.csv")
# Convert character variable to logical variable
tweets$emojis <- as.logical(tweets$emojis)
tweets$retweeted <- as.logical(tweets$retweeted)
# Convert numeric variable to character
tweets$id <- as.character(tweets$id)
devtools::use_data(tweets, overwrite = TRUE)


# index -----------------------------------------------------------------------------
index <- read_csv("data-raw/index.csv")
# No changes made
devtools::use_data(index, overwrite = TRUE)


# mlb-elo ---------------------------------------------------------------------------
mlb_elo <- read_csv("https://projects.fivethirtyeight.com/mlb-api/mlb_elo.csv")
# Convert character variable to factor
mlb_elo$playoff <- as.factor(mlb_elo$playoff)
# Convert binary variable to logical variable
mlb_elo$neutral <- as.logical(mlb_elo$neutral)
devtools::use_data(mlb_elo, overwrite = TRUE)


# soccer-spi ------------------------------------------------------------------------
#spi_matches
spi_matches <- read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_matches.csv")
# Convert character variable to factor
spi_matches$league_id <- as.factor(spi_matches$league_id)
devtools::use_data(spi_matches, overwrite = TRUE)

#spi_global_rankings
spi_global_rankings <- 
  read_csv("https://projects.fivethirtyeight.com/soccer-api/club/spi_global_rankings.csv")
# No changes made
devtools::use_data(spi_global_rankings, overwrite = TRUE)
