library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

#Historical Raptor by Player
historical_raptor_by_player <- read_csv("data-raw/nba-raptor/historical_RAPTOR_by_player.csv") %>%
  mutate(
    era = factor(c("historical"))
  ) 
historical_raptor_by_player[c("raptor_box_offense", "raptor_box_defense","raptor_box_total", 
            "raptor_onoff_offense", "raptor_onoff_defense", "raptor_onoff_total")] <- NA
historical_raptor_by_player <- historical_raptor_by_player[c("player_name","player_id","season","poss","mp","raptor_box_offense","raptor_box_defense","raptor_box_total",    
                              "raptor_onoff_offense","raptor_onoff_defense","raptor_onoff_total","raptor_offense","raptor_defense","raptor_total",
                              "war_total","war_reg_season","war_playoffs","predator_offense","predator_defense","predator_total",
                              "pace_impact","era")]

#Modern Raptor by Player
modern_raptor_by_player <- read_csv("data-raw/nba-raptor/modern_RAPTOR_by_player.csv") %>%
  mutate(
    era = factor(c("modern"))
  )

#Historical Raptor by Team
historical_raptor_by_team <-read_csv("data-raw/nba-raptor/historical_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type),
    era = factor(c("historical"))
    )
historical_raptor_by_team[c("raptor_box_offense", "raptor_box_defense","raptor_box_total", 
                                                             "raptor_onoff_offense", "raptor_onoff_defense", "raptor_onoff_total")] <- NA
historical_raptor_by_team <- historical_raptor_by_team[c("player_name","player_id","season","season_type","team","poss","mp","raptor_box_offense","raptor_box_defense","raptor_box_total",    
                                                             "raptor_onoff_offense","raptor_onoff_defense","raptor_onoff_total","raptor_offense","raptor_defense","raptor_total",
                                                             "war_total","war_reg_season","war_playoffs","predator_offense","predator_defense","predator_total",
                                                             "pace_impact","era")]

#Modern Raptor by Team
modern_raptor_by_team <-read_csv("data-raw/nba-raptor/modern_RAPTOR_by_team.csv") %>%
  mutate(
    season_type = as.factor(season_type),
    era = factor(c("modern"))
  )

#Combining Historical and Modern Raptor by Player Datasets
raptor_by_player <- bind_rows(historical_raptor_by_player,modern_raptor_by_player)

#Combining Historical and Modern Raptor by Team Datasets
raptor_by_team <- bind_rows(historical_raptor_by_team,modern_raptor_by_team)

usethis::use_data(raptor_by_player, overwrite = TRUE)
usethis::use_data(raptor_by_team, overwrite = TRUE)