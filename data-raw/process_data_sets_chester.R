library(tidyverse)
library(stringr)
library(lubridate)

# Get list of variable names in df with newline
get_names <- function(x) {cat(names(x), sep = "\n")}

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
  # Remove missing data rows
  slice(-c(1,2)) %>% 
  # Drop row number variable
  select(-X1) %>%
  rename(loc_quotient = loc.quotient) %>% 
  mutate(jobs_1000 = as.numeric(jobs_1000),
         loc_quotient = as.numeric(loc_quotient))
colnames(librarians) <- colnames(librarians) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")  
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


# nba_draft_2015 -------------------------------------------------------------------
nba_draft_2015 <- read_csv("data-raw/nba-draft-2015/historical_projections.csv")
colnames(nba_draft_2015) <- colnames(nba_draft_2015) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")    
devtools::use_data(nba_draft_2015, overwrite = TRUE) 

# nba_elo --------------------------------------------------------------------------
nba_elo <- read_csv("data-raw/nba-elo/nbaallelo.csv") %>% 
  rename(is_copy = `_iscopy`) %>% 
  mutate(is_playoffs = ifelse(is_playoffs == 1, TRUE, FALSE),
         is_copy = ifelse(is_copy == 1, TRUE, FALSE)) 
colnames(nba_elo) <- colnames(nba_elo) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")     
# Not included due to size
#devtools::use_data(nba_elo, overwrite = TRUE) 

# nba_tattoos ----------------------------------------------------------------------
nba_tattoos <- read_csv("data-raw/nba-tattoos/nba-tattoos-data.csv") %>% 
  rename(player_name = `Player Name`,
         tattoos = `Tattoos yes/no`) %>% 
  mutate(tattoos = ifelse(tattoos == "yes", TRUE, FALSE))
colnames(nba_tattoos) <- colnames(nba_tattoos) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(nba_tattoos, overwrite = TRUE) 

# nba_winprobs ---------------------------------------------------------------------
# Needs tidying (documentation not created)
nba_winprobs <- read_tsv("data-raw/nba-winprobs/nba.tsv")
colnames(nba_winprobs) <- colnames(nba_winprobs) %>% 
  tolower() %>% 
  str_replace_all(" ", "_") 
#devtools::use_data(nba_winprobs, overwrite = TRUE) 

# nfl_favorite_team ----------------------------------------------------------------
nfl_fav_team <- 
  read_csv("data-raw/nfl-favorite-team/team-picking-categories.csv") %>% 
  rename(big_market = BMK,
         uniform = UNI,
         coaching = CCH,
         stadium_exp = STX,
         small_market  = SMK,
         afford = AFF,
         stlouis_prox = SLP,
         nyc_prox = NYP,
         fan_relations = FRL,
         bang_buck = BNG,
         tradition = TRD,
         bandwagon = BWG,
         future_wins = FUT,
         players = PLA,
         ownership = OWN,
         behavior = BEH)
colnames(nfl_fav_team) <- colnames(nfl_fav_team) %>% 
  tolower() %>% 
  str_replace_all(" ", "_") 
devtools::use_data(nfl_fav_team, overwrite = TRUE) 

# nfl_suspensions ------------------------------------------------------------------
nfl_suspensions <- read_csv("data-raw/nfl-suspensions/nfl-suspensions-data.csv") %>% 
  rename(description = `desc.`)
colnames(nfl_suspensions) <- colnames(nfl_suspensions) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(nfl_suspensions, overwrite = TRUE) 

# nfl_ticket_prices ----------------------------------------------------------------
nfltix_div_avgprice <- 
  read_csv("data-raw/nfl-ticket-prices/2014-average-ticket-price.csv") %>% 
  rename(avg_tix_price = `Avg TP, $`)
colnames(nfltix_div_avgprice) <- colnames(nfltix_div_avgprice) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")  
devtools::use_data(nfltix_div_avgprice, overwrite = TRUE) 
 
nfltix_jets_buy <- read_csv("data-raw/nfl-ticket-prices/jets-buyer.csv")
# Needs cleaning, multiple subtables

nfltix_usa_avg <- read_csv("data-raw/nfl-ticket-prices/national-average.csv") %>% 
  rename(avg_tix_price = `Avg TP, $`,
         team = Genre) %>% 
  mutate(team = str_replace_all(team, pattern = " Tickets", replacement = ""))
colnames(nfltix_usa_avg) <- colnames(nfltix_usa_avg) %>% 
  tolower() %>% 
  str_replace_all(" ", "_") 
devtools::use_data(nfltix_usa_avg, overwrite = TRUE)


# nfl_wide_receivers ---------------------------------------------------------------
nflwr_hist <- read_csv("data-raw/nfl-wide-receivers/advanced-historical.csv",
                        na = "NULL")
colnames(nflwr_hist) <- colnames(nfl_wr_hist) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(nflwr_hist, overwrite = TRUE) 

nflwr_aging_curve <- read_csv("data-raw/nfl-wide-receivers/try-per-game-aging-curve.csv")
colnames(nflwr_aging_curve) <- colnames(nflwr_aging_curve) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(nflwr_aging_curve, overwrite = TRUE) 

# nutrition_studies ----------------------------------------------------------------
nutrition_survey <- read_csv("data-raw/nutrition-studies/raw_anonymized_data.csv")
colnames(nutrition_survey) <- colnames(nutrition_survey) %>% 
  tolower() %>% 
  str_replace_all(" ", "_") 
# Needs to be flipped with survey respondent as OU

nutrition_pvalues <- read_csv("data-raw/nutrition-studies/p_values_analysis.csv")
colnames(nutrition_pvalues) <- colnames(nutrition_pvalues) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")   
devtools::use_data(nutrition_pvalues, overwrite = TRUE) 

# pew_religions --------------------------------------------------------------------
# A transition matrix of data is included here.


# police_deaths --------------------------------------------------------------------
police_deaths <- read_csv("data-raw/police-deaths/clean_data.csv") %>%
  # Removed extra variables
  select(person, cause_short, date:state) %>% 
  rename(cause_of_death = cause_short)
colnames(police_deaths) <- colnames(police_deaths) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")    
devtools::use_data(police_deaths, overwrite = TRUE) 

# police_killings ------------------------------------------------------------------
police_killings <- read_csv("data-raw/police-killings/police_killings.csv",
                            na = "Unknown")
colnames(police_killings) <- colnames(police_killings) %>% 
  tolower() %>% 
  str_replace_all(" ", "_")     
devtools::use_data(police_killings, overwrite = TRUE) 
