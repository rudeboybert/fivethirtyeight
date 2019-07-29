library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

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

usethis::use_data(cabinet_turnover, overwrite = TRUE)


# august-senate-polls ---------------------------------------------------------------
august_senate_polls <- read_csv("data-raw/august-senate-polls/august_senate_polls.csv") %>%
  clean_names() %>%
  mutate(
    cycle = as.numeric(cycle),
    state = as.factor(state),
    senate_class = as.factor(senate_class),
    start_date = as.Date(start_date), end_date = as.Date(end_date)
  )

usethis::use_data(august_senate_polls, overwrite = TRUE)


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

usethis::use_data(endorsements_2020, overwrite = TRUE)


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

usethis::use_data(forecast_results_2018, overwrite = TRUE)


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

usethis::use_data(governor_national_forecast, overwrite = TRUE)
usethis::use_data(governor_state_forecast, overwrite = TRUE)


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

usethis::use_data(house_district_forecast, overwrite = TRUE)
usethis::use_data(house_national_forecast, overwrite = TRUE)


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

usethis::use_data(mueller_approval_polls, overwrite = TRUE)


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
    full_percent = as.numeric(full_percent),
    first_home_game = as.logical(ifelse(first_home_game == "Y", TRUE, FALSE))
  )

usethis::use_data(ncaa_w_basketball_tournaments, overwrite = TRUE)

# partisan-lean ---------------------------------------------------------------
partisan_lean_district <- read_csv("data-raw/partisan-lean/fivethirtyeight_partisan_lean_DISTRICTS.csv") %>% 
  clean_names() %>% 
  separate(district, c("state", "disctrict_number")) %>% 
  separate(pvi_538, c("pvi_party", "pvi_amount"))
partisan_lean_district <- partisan_lean_district %>% 
  mutate(
    state = as.factor(state.name[match(partisan_lean_district$state, state.abb)]), 
    disctrict_number = as.numeric(disctrict_number), 
    pvi_party = as.factor(pvi_party), 
    pvi_amount = as.numeric(pvi_amount)
  ) 
  
usethis::use_data(partisan_lean_district, overwrite = TRUE)

partisan_lean_state <- read_csv("data-raw/partisan-lean/fivethirtyeight_partisan_lean_STATES.csv") %>% 
  clean_names() %>% 
  separate(pvi_538, c("pvi_party", "pvi_amount")) %>% 
  mutate(
    state = as.factor(state), 
    pvi_party = as.factor(pvi_party), 
    pvi_amount = as.numeric(pvi_amount)
  )
usethis::use_data(partisan_lean_state, overwrite = TRUE)

# political-elasticity-scores ---------------------------------------------------------------
elasticity_by_district <- read_csv("data-raw/political-elasticity-scores/elasticity-by-district.csv") %>% 
  clean_names() %>% 
  separate(district, c("state", "disctrict_number")) 
elasticity_by_district <- elasticity_by_district %>% 
  mutate(
    state = as.factor(state.name[match(elasticity_by_district$state, state.abb)]), 
    disctrict_number = as.numeric(disctrict_number)
  ) 
usethis::use_data(elasticity_by_district, overwrite = TRUE)

elasticity_by_state <- read_csv("data-raw/political-elasticity-scores/elasticity-by-state.csv") %>% 
  clean_names() %>% 
  mutate(
    state = as.factor(state.name[match(elasticity_by_state$state, state.abb)]), 
  )
usethis::use_data(elasticity_by_state, overwrite = TRUE)

# russia-investigation ---------------------------------------------------------------
russia_investigation <- read_csv("data-raw/russia-investigation/russia-investigation.csv") %>% 
  clean_names() %>% 
  mutate(
    investigation = as.factor(investigation),
    name = as.factor(name),
    type = as.factor(type),
    president = as.factor(president)
  )
  
usethis::use_data(russia_investigation, overwrite = TRUE)

# senate-forecast-2018 ---------------------------------------------------------------
senate_national_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/senate_national_forecast.csv") %>% 
  clean_names() %>% 
  mutate(
    party = as.factor(party),
    model = as.factor(model)
  ) %>%
  select(-state)
usethis::use_data(senate_national_forecast, overwrite = TRUE)

senate_seat_forecast <- read_csv("https://projects.fivethirtyeight.com/congress-model-2018/senate_seat_forecast.csv") %>% 
  clean_names() %>% 
  mutate(
    state = as.factor(state),
    candidate = as.factor(candidate),
    party = as.factor(party),
    model =  as.factor(model)
  )
usethis::use_data(senate_seat_forecast, overwrite = TRUE)

# trump-lawsuits ---------------------------------------------------------------
trump_lawsuits <- read_csv("data-raw/trump-lawsuits/trump-lawsuits.csv") %>% 
  clean_names() %>% 
  mutate(
    case_name = as.factor(case_name),
    plaintiff = as.factor(plaintiff),
    defendant = as.factor(defendant),
    current_location = as.factor(current_location),
    previous_location = as.factor(previous_location),
    judge = as.factor(judge),
    capacity = as.factor(capacity),
    type = as.factor(type),
    trump_category = as.factor(trump_category),
    issue = as.factor(issue),
    status = as.factor(status)
  )
usethis::use_data(trump_lawsuits, overwrite = TRUE)

# masculinity-survey  ---------------------------------------------------------------
masculinity_survey <- read_csv("data-raw/masculinity-survey/masculinity-survey-r.csv") %>% 
  clean_names() %>% 
  mutate(question = as.factor(question),
         response = as.factor(response)
         )
usethis::use_data(masculinity_survey, overwrite = TRUE)