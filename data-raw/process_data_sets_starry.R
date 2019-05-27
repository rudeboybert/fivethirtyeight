library(tidyverse)
library(stringr)
library(lubridate)



# cabinet-turnover ---------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv")
colnames(cabinet_turnover) <- colnames(cabinet_turnover) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")

cabinet_turnover$start <- 
  cabinet_turnover$start %>% 
  as.Date("%m/%d/%y")
cabinet_turnover$end <- 
  cabinet_turnover$end %>% 
  as.Date("%m/%d/%y")
cabinet_turnover$president <- 
  cabinet_turnover$president %>% 
  as.factor()
cabinet_turnover$position <- 
  cabinet_turnover$position %>% 
  as.factor()
cabinet_turnover$length <- 
  cabinet_turnover$length %>% 
  as.numeric()
cabinet_turnover$days <- 
  cabinet_turnover$days %>% 
  as.numeric()

devtools::use_data(cabinet_turnover, overwrite = TRUE)