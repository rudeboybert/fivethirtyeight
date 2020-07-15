library(tidyverse)
library(janitor)
library(usethis)



# nfl-fandom---------------------------------------------------------------------
nfl_fandom_google <- read_csv("data-raw/nfl-fandom/NFL_fandom_data-google_trends.csv", skip=1) %>%
  clean_names() %>%
  rename(
    trump_2016_vote = 'trump_2016_votepercent'
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
  skip=1
) %>%
  clean_names() %>%
  rename(
    total_respondents = 'tot_respondents',
    gop_percent = 'goppercent',
    dem_percent = 'dempercent',
    ind_percent = 'indpercent',
    white_percent = 'whitepercent',
    nonwhite_percent = 'nonwhitepercent',
    asian_dem = 'asian',
    black_dem = 'black',
    hispanic_dem = 'hispanic',
    other_dem = 'other',
    white_dem = 'white',
    total_dem = 'total'
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
  str_replace_all(pattern="_1", replacement="_ind") %>%
  str_replace_all(pattern="_2", replacement="_gop")
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
    hurricane_jose_us = hurricane_jose_united_states)
usethis::use_data(google_trends, overwrite = TRUE)

# Data on the number of sentences per day that mention Hurricanes Harvey, Irma,
# Jose, and Maria in online news
mediacloud_hurricanes <- read_csv("data-raw/puerto-rico-media/mediacloud_hurricanes.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format= "%m / %d / %y")
  )
usethis::use_data(mediacloud_hurricanes, overwrite = TRUE)

# Data on the number of sentences per day
# that mention Puerto Rico, Texas, and Florida in online news
mediacloud_states <- read_csv("data-raw/puerto-rico-media/mediacloud_states.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format= "%m / %d / %y")
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
    date = as.Date(date, format= "%m / %d / %y")
  )
usethis::use_data(tv_hurricanes, overwrite = TRUE)

# Data on the percent of sentences per day in TV News that mention Hurricanes
# Harvey, Irma, Jose, and Maria by network.
tv_hurricanes_by_network <- read_csv("data-raw/puerto-rico-media/tv_hurricanes_by_network.csv") %>%
  clean_names() %>%
  mutate(
    date = as.Date(date, format= "%m / %d / %y"),
    query = as.factor(query)
  )
usethis::use_data(tv_hurricanes_by_network, overwrite = TRUE)

# Data on the percent of sentences per day in TV News that mention Puerto Rico,
# Texas, and Florida.
tv_states <- read_csv("data-raw/puerto-rico-media/tv_states.csv") %>%
  clean_names() %>%
  mutate(date = as.Date(date, format= "%m / %d / %y"))
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
  mutate(date = as.Date(date, format= "%m / %d / %y"))
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



# twitter-ratio---------------------------------------------------------------------
barack_obama <- read_csv("data-raw/twitter-ratio/BarackObama.csv") %>%
  mutate(
    created_at = as.POSIXct(created_at, tz = "GMT", format = "%m/%d/%Y %H:%M"),
    text =  gsub("[^\x01-\x7F]", "", text)
  )
real_donald_trump <- read_csv("data-raw/twitter-ratio/realDonaldTrump.csv") %>%
  mutate(
    created_at = as.POSIXct(created_at, tz = "GMT", format = "%m/%d/%Y %H:%M"),
    text =  gsub("[^\x01-\x7F]", "", text)
  )
twitter_presidents <- bind_rows(barack_obama, real_donald_trump) %>%
  select(created_at, user, everything())
usethis::use_data(twitter_presidents, overwrite=TRUE)



# undefeated-boxers---------------------------------------------------------------------
undefeated <- read_csv("data-raw/undefeated-boxers/undefeated.csv")
usethis::use_data(undefeated, overwrite = TRUE)
