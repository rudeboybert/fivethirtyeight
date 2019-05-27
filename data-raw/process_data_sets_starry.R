library(tidyverse)
library(stringr)
library(lubridate)

# cabinet-turnover ---------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv")
colnames(cabinet_turnover) <- colnames(cabinet_turnover) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

cabinet_turnover$start <- as.Date(cabinet_turnover$start, "%m/%d/%y")
cabinet_turnover$end <- as.Date(cabinet_turnover$end, "%m/%d/%y")
cabinet_turnover$president <- as.factor(cabinet_turnover$president)
cabinet_turnover$position <- as.factor(cabinet_turnover$position)
cabinet_turnover$length <- as.numeric(cabinet_turnover$length)
cabinet_turnover$days <- as.numeric(cabinet_turnover$days)

devtools::use_data(cabinet_turnover, overwrite = TRUE)

# august-senate-pools ---------------------------------------------------------------
august_senate_polls <- read_csv("data-raw/august-senate-polls/august_senate_polls.csv")
colnames(august_senate_polls) <- colnames(august_senate_polls) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

august_senate_polls$cycle <- as.numeric(august_senate_polls$cycle)
august_senate_polls$state <- as.factor(august_senate_polls$state)
august_senate_polls$senate_class <- as.factor(august_senate_polls$senate_class)
august_senate_polls$start_date <- as.Date(august_senate_polls$start_date, "%y/%m/%d") # need to transform order
august_senate_polls$end_date <- as.Date(august_senate_polls$end_date, "%y/%m/%d")

devtools::use_data(cabinet_turnover, overwrite = TRUE)
