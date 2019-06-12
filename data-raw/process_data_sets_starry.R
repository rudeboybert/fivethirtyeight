library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)

# cabinet-turnover ---------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv")
colnames(cabinet_turnover) <- colnames(cabinet_turnover) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

cabinet_turnover <- cabinet_turnover %>% 
  mutate(start = as.Date(start, "%m/%d/%y"), # change format
         end = as.Date(end, "%m/%d/%y"), # change format 
         president = as.factor(president), 
         position = as.factor(position),
         length = as.numeric(length), 
         days = as.numeric(days))

devtools::use_data(cabinet_turnover, overwrite = TRUE)

# august-senate-polls ---------------------------------------------------------------
august_senate_polls <- read_csv("data-raw/august-senate-polls/august_senate_polls.csv")
colnames(august_senate_polls) <- colnames(august_senate_polls) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
august_senate_polls <- august_senate_polls %>% 
  mutate(
    cycle = as.numeric(cycle), 
    state = as.factor(state), 
    senate_class = as.factor(senate_class),
    start_date = as.Date(start_date), 
    end_date = as.Date(end_date))

devtools::use_data(august_senate_polls, overwrite = TRUE)

# endorsements ---------------------------------------------------------------
endorsements_2020 <- read_csv("https://projects.fivethirtyeight.com/endorsements-2020-data/endorsements-2020.csv")
colnames(endorsements_2020) <- colnames(endorsements_2020) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
endorsements_2020 <- endorsements_2020 %>% 
  mutate(
    position = as.factor(position), 
    city = as.factor(city),
    state = as.factor(state), 
    endorser_party = as.factor(endorser_party),
    category = as.factor(category)
  )

devtools::use_data(endorsements_2020, overwrite = TRUE)

# forecast-review ---------------------------------------------------------------
forecast_results_2018 <- read_csv("data-raw/forecast-review/forecast_results_2018.csv")
colnames(forecast_results_2018) <- colnames(forecast_results_2018) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
forecast_results_2018 <- forecast_results_2018 %>% 
  mutate(
    branch = as.factor(branch), 
    forecastdate = as.Date(forecastdate, "%m/%d/%y"),  
    version = as.factor(version), 
    category = as.factor(category), 
    democrat_won = as.logical(democrat_won), # Convert 0/1 to TRUE/FALSE
    republican_won = as.logical(republican_won), 
    uncalled = as.logical(uncalled)
  )
devtools::use_data(forecast_results_2018, overwrite = TRUE)

# governors-forecast-2018 ---------------------------------------------------------------

governor_national_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/governor_national_forecast.csv")
governor_state_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/governor_state_forecast.csv")

colnames(governor_national_forecast) <- colnames(governor_national_forecast) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
governor_national_forecast <- governor_national_forecast %>% 
  mutate(party = as.factor(party), 
         model = as.factor(model)) %>% 
  select(-state)
  
colnames(governor_state_forecast) <- colnames(governor_state_forecast) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
governor_state_forecast <- governor_state_forecast %>% 
  mutate(
    state = as.factor(state), 
    candidate = as.factor(candidate), 
    party = as.factor(party), 
    incumbent = as.logical(incumbent), 
    model =  as.factor(model)) %>% 
  select(-district, -special)

devtools::use_data(governor_national_forecast, overwrite = TRUE)
devtools::use_data(governor_state_forecast, overwrite = TRUE)

# house-forecast-2018 ---------------------------------------------------------------

house_district_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/house_district_forecast.csv")
house_national_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/house_national_forecast.csv")

colnames(house_district_forecast) <- colnames(house_district_forecast) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
house_district_forecast <- house_district_forecast %>% 
  mutate(state = as.factor(state), 
         district = as.factor(district), 
         candidate = as.factor(candidate),
         party = as.factor(party), 
         incumbent = as.logical(incumbent), 
         model = as.factor(model)) %>% 
  select(-special)

colnames(house_national_forecast) <- colnames(house_national_forecast) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
house_national_forecast <- house_national_forecast %>% 
  mutate(
    party = as.factor (party), 
    model = as.factor (model)) %>% 
  select(-state)

devtools::use_data(house_district_forecast, overwrite = TRUE)
devtools::use_data(house_national_forecast, overwrite = TRUE)

# mueller-polls ---------------------------------------------------------------
mueller_approval_polls <- read_csv("data-raw/mueller-polls/mueller-approval-polls.csv")
colnames(mueller_approval_polls) <- colnames(mueller_approval_polls) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

mueller_approval_polls <- mueller_approval_polls %>% 
  mutate(
    start = as.Date(start, "%m/%d/%y"), 
    end = as.Date(end, "%m/%d/%y"), 
    pollster = as.factor(pollster), 
    population = as.factor(population), 
    text = as.factor(text)
  )
devtools::use_data(mueller_approval_polls, overwrite = TRUE)

# ncaa-womens-basketball-tournament ---------------------------------------------------------------
ncaa_womens_basketball_tournament_history <- read_csv("data-raw/ncaa-womens-basketball-tournament/ncaa-womens-basketball-tournament-history.csv") %>% 
  clean_names() 

colnames(ncaa_womens_basketball_tournament_history) <- colnames(ncaa_womens_basketball_tournament_history) %>% 
  str_replace_all("x", "")

ncaa_womens_basketball_tournament_history <- ncaa_womens_basketball_tournament_history %>% 
  mutate(
    school = as.factor(school), 
    seed = as.numeric(seed),
    conference = as.factor(conference), 
    conf_w = as.numeric(conf_w), 
    conf_l = as.numeric(conf_l), 
    conf_percent = as.numeric(conf_percent),
    conf_place = as.factor(conf_place), 
    how_qual = as.factor(how_qual), 
    `1st_game_at_home`= as.factor(str_replace_all(`1st_game_at_home`, "\\^", "")),
    tourney_w = as.logical(tourney_w), 
    tourney_l = as.logical(tourney_l), 
    tourney_finish = as.factor(tourney_finish), 
    full_percent = as.numeric(full_percent))

levels(ncaa_womens_basketball_tournament_history$`1st_game_at_home`) <- c(FALSE, TRUE)
ncaa_womens_basketball_tournament_history$`1st_game_at_home` <- as.logical(ncaa_womens_basketball_tournament_history$`1st_game_at_home`)

devtools::use_data(ncaa_womens_basketball_tournament_history, overwrite = TRUE)
