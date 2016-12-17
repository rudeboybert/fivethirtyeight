library(tidyverse)
library(stringr)
library(lubridate)

# Chester: forecast-methodology thru police-killings
chester_folders <- list.files(path = "data-raw")[c(26:30, 32:51)]
dirs <- paste0("data-raw/", chester_folders, "\n")
cat(dirs)

# To make headers, guess at data frame names, and use_data
prep <- function(x){
  dashes <- rep("-", times = (81 - nchar(x))) %>% 
    paste(collapse = "")
  x <- x %>% str_replace_all("-", "_")
  paste0("# ", x, " ", dashes, "\n", 
    x, " <-", "\n\n",
    "devtools::use_data(", x, ", overwrite = TRUE) \n\n\n\n\n")
}
lapply(chester_folders, prep) %>% unlist() %>% cat()

# forecast_methodology -------------------------------------------------------------
hist_senate_preds <- 
  read_csv("data-raw/forecast-methodology/historical-senate-predictions.csv") %>%
  # Redundant column not specified in README.md
  select(-winflag)
colnames(hist_senate_preds) <- colnames(hist_senate_preds) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")  
devtools::use_data(hist_senate_preds, overwrite = TRUE) 



# hip_hop_candidate_lyrics ---------------------------------------------------------
hiphop_cand_lyrics <- 
  read_csv("data-raw/hip-hop-candidate-lyrics/genius_hip_hop_lyrics.csv",
    na = "N/A") %>% 
  # Not specified in README.md
  select(-id)
colnames(hiphop_cand_lyrics) <- colnames(hiphop_cand_lyrics) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")    
devtools::use_data(hiphop_cand_lyrics, overwrite = TRUE) 



# historical_ncaa_forecasts --------------------------------------------------------
path <- "data-raw/historical-ncaa-forecasts/"
hist_ncaa_bball_casts <- 
  read_csv(paste0(path, "historical-538-ncaa-tournament-model-results.csv")) %>% 
  rename(favorite_prob = favorite_probability,
    favorite_win = favorite_win_flag) %>% 
  mutate(favorite_win = ifelse(favorite_win == 1, TRUE, FALSE))
colnames(hist_ncaa_bball_casts) <- colnames(hist_ncaa_bball_casts) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(hist_ncaa_bball_casts, overwrite = TRUE) 



# infrastructure_jobs --------------------------------------------------------------
state_payrolls <- read_csv("data-raw/infrastructure-jobs/statepayrolls.csv") %>% 
  # Drop row number variable
  select(-X1) #%>% 
  #gather(key = "state", value = "value", -date)
colnames(state_payrolls) <- colnames(state_payrolls) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")  
#devtools::use_data(state_payrolls, overwrite = TRUE) 
  



# librarians -----------------------------------------------------------------------
librarians <- read_csv("data-raw/librarians/new-librarians-by-msa.csv") %>% 
  # Drop row number variable
  select(-X1) %>%
  # Remove two rows with no data
  na.omit()
colnames(librarians) <- colnames(librarians) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")  %>% 
  str_replace_all(".", "_")  
devtools::use_data(librarians, overwrite = TRUE) 




# mad_men --------------------------------------------------------------------------
mad_men <- read_csv("data-raw/mad-men/show-data.csv") %>% 
  rename(num_lead = `#LEAD`,
    num_support = `#SUPPORT`,
    num_shows = `#Shows`,
    status = `Status?`,
    score_div_y = `Score/Y`)
colnames(mad_men) <- colnames(mad_men) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")  
devtools::use_data(mad_men, overwrite = TRUE) 

# male_flight_attendants -----------------------------------------------------------
male_flight_attend <- 
  read_tsv("data-raw/male-flight-attendants/male-flight-attendants.tsv")
colnames(male_flight_attend) <- colnames(male_flight_attend) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(male_flight_attend, overwrite = TRUE) 

# march_madness_predictions --------------------------------------------------------

#-- MULTIPLE DATA FILES

# march_madness_predictions_2015 ---------------------------------------------------

#-- MULTIPLE DATA FILES

# marriage -------------------------------------------------------------------------

#-- Needs tidying and MULTIPLE DATA FILES

# mlb_allstar_teams ----------------------------------------------------------------
mlb_as_team_talent <- read_csv("data-raw/mlb-allstar-teams/allstar_team_talent.csv")
colnames(mlb_as_team_talent) <- colnames(mlb_as_team_talent) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(mlb_as_team_talent, overwrite = TRUE) 

mlb_as_play_talent <- read_csv("data-raw/mlb-allstar-teams/allstar_player_talent.csv")
colnames(mlb_as_play_talent) <- colnames(mlb_as_play_talent) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")  
devtools::use_data(mlb_as_play_talent, overwrite = TRUE) 




# most_common_name -----------------------------------------------------------------

#-- MULTIPLE DATA FILES

# murder_2016 ----------------------------------------------------------------------
murder_2016_prelim <- read_csv("data-raw/murder_2016/murder_2016_prelim.csv") %>% 
  rename(murders_2015 = `2015_murders`,
    murders_2016 = `2016_murders`) %>% 
  mutate(as_of = mdy(as_of))
colnames(murder_2016_prelim) <- colnames(murder_2016_prelim) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")    
devtools::use_data(murder_2016_prelim, overwrite = TRUE) 

murder_2015_final <- read_csv("data-raw/murder_2016/murder_2015_final.csv") %>% 
  rename(murders_2014 = `2014_murders`,
    murders_2015 = `2015_murders`)
colnames(murder_2015_final) <- colnames(murder_2015_final) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")     
devtools::use_data(murder_2015_final, overwrite = TRUE) 


########################


# nba_draft_2015 -------------------------------------------------------------------
nba_draft_2015 <-
  
  devtools::use_data(nba_draft_2015, overwrite = TRUE) 

# nba_elo --------------------------------------------------------------------------
nba_elo <-
  
  devtools::use_data(nba_elo, overwrite = TRUE) 

# nba_tattoos ----------------------------------------------------------------------
nba_tattoos <-
  
  devtools::use_data(nba_tattoos, overwrite = TRUE) 

# nba_winprobs ---------------------------------------------------------------------
nba_winprobs <-
  
  devtools::use_data(nba_winprobs, overwrite = TRUE) 

# nfl_favorite_team ----------------------------------------------------------------
nfl_favorite_team <-
  
  devtools::use_data(nfl_favorite_team, overwrite = TRUE) 

# nfl_suspensions ------------------------------------------------------------------
nfl_suspensions <-
  
  devtools::use_data(nfl_suspensions, overwrite = TRUE) 

# nfl_ticket_prices ----------------------------------------------------------------
nfl_ticket_prices <-
  
  devtools::use_data(nfl_ticket_prices, overwrite = TRUE) 

# nfl_wide_receivers ---------------------------------------------------------------
nfl_wide_receivers <-
  
  devtools::use_data(nfl_wide_receivers, overwrite = TRUE) 

# nutrition_studies ----------------------------------------------------------------
nutrition_studies <-
  
  devtools::use_data(nutrition_studies, overwrite = TRUE) 

# pew_religions --------------------------------------------------------------------
pew_religions <-
  
  devtools::use_data(pew_religions, overwrite = TRUE) 

# police_deaths --------------------------------------------------------------------
police_deaths <-
  
  devtools::use_data(police_deaths, overwrite = TRUE) 

# police_killings ------------------------------------------------------------------
police_killings <-
  
  devtools::use_data(police_killings, overwrite = TRUE) 
