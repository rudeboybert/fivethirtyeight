# Used to add state abbreviations variable to any dataset that has state
# variable so that users can plot state abbreviations via
# `geom_text(aes(label = state_abbrev))` instead of using less
# informative geom_point()
# Regions based on census bureau designations
# https://en.wikipedia.org/wiki/List_of_regions_of_the_United_States

library(usethis)
library(usmap)
library(dplyr)
state_info <- tibble(
  state = c(state.name, "District of Columbia"),
  state_abbrev = c(state.abb, "DC"),
  division = case_when(
    state_abbrev %in% .new_england ~ "New England",
    state_abbrev %in% .mid_atlantic ~ "Mid-Atlantic",
    state_abbrev %in% .east_north_central ~ "East North Central",
    state_abbrev %in% .west_north_central ~ "West North Central",
    state_abbrev %in% .south_atlantic ~ "South Atlantic",
    state_abbrev %in% .east_south_central ~ "East South Central",
    state_abbrev %in% .west_south_central ~ "West South Central",
    state_abbrev %in% .mountain ~ "Mountain",
    state_abbrev %in% .pacific ~ "Pacific"
  ),
  region = case_when(
    state_abbrev %in% .northeast_region ~ "Northeast",
    state_abbrev %in% .midwest_region ~ "Midwest",
    state_abbrev %in% .west_region ~ "West",
    state_abbrev %in% .south_region ~ "South"
  )
)
usethis::use_data(state_info, overwrite = TRUE)
