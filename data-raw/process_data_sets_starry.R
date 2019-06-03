library(tidyverse)
library(stringr)
library(lubridate)

# cabinet-turnover ---------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv")
colnames(cabinet_turnover) <- colnames(cabinet_turnover) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

cabinet_turnover <- cabinet_turnover %>% 
  mutate(start = as.Date(start), 
         end = as.Date(end), 
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
endorsements_2020 <- read_csv("data-raw/endorsements/endorsements-2020.csv")
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
    # race = as.factor(race), # ?
    forecastdate = as.Date(forecastdate),  #?
    version = as.factor(version), 
    category = as.factor(category), 
    # Convert 0/1 to TRUE/FALSE
    democrat_won = as.logical(democrat_won),
    republican_won = as.logical(republican_won), 
    uncalled = as.logical(uncalled)
  )
devtools::use_data(forecast_results_2018, overwrite = TRUE)

# governors-forecast-2018 ---------------------------------------------------------------

governor_national_forecast <- read_csv("data-raw/governors-forecast-2018/governor_national_forecast.csv")
governor_state_forecast <- read_csv("data-raw/governors-forecast-2018/governor_state_forecast.csv")

colnames(governor_national_forecast) <- colnames(governor_national_forecast) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")
colnames(governor_state_forecast) <- colnames(governor_state_forecast) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

devtools::use_data(governor_national_forecast, overwrite = TRUE)
devtools::use_data(governor_state_forecast, overwrite = TRUE)
