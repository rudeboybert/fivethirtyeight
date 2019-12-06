#' NBA Elo Ratings Through History
#' 
#' The data behind several stories, including
#' "The Complete History of the NBA"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nba}
#' 
#' @format A data frame with 69636 rows representing every game in the NBA, and 24 variables:
#' \describe{
#'   \item{date}{Date}
#'   \item{season}{the season in which the game was played}
#'   \item{neutral}{True if the game was played on neutral territory, False if not}
#'   \item{playoff}{True if the game was played in a playoff, False if not}
#'   \item{team1}{name of first team}
#'   \item{team2}{name of second team}
#'   \item{elo1_pre}{Team 1 Elo rating before game}
#'   \item{elo2_pre}{Team 2 Elo rating before game}
#'   \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'   \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'   \item{elo1_post}{Team 1 Elo rating after the game}
#'   \item{elo2_post}{Team 2 Elo rating after the game}
#'   \item{score1}{the score of team 1}
#'   \item{score2}{the score of team 2}
#'   }
#'   
"nba_elo"

#' NBA Elo Ratings for this season
#' 
#' The data behind the Elo and RAPTOR ratings for NBA teams used in various stories like this one: 
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nba/#raptors}
#' 
#'   @format A data frame with 1230 rows representing game played during the most current season of the NBA, and 24 variables:
#' \describe{
#'   \item{date}{Date}
#'   \item{season}{the season in which the game was played}
#'   \item{neutral}{True if the game was played on neutral territory, False if not}
#'   \item{playoff}{True if the game was played in a playoff, False if not}
#'   \item{team1}{name of first team}
#'   \item{team2}{name of second team}
#'   \item{elo1_pre}{Team 1 Elo rating before game}
#'   \item{elo2_pre}{Team 2 Elo rating before game}
#'   \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'   \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'   \item{elo1_post}{Team 1 Elo rating after the game}
#'   \item{elo2_post}{Team 2 Elo rating after the game}
#'   \item{score1}{the score of team 1}
#'   \item{score2}{the score of team 2}
#'   }
#'   
"nba_elo_latest"
