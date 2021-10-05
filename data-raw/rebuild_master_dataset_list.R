library(tidyverse)
library(usethis)
library(devtools)

# Import master list of all 538 data available in this Google Sheet
# https://docs.google.com/spreadsheets/d/1IMWAHNPIDzplafWW6AGnGyHmB1BMjohEw_V5HmT70Gs/
# and saves it in the package. This master list is used in
# vignettes/fivethirtyeight.Rmd.
# 
# We save datasets_master as a package dataset here, rather than load it
# dynamically from the web in vignettes/fivethirtyeight.Rmd to adhere to CRAN's
# policy on internet access.
datasets_master <- 
  "https://goo.gl/OT8iHa" %>% 
  read_csv() %>% 
  filter(!is.na(DATAFRAME_NAME)) %>% 
  transmute(
    `Data Frame Name` = DATAFRAME_NAME,
    `In fivethirtyeightdata?` = `IN FIVETHIRTYEIGHTDATA?`,
    `Article Title` = ARTICLE_TITLE,
    URL = ARTICLE_URL,
    `Author 1` = ARTICLE_AUTHOR_1,
    `Author 2` = ARTICLE_AUTHOR_2,
    `Author 3` = ARTICLE_AUTHOR_3,
    Date = ARTICLE_DATE,
    `Filed Under` = ARTICLE_FILED_UNDER
  ) %>% 
  mutate(
    `Filed Under` = ifelse(is.na(`Filed Under`), "", `Filed Under`),
    `Author 1` = ifelse(is.na(`Author 1`), "", `Author 1`),
    `Author 2` = ifelse(is.na(`Author 2`), "", `Author 2`),
    `Author 3` = ifelse(is.na(`Author 3`), "", `Author 3`)
  ) %>% 
  arrange(`Data Frame Name`)

use_data(datasets_master, overwrite = TRUE)
