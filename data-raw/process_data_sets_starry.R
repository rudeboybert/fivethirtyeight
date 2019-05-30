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


devtools::use_data(endorsements_2020, overwrite = TRUE)


# forecast-review ---------------------------------------------------------------
forecast_results_2018 <- read_csv("data-raw/forecast-review/forecast_results_2018.csv")


devtools::use_data(forecast_results_2018, overwrite = TRUE)

