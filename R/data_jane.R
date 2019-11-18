#' A Better Way to Evaluate NBA Defense 
#'
#' The raw data behind the story
#' "A Better Way to Evaluate NBA Defense "
#' \url{https://fivethirtyeight.com/features/a-better-way-to-evaluate-nba-defense/}.
#'
#' @format A data frame with 3009 rows representing DRAYMOND ratings (Defensive Rating Accounting for Yielding Minimal Openness by Nearest Defender) for every player since the 2013-14 season with 4 variables:
#' \describe{
#'   \item{season}{The second year of the season; for example, 2018-2019 season would be listed as 2019}
#'   \item{player}{Name of the player}
#'   \item{posessions}{Number of possessions a player during the season}
#'   \item{DRAYMOND}{Defensive Rating Accounting for Yielding Minimal Openness by Nearest Defender}
#'    }
#' @source NBA
"nba_draymond"