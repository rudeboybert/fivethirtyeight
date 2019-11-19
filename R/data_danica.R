#' @name nba_raptor
#' @rdname nba_raptor
#' 
#' @title NBA Raptor
#' 
#' @description The raw data behind the story 
#' "Introducing RAPTOR, Our New Metric For The Modern NBA"
#' \url{https://fivethirtyeight.com/features/introducing-raptor-our-new-metric-for-the-modern-nba}.
#' 
NULL


#' @rdname nba_raptor
#' 
#' @format 2 dataframes about Raptor players and teams by era
#' 
#' @section raptor_by_player:
#' A dataframe with 20492 rows representing every player by era and 22 variables:
#' \describe{
#'  \item{player_id}{player ID}{\url{Basketball-Reference.com}}
#'  \item{season}{Season}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
#'  \item{raptor_box_offense}{Values are missing when era is historical}
#'  \item{raptor_box_defense}{Values are missing when era is historical}
#'  \item{raptor_box_total}{Values are missing when era is historical}
#'  \item{raptor_onoff_offense}{Values are missing when era is historical}
#'  \item{raptor_onoff_defense}{Values are missing when era is historical}
#'  \item{raptor_onoff_total}{{Values are missing when era is historical}}
#'  \item{raptor_offense}{Points above average per 100 possessions added by player on offense, using both box and on-off components}
#'  \item{raptor_defense}{Points above average per 100 possessions added by player on defense, using both box and on-off components}
#'  \item{raptor_total}{Points above average per 100 possessions added by player on both offense and defense, using both box and on-off components}
#'  \item{war_total}{Wins Above Replacement between regular season and playoffs}
#'  \item{war_reg_season}{Wins Above Replacement for regular season}
#'  \item{war_playoffs}{Wins Above Replacement for playoffs}
#'  \item{predator_offense}{Predictive points above average per 100 possessions added by player on offense}
#'  \item{predator_defense}{Predictive points above average per 100 possessions added by player on defense}
#'  \item{predator_total}{Predictive points above average per 100 possessions added by player on both offense and defense}
#'  \item{pace_impact}{Player impact on team possessions per 48 minutes}
#'  \item{era}{Historical (since the 1976 ABA-NBA merger) or Modern (since 2014)}
#' }
"raptor_by_player"


#' @rdname nba_raptor
#' @section raptor_by_team:
#' A dataframe with 32055 rows representing every player by era and 24 variables:
#' \describe{
#'  \item{player_name}{Player name}
#'  \item{player_id}{player ID}{\url{Basketball-Reference.com}}
#'  \item{season}{Season}
#'  \item{season_type}{Regular season (RS) or playoff (PO)}
#'  \item{team}{Basketball-Reference ID of team}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
#'  \item{raptor_box_offense}{Values are missing when era is historical}
#'  \item{raptor_box_defense}{Values are missing when era is historical}
#'  \item{raptor_box_total}{Values are missing when era is historical}
#'  \item{raptor_onoff_offense}{Values are missing when era is historical}
#'  \item{raptor_onoff_defense}{Values are missing when era is historical}
#'  \item{raptor_onoff_total}{{Values are missing when era is historical}}
#'  \item{raptor_offense}{Points above average per 100 possessions added by player on offense, using both box and on-off components}
#'  \item{raptor_defense}{Points above average per 100 possessions added by player on defense, using both box and on-off components}
#'  \item{raptor_total}{Points above average per 100 possessions added by player on both offense and defense, using both box and on-off components}
#'  \item{war_total}{Wins Above Replacement between regular season and playoffs}
#'  \item{war_reg_season}{Wins Above Replacement for regular season}
#'  \item{war_playoffs}{Wins Above Replacement for playoffs}
#'  \item{predator_offense}{Predictive points above average per 100 possessions added by player on offense}
#'  \item{predator_defense}{Predictive points above average per 100 possessions added by player on defense}
#'  \item{predator_total}{Predictive points above average per 100 possessions added by player on both offense and defense}
#'  \item{pace_impact}{Player impact on team possessions per 48 minutes}
#'  \item{era}{Historical (since the 1976 ABA-NBA merger) or Modern (since 2014)}
#' }
"raptor_by_team"

