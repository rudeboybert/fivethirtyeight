library(tidyverse)
library(stringr)
library(lubridate)



# cabinet-turnover ---------------------------------------------------------------
cabinet_turnover <- read_csv("data-raw/cabinet-turnover/cabinet-turnover.csv")

devtools::use_data(cabinet_turnover, overwrite = TRUE)

# similar steps for cabinit-turnover, polish & "tame"