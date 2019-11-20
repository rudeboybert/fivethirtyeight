library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

#Historical Raptor by Player
historical_raptor_by_player <- read_csv("data-raw/nba-raptor/historical_RAPTOR_by_player.csv") %>%
  mutate(
    era = "Historical",
    raptor_box_offense = NA,
    raptor_box_defense = NA,
    raptor_box_total = NA,
    raptor_onoff_offense = NA,
    raptor_onoff_defense = NA,
    raptor_onoff_total = NA
    ) 
  
#Modern Raptor by Player
modern_raptor_by_player <- read_csv("data-raw/nba-raptor/modern_RAPTOR_by_player.csv") %>%
  mutate(
    era = "Modern"
    )

#Historical Raptor by Team
historical_raptor_by_team <-read_csv("data-raw/nba-raptor/historical_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type),
    era = "Historical",
    raptor_box_offense = NA,
    raptor_box_defense = NA,
    raptor_box_total = NA,
    raptor_onoff_offense = NA,
    raptor_onoff_defense = NA,
    raptor_onoff_total = NA
    ) 

#Modern Raptor by Team
modern_raptor_by_team <-read_csv("data-raw/nba-raptor/modern_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type),
    era = "Modern"
    )

#Combining Historical and Modern Raptor by Player Datasets
raptor_by_player <- bind_rows(historical_raptor_by_player,modern_raptor_by_player) %>%
  mutate(
    era = as.factor(era)
    ) %>%
  select("era","player_name","player_id","season","poss","mp","raptor_box_offense","raptor_box_defense","raptor_box_total",    
         "raptor_onoff_offense","raptor_onoff_defense","raptor_onoff_total","raptor_offense","raptor_defense","raptor_total",
         "war_total","war_reg_season","war_playoffs","predator_offense","predator_defense","predator_total",
         "pace_impact")

#Combining Historical and Modern Raptor by Team Datasets
raptor_by_team <- bind_rows(historical_raptor_by_team,modern_raptor_by_team) %>%
  mutate(
    era = as.factor(era)
    ) %>%
  select("era","player_name","player_id","season","season_type","team","poss","mp","raptor_box_offense","raptor_box_defense","raptor_box_total",    
         "raptor_onoff_offense","raptor_onoff_defense","raptor_onoff_total","raptor_offense","raptor_defense","raptor_total",
         "war_total","war_reg_season","war_playoffs","predator_offense","predator_defense","predator_total",
         "pace_impact")

usethis::use_data(raptor_by_player, overwrite = TRUE)
usethis::use_data(raptor_by_team, overwrite = TRUE)