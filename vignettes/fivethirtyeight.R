## ---- message=FALSE, warning=FALSE, echo=FALSE---------------------------
library(fivethirtyeight)
# tidyverse includes ggplot2, tibble, tidyr, readr, purrr, dplyr:
library(tidyverse)
library(knitr)

## ---- message=FALSE, warning=FALSE, echo=FALSE---------------------------
datasets <- read_csv("https://goo.gl/OT8iHa") %>% 
  filter(!is.na(DATAFRAME_NAME)) %>% 
  mutate(DATAFRAME_NAME = paste("`", DATAFRAME_NAME, "`", sep="")) %>% 
  transmute(
    `Data Frame Name` = DATAFRAME_NAME,
    `Article Title` = ARTICLE_TITLE,
    `Filed Under` = ARTICLE_FILED_UNDER,
    `Author 1` = ARTICLE_AUTHOR_1,
    `Author 2` = ARTICLE_AUTHOR_2,
    `Author 3` = ARTICLE_AUTHOR_3,
    Date = ARTICLE_DATE,
    URL = ARTICLE_URL
  ) %>% 
  arrange(`Data Frame Name`)
kable(datasets)

