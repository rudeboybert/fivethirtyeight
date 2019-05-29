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
august_senate_polls <- august_senate_polls %>% 
  mutate(
    cycle = as.numeric(cycle), 
    state = as.factor(state), 
    senate_class = as.factor(senate_class),
    start_date = as.Date(start_date), 
    end_date = as.Date(end_date))

devtools::use_data(cabinet_turnover, overwrite = TRUE)
