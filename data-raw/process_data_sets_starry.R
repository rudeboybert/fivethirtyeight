library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)

# cabinet-turnover ---------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv") %>% 
  clean_names() %>% 
  mutate(
    start = as.Date(start, "%m/%d/%y"), # change format
    end = as.Date(end, "%m/%d/%y"), # change format
    president = as.factor(president), 
    position = as.factor(position),
    length = as.numeric(length), 
    days = as.numeric(days)
    )

devtools::use_data(cabinet_turnover, overwrite = TRUE)

# august-senate-polls ---------------------------------------------------------------
august_senate_polls <- read_csv("data-raw/august-senate-polls/august_senate_polls.csv") %>% 
  clean_names() %>% 
  mutate(
    cycle = as.numeric(cycle), 
    state = as.factor(state), 
    senate_class = as.factor(senate_class),
    start_date = as.Date(start_date), end_date = as.Date(end_date)
    )

devtools::use_data(august_senate_polls, overwrite = TRUE)

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

devtools::use_data(endorsements_2020, overwrite = TRUE)

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
devtools::use_data(forecast_results_2018, overwrite = TRUE)

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
    model =  as.factor(model)
    ) %>% 
  select(-district, -special)

devtools::use_data(governor_national_forecast, overwrite = TRUE)
devtools::use_data(governor_state_forecast, overwrite = TRUE)

# house-forecast-2018 ---------------------------------------------------------------

house_district_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/house_district_forecast.csv") %>% 
  clean_names() %>% 
  mutate(
    state = as.factor(state), 
         district = as.factor(district), 
         candidate = as.factor(candidate),
         party = as.factor(party), 
         incumbent = as.logical(incumbent), 
         model = as.factor(model)
    ) %>% 
  select(-special)
house_national_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/house_national_forecast.csv") %>% 
  clean_names() %>% 
  mutate(
    party = as.factor (party), 
    model = as.factor (model)
    ) %>% 
  select(-state)

devtools::use_data(house_district_forecast, overwrite = TRUE)
devtools::use_data(house_national_forecast, overwrite = TRUE)

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
devtools::use_data(mueller_approval_polls, overwrite = TRUE)

# ncaa-womens-basketball-tournament ---------------------------------------------------------------
ncaa_w_basketball_tournaments <- read_csv("data-raw/ncaa-womens-basketball-tournament/ncaa-womens-basketball-tournament-history.csv") %>%
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
    tourney_finish = factor(tourney_finish, levels = c("OR",  "1st", "2nd", "RSF",  "RF", "NSF", "N2nd", "Champ")), 
    full_percent = as.numeric(full_percent)) 

levels(ncaa_w_basketball_tournaments$first_home_game) <- c(FALSE, TRUE)
ncaa_w_basketball_tournaments$first_home_game <- as.logical(ncaa_womens_basketball_tournament_history$first_home_game)

devtools::use_data(ncaa_w_basketball_tournaments, overwrite = TRUE)