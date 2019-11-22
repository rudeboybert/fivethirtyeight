library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)
library(readr)

# dem_candidates ---------------------------------------------------------------
dem_candidates <- read_csv("data-raw/primary-candidates-2018/dem_candidates.csv") %>%
  clean_names() %>%
  #change classes from character to factor and date to date
  mutate(
    state = as.factor(state),
    office_type = as.factor(office_type),
    race_type = as.factor(race_type),
    primary_status = as.factor(primary_status),
    primary_runoff_status = as.factor(primary_runoff_status),
    general_status = as.factor(general_status),
    race = as.factor(race),
    race_primary_election_date = as.Date(race_primary_election_date,"%m/%d/%y"),
    won_primary = as.factor(won_primary),
    veteran = as.factor(veteran),
    lgbtq = as.factor(lgbtq),
    elected_official = as.factor(elected_official),
    self_funder = as.factor(self_funder),
    stem = as.factor(stem),
    obama_alum = as.factor(obama_alum),
    party_support = as.factor(party_support),
    emily_endorsed = as.factor(emily_endorsed),
    guns_sense_candidate = as.factor(guns_sense_candidate),
    biden_endorsed = as.factor(biden_endorsed),
    warren_endorsed = as.factor(warren_endorsed),
    sanders_endorsed = as.factor(sanders_endorsed),
    our_revolution_endorsed = as.factor(our_revolution_endorsed),
    justice_dems_endorsed = as.factor(justice_dems_endorsed),
    pccc_endorsed = as.factor(pccc_endorsed),
    indivisible_endorsed = as.factor(indivisible_endorsed),
    wfp_endorsed = as.factor(wfp_endorsed),
    no_labels_support = as.factor(no_labels_support)
  )

#transform district variable into 2 variables: 

#body of government
dem_candidates <- dem_candidates %>%
  mutate(
    body = case_when(
      str_detect(district,"Governor") ~ "governor",
      str_detect(district, "House") ~ "house",
      str_detect(district, "Senate") ~ "senate"),
    body = as.factor(body)
  )

#district number
dem_candidates <- dem_candidates %>%
  mutate(
    district_num = as.double(str_extract(district, "[[:digit:]]+")))

#remove original district variable
dem_candidates$district <- NULL

#change levels from Yes/No to TRUE/FALSE for relevant variables
levels(dem_candidates$won_primary) <- c(FALSE,TRUE)
levels(dem_candidates$veteran) <- c(FALSE,TRUE)
levels(dem_candidates$lgbtq) <- c(FALSE,TRUE)
levels(dem_candidates$elected_official) <- c(FALSE,TRUE)
levels(dem_candidates$self_funder) <- c(FALSE,TRUE)
levels(dem_candidates$stem) <- c(FALSE,TRUE)
levels(dem_candidates$obama_alum) <- c(FALSE,TRUE)
levels(dem_candidates$party_support) <- c(FALSE,TRUE)
levels(dem_candidates$emily_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$guns_sense_candidate) <- c(FALSE,TRUE)
levels(dem_candidates$biden_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$warren_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$sanders_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$our_revolution_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$justice_dems_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$pccc_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$indivisible_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$wfp_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$vote_vets_endorsed) <- c(FALSE,TRUE)
levels(dem_candidates$no_labels_support) <- c(FALSE,TRUE)

#change the TRUE/FALSE variables to logical
dem_candidates <- dem_candidates %>%
  mutate(
    won_primary = as.logical(won_primary),
    veteran = as.logical(veteran),
    lgbtq = as.logical(lgbtq),
    elected_official = as.logical(elected_official),
    self_funder = as.logical(self_funder),
    stem = as.logical(stem),
    obama_alum = as.logical(obama_alum),
    party_support = as.logical(party_support),
    emily_endorsed = as.logical(emily_endorsed),
    guns_sense_candidate = as.logical(guns_sense_candidate),
    biden_endorsed = as.logical(biden_endorsed),
    warren_endorsed = as.logical(warren_endorsed),
    sanders_endorsed = as.logical(sanders_endorsed),
    our_revolution_endorsed = as.logical(our_revolution_endorsed),
    justice_dems_endorsed = as.logical(justice_dems_endorsed),
    pccc_endorsed = as.logical(pccc_endorsed),
    indivisible_endorsed = as.logical(indivisible_endorsed),
    wfp_endorsed = as.logical(wfp_endorsed),
    vote_vets_endorsed = as.logical(vote_vets_endorsed),
    no_labels_support = as.logical(no_labels_support)
  )

dem_candidates <- dem_candidates %>%
  select(candidate, state, body, district_num, office_type, everything())

usethis::use_data(dem_candidates, overwrite = TRUE)