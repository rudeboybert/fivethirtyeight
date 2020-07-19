library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# These datasets have been moved to the `fivethirtyeightdata` package

castle_solutions <- read_csv("data-raw/riddler-castles/castle-solutions.csv")

castle_solutions <- castle_solutions %>% #clean the names
  rename(strategy = `Why did you choose your troop deployment?`) %>%
  clean_names()

castle_solutions$user <- seq.int(nrow(castle_solutions)) #create user column

#gather the data to tidy form
castle_solutions <- gather(castle_solutions, key = "castle", value = "number_of_soldiers", 
                           contains("castle_"), -strategy, -user) %>%
  select(user, castle, number_of_soldiers, strategy) #reorder

#classes of variables: only adjusted the user column, the rest are the appropriate class
castle_solutions <- castle_solutions %>%
  mutate(user = as.character(user))

#-----------------------

castle_solutions_2 <- read_csv("data-raw/riddler-castles/castle-solutions-2.csv")

castle_solutions_2 <- castle_solutions_2 %>% #clean the names
  rename(strategy = `Why did you choose your troop deployment?`) %>%
  clean_names()


castle_solutions_2$user <- seq.int(nrow(castle_solutions_2)) #create user column

#gather the data to tidy form
castle_solutions_2 <- gather(castle_solutions_2, key = "castle", value = "number_of_soldiers", 
                             contains("castle_"), -strategy, -user) %>%
  select(user, castle, number_of_soldiers, strategy) #reorder

#classes of variables: only adjusted the user column, the rest are the appropriate class
castle_solutions_2 <- castle_solutions_2 %>%
  mutate(user = as.character(user))

#-------------------------

castle_solutions_3 <- read_csv("data-raw/riddler-castles/castle-solutions-3.csv")

castle_solutions_3 <- castle_solutions_3%>% #clean the names
  rename(strategy = `Why did you choose your troop deployment?`) %>%
  clean_names()

castle_solutions_3$user <- seq.int(nrow(castle_solutions_3)) #create user column

#gather the data to tidy form
castle_solutions_3 <- gather(castle_solutions_3, key = "castle", value = "number_of_soldiers", 
                             contains("castle_"), -strategy, -user) %>%
  select(user, castle, number_of_soldiers, strategy) #reorder

#classes of variables: only adjusted the user column, the rest are the appropriate class
castle_solutions_3 <- castle_solutions_3 %>%
  mutate(user = as.character(user))

#-----------------------

usethis::use_data(castle_solutions, overwrite = TRUE)
usethis::use_data(castle_solutions_2, overwrite = TRUE)
usethis::use_data(castle_solutions_3, overwrite = TRUE)
