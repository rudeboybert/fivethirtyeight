library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# cabinet_turnover --------------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv") %>% 
  clean_names() %>% 
  mutate(start = col_date(format = ""),
         end = col_date(format = ""))


usethis::use_data(cabinet_turnover, overwrite = TRUE)