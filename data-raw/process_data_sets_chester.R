library(tidyverse)
library(stringr)
library(lubridate)

# Albert: airline_safety thru food-world-cup
# Chester: forecast-methodology thru police-killings
# Jen: police-locals thru world-cup-predictions

# Instructions:
# -Read README.md file
# -Load CSV into R using readr::read_csv
# -Check that all variable types are correct using glimpse()
# -Modify data as needed
# -Write to RData format for package using use_data(DATASET, overwrite=TRUE)

# Standards:
# -Tidy data format: http://r4ds.had.co.nz/tidy.html
# -Convert dates that are beyond just YEAR to POSIX objects using lubridate package if possible.
#  Example: if there are YEAR and MONTH variable, then convert to date

