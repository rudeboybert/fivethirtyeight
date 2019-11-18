#' NBA Raptor
#' 
#' The raw data behind the story 
#' "Introducing RAPTOR, Our New Metric For The Modern NBA"
#' \url{https://https://fivethirtyeight.com/features/introducing-raptor-our-new-metric-for-the-modern-nba}
#' 
#' @format A dataframe with 17483 rows representing each player broken out by season since the 1976 ABA-NBA merger, and 15 variables:
#' \describe{
#'  \item{player_name}{Player name}
#'  \item{player_id}{Basketball-Reference.com player ID}
#'  \item{season}{Season}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
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
#' }
"historical_RAPTOR_by_player"

#' "NBA Raptor"
#' 
#' The raw data behind the story 
#' "Introducing RAPTOR, Our New Metric For The Modern NBA"
#' \url{https://https://fivethirtyeight.com/features/introducing-raptor-our-new-metric-for-the-modern-nba}
#' 
#' @format A dataframe with 27371 rows representing each player broken out by team, season and season_type since the 1976 ABA-NBA merger, and 17 variables:
#' \describe{
#'  \item{player_name}{Player name}
#'  \item{player_id}{Basketball-Reference.com player ID}
#'  \item{season}{Season}
#'  \item{season_type}{Regular season (RS) or playoff (PO)}
#'  \item{team}{Basketball-Reference ID of team}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
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
#' }
"historical_RAPTOR_by_team"

#' NBA Raptor
#' 
#' The raw data behind the story 
#' "Introducing RAPTOR, Our New Metric For The Modern NBA]"
#' \url{https://https://fivethirtyeight.com/features/introducing-raptor-our-new-metric-for-the-modern-nba}
#' 
#' @format A dataframe with 3009 rows representing each player broken out by season since 2014, when NBA player-tracking data first became available, and 21 variables:
#' \describe{
#'  \item{player_name}{Player name}
#'  \item{player_id}{Basketball-Reference.com player ID}
#'  \item{season}{Season}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
#'  \item{raptor_box_offense}{Points above average per 100 possessions added by player on offense, based only on box score estimate}
#'  \item{raptor_box_defense}{Points above average per 100 possessions added by player on defense, based only on box score estimate}
#'  \item{raptor_box_total}{Points above average per 100 possessions added by player, based only on box score estimate}
#'  \item{raptor_onoff_offense}{Points above average per 100 possessions added by player on offense, based only on plus-minus data}
#'  \item{raptor_onoff_defense}{oints above average per 100 possessions added by player on defense, based only on plus-minus data}
#'  \item{raptor_onoff_total}{Points above average per 100 possessions added by player, based only on plus-minus data}
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
#' }
"modern_RAPTOR_by_player"

#' NBA Raptor
#' 
#' The raw data behind the story "
#' Introducing RAPTOR, Our New Metric For The Modern NBA"
#' \url{https://https://fivethirtyeight.com/features/introducing-raptor-our-new-metric-for-the-modern-nba}
#' 
#' @format A dataframe with 4684 rows representing each player broken out by team, season and season_type since 2014, when NBA player-tracking data first became available, and 23 variables:
#' \describe{
#'  \item{player_name}{Player name}
#'  \item{player_id}{Basketball-Reference.com player ID}
#'  \item{season}{Season}
#'  \item{season_type}{Regular season (RS) or playoff (PO)}
#'  \item{team}{Basketball-Reference ID of team}
#'  \item{poss}{Possessions played}
#'  \item{mp}{Minutes played}
#'  \item{raptor_box_offense}{Points above average per 100 possessions added by player on offense, based only on box score estimate}
#'  \item{raptor_box_defense}{Points above average per 100 possessions added by player on defense, based only on box score estimate}
#'  \item{raptor_box_total}{Points above average per 100 possessions added by player, based only on box score estimate}
#'  \item{raptor_onoff_offense}{Points above average per 100 possessions added by player on offense, based only on plus-minus data}
#'  \item{raptor_onoff_defense}{oints above average per 100 possessions added by player on defense, based only on plus-minus data}
#'  \item{raptor_onoff_total}{Points above average per 100 possessions added by player, based only on plus-minus data}
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
#' }
"modern_RAPTOR_by_team"
