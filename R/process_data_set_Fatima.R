library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

impeachment_polls <- read_csv("data-raw/impeachment-polls/IMPEACHMENT-POLLS - Public Master List.csv") %>%
  clean_names() %>%
  mutate(
    Start = col_date(format = ""),
    End = col_date(format = ""),
    Pollster = as.factor(Pollster)
  )

usethis::use_data(impeachment_polls, overwrite = TRUE)


# start - date
#end - date
#pollster - factor
#sponsor - factor
#sample size- numeric 
#pop - factor 
#tracking - logical (change all N/A's to FALSE)
# text - character (questions asked in polls) 
#category - factor (type of polls; begin_proceedings are polls asking whether or not respondents believe impeachment proceedings should begin; begin_inquiry are polls asking asking if impeachment conversations should begin; impeach_and_remove are polls asking explicity if Trump should be impeached and removed; reasons; impeach; consider) 
#include - logical 
#yes - num (number of respondents who voted yes to that question) 
#no - num (number of respondents who voted no to that question)
#unsure - num (number of respondents indcating they were unsure)
#rep sample - num (define as number of republicans in sample) 
#rep yes - num (define as number of republicans who voted yes)
#rep no - num (define as number of republicans who voted no) 
#dem sample - num (define as number of democrats in sample)
#dem yes - num (defin as number of democrats in sample who voted yes) 
#dem no - num(number of democrats in sample who voted no) 
#ind sample - num (number of independents in this sample)
#ind yes - num (number of independents who voted yes)
#ind no - num (number of independents who voted no) 
