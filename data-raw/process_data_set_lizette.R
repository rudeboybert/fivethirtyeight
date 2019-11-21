library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# cabinet_turnover --------------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv") %>% 
  clean_names() %>%
  mutate(combined = str_detect(length, "combined")) %>% 
  mutate(length = str_replace_all(length, " combined", "")) %>% 
  mutate(length = as.numeric(length)) %>% 
  mutate(president = factor(president))  

cabinet_turnover <- cabinet_turnover %>% 
  mutate(start = replace(start, cabinet_turnover$appointee == "Bob Gates", "12/18/2006" )) %>%
  mutate(start = replace(start, cabinet_turnover$appointee == "George Tenet", "7/3/95" )) %>% 
  mutate(start = replace(start, cabinet_turnover$appointee == "Lauro Cavazos", "9/20/88" )) %>% 
  mutate(start = replace(start, cabinet_turnover$appointee == "Dick Thornburgh", "8/15/88" )) %>%
  mutate(start = replace(start, cabinet_turnover$appointee == "Bill Webster", "5/26/87" )) %>% 
  mutate(start = replace(start, cabinet_turnover$appointee == "Nicholas Brady", "9/15/88" )) %>%
  mutate(end = replace(end, cabinet_turnover$appointee == "Bob Gates", "6/30/2011" )) %>%
  mutate(end = replace(end, cabinet_turnover$appointee == "George Tenet", "7/11/97" )) %>% 
  mutate(end = replace(end, cabinet_turnover$appointee == "Lauro Cavazos", "12/12/1990" )) %>% 
  mutate(end = replace(end, cabinet_turnover$appointee == "Dick Thornburgh", "8/15/1991" )) %>%
  mutate(end = replace(end, cabinet_turnover$appointee == "Bill Webster", "8/31/1991" )) %>% 
  mutate(end = replace(end, cabinet_turnover$appointee == "Nicholas Brady", "1/17/1993" ))

cabinet_turnover <- cabinet_turnover %>% 
  mutate(start = mdy(start)) %>%
  mutate(end = mdy(end)) 

cabinet_turnover$president <- factor(cabinet_turnover$president, levels = c("Carter", "Reagan", "Bush 41", "Clinton", "Bush 43", "Obama", "Trump"))  

usethis::use_data(cabinet_turnover, overwrite = TRUE)
