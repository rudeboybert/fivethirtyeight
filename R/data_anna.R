#' We Watched 906 Foul Balls To Find Out Where The Most Dangerous Ones
#'
#' The raw data behind the story
#' "We Watched 906 Foul Balls To Find Out Where The Most Dangerous Ones"
#' \url{https://fivethirtyeight.com/features/we-watched-906-foul-balls-to-find-out-where-the-most-dangerous-ones-land/}.
#'
#' @format A data frame with 906 rows representing foul balls and 7 variables:
#' \describe{
#'   \item{matchup}{the two teams that played}
#'   \item{game_date}{date of the most foul heavy day at each stadium}
#'   \item{type_of_hit}{fly, grounder, line drive, popup, batter hits self}
#'   \item{exit_velocty}{recorded velocity of each hit}
#'   \item{predicted zone}{zone predicted the foul ball would land in guaging angles}
#'   \item{camera zone}{actual zone the ball landed it confirmed by camera angles}
#'   \item{used_zone}{zone used for analysis}
#' }
#' @source Baseball Savant
#' 
#' 
"foul_balls"

