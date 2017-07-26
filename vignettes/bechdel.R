## ---- message=FALSE, warning=FALSE---------------------------------------
library(fivethirtyeight)
# tidyverse includes ggplot2, tibble, tidyr, readr, purrr, dplyr:
library(tidyverse)
library(knitr)
library(magrittr)
library(broom)
library(stringr)
library(ggthemes)
library(scales)
# Turn off scientific notation
options(scipen = 99)

## ----bechdel90_13--------------------------------------------------------
bechdel90_13 <- bechdel %>% filter(between(year, 1990, 2013))

## ----mutate--------------------------------------------------------------
bechdel90_13 %<>% 
  mutate(int_only = intgross_2013 - domgross_2013,
         roi_total = intgross_2013 / budget_2013,
         roi_dom = domgross_2013 / budget_2013,
         roi_int = int_only / budget_2013)

## ----generous------------------------------------------------------------
bechdel90_13 %<>%
  mutate(generous = ifelse(test = clean_test %in% c("ok", "dubious"),
                           yes = TRUE,
                           no = FALSE))

## ----summary_ROI---------------------------------------------------------
ROI_by_binary <- bechdel90_13 %>% 
  group_by(binary) %>% 
  summarize(median_ROI = median(roi_total, na.rm = TRUE))
ROI_by_binary
bechdel90_13 %>% 
  summarize(
    `Median Overall Return on Investment` = median(roi_total, na.rm = TRUE))

## ----summary_budget------------------------------------------------------
budget_by_binary <- bechdel90_13 %>% 
  group_by(binary) %>% 
  summarize(median_budget = median(budget_2013, na.rm = TRUE))
budget_by_binary
bechdel90_13 %>% 
  summarize(`Median Overall Budget` = median(budget_2013, na.rm = TRUE))

