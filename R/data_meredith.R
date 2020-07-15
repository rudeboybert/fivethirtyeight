#' American Health Care Act Polls
#'
#' The raw data behind the story
#' "Why The GOP Is So Hell-Bent On Passing An Unpopular Health Care Bill"
#' \url{https://fivethirtyeight.com/features/why-the-gop-is-so-hell-bent-on-passing-an-unpopular-health-care-bill}.
#'
#' @format A data frame with 15 rows representing polls and 7 variables:
#' \describe{
#'   \item{start}{Start date of the poll.}
#'   \item{end}{End date of the poll.}
#'   \item{pollster}{The entity that conducts and collects information from the poll.}
#'   \item{favor}{The number of affirmative responses to the question at the pollster.}
#'   \item{oppose}{The number of negative responses to the question at the pollster.}
#'   \item{url}{The website associated with the polling question.}
#'   \item{text}{The polling question asked at the pollster.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/ahca-polls/README.md}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' ahca_polls_tidy <- ahca_polls %>%
#'   pivot_longer(-c(start, end, pollster, text, url), names_to = "opinion", values_to = "count")
"ahca_polls"



#' Bachelorette / Bachelor
#'
#' The raw data behind the stories:
#' "How To Spot A Front-Runner On The 'Bachelor' Or 'Bachelorette'"
#' \url{https://fivethirtyeight.com/features/the-bachelorette/}, "Rachel's Season Is Fitting Neatly Into 'Bachelorette' History"
#' \url{https://fivethirtyeight.com/features/rachels-season-is-fitting-neatly-into-bachelorette-history/}, and "Rachel Lindsay's 'Bachelorette' Season, In Three Charts"
#' \url{https://fivethirtyeight.com/features/rachel-lindsays-bachelorette-season-in-three-charts/}.
#'
#' @format A data frame with 887 rows representing the Bachelorette and Bachelor contestants and 23 variables:
#' \describe{
#'   \item{show}{Bachelor or Bachelorette.}
#'   \item{season}{Which season?}
#'   \item{contestant}{An identifier for the contestant in a given season.}
#'   \item{elimination_1}{Who was eliminated in week 1.}
#'   \item{elimination_2}{Who was eliminated in week 2.}
#'   \item{elimination_3}{Who was eliminated in week 3.}
#'   \item{elimination_4}{Who was eliminated in week 4.}
#'   \item{elimination_5}{Who was eliminated in week 5.}
#'   \item{elimination_6}{Who was eliminated in week 6.}
#'   \item{elimination_7}{Who was eliminated in week 7.}
#'   \item{elimination_8}{Who was eliminated in week 8.}
#'   \item{elimination_9}{Who was eliminated in week 9.}
#'   \item{elimination_10}{Who was eliminated in week 10.}
#'   \item{dates_1}{Who was on which date in week 1.}
#'   \item{dates_2}{Who was on which date in week 2.}
#'   \item{dates_3}{Who was on which date in week 3.}
#'   \item{dates_4}{Who was on which date in week 4.}
#'   \item{dates_5}{Who was on which date in week 5.}
#'   \item{dates_6}{Who was on which date in week 6.}
#'   \item{dates_7}{Who was on which date in week 7.}
#'   \item{dates_8}{Who was on which date in week 8.}
#'   \item{dates_9}{Who was on which date in week 9.}
#'   \item{dates_10}{Who was on which date in week 10.}
#' }
#' @details Eliminates connote either an elimination (starts with "E") or a rose
#' (starts with "R"). Eliminations supersede roses. "E" connotes a standard
#' elimination, typically at a rose ceremony. "EQ" means the contestant quits.
#' "EF" means the contestant was fired by production. "ED" connotes a date
#' elimination. "EU" connotes an unscheduled elimination, one that takes place
#' at a time outside of a date or rose ceremony. "R" means the contestant
#' received a rose. "R1" means the contestant got a first impression rose.
#' "D1" means a one-on-one date, "D2" means a 2-on-1, "D3" means a 3-on-1
#' group date, and so on. Weeks of the show are eliminated by rose
#' ceremonies, and may not line up exactly with episodes.
#' @source \url{https://bachelor-nation.fandom.com/wiki/Bachelor_Nation_Wiki}
#' and then missing seasons were filled in by ABC and FiveThirtyEight staffers.
"bachelorette"



#' Candy Power Ranking
#'
#' The raw data behind the story "The Ultimate Halloween Candy Power Ranking"
#' \url{https://fivethirtyeight.com/features/the-ultimate-halloween-candy-power-ranking/}.
#'
#' @format A data frame with 85 rows representing Halloween candy and 13 variables:
#' \describe{
#'   \item{competitorname}{The name of the Halloween candy.}
#'   \item{chocolate}{Does it contain chocolate?}
#'   \item{fruity}{Is it fruit flavored?}
#'   \item{caramel}{Is there caramel in the candy?}
#'   \item{peanutyalmondy}{Does it contain peanuts, peanut butter or almonds?}
#'   \item{nougat}{Does it contain nougat?}
#'   \item{crispedricewafer}{Does it contain crisped rice, wafers, or a cookie component?}
#'   \item{hard}{Is it a hard candy?}
#'   \item{bar}{Is it a candy bar?}
#'   \item{pluribus}{Is it one of many candies in a bag or box?}
#'   \item{sugarpercent}{The percentile of sugar it falls under within the data set.}
#'   \item{pricepercent}{The unit price percentile compared to the rest of the set.}
#'   \item{winpercent}{The overall win percentage according to 269,000 matchups.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/candy-power-ranking}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' candy_rankings_tidy <- candy_rankings %>%
#'   pivot_longer(-c(competitorname, sugarpercent, pricepercent, winpercent), 
#'      names_to = "characteristics", values_to = "present") %>%
#'   mutate(present = as.logical(present)) %>%
#'   arrange(competitorname)
"candy_rankings"



#' Chess Transfers
#'
#' The raw data behind the story "American Chess Is Great Again"
#' \url{https://fivethirtyeight.com/features/american-chess-is-great-again/}.
#'
#' @format A data frame with 932 rows representing international player transfers and 5 variables:
#' \describe{
#'   \item{url}{The corresponding website on the World Chess Federation page which details the transfers of a given year.}
#'   \item{id}{An numeric identifier for the chess player who transferred.}
#'   \item{federation}{The current national federation of the chess player}
#'   \item{form_fed}{The national federation from which the chess player has transferred.}
#'   \item{transfer_date}{The date at which the transfer took place.}
#' }
#' @source World Chess Federation
"chess_transfers"



#' Congress Generic Ballot Polls
#'
#' The raw data behind the story
#' "Are Democrats Winning The Race For Congress?"
#' \url{https://projects.fivethirtyeight.com/congress-generic-ballot-polls/}.
#'
#' @format A data frame with 934 rows representing polls and 21 variables:
#' \describe{
#'   \item{subgroup}{No description provided.}
#'   \item{modeldate}{No description provided.}
#'   \item{startdate}{Start date of the poll.}
#'   \item{enddate}{End date of the poll.}
#'   \item{pollster}{The organization that conducted the poll (rather than the organization that paid for or sponsored it)}
#'   \item{grade}{No description provided.}
#'   \item{samplesize}{No description provided.}
#'   \item{population}{A = ALL ADULTS, RV = REGISTERED VOTERS, LV = LIKELY VOTERS, V = VOTERS}
#'   \item{weight}{No description provided.}
#'   \item{influence}{No description provided.}
#'   \item{dem}{No description provided.}
#'   \item{rep}{No description provided.}
#'   \item{adjusted_dem}{No description provided.}
#'   \item{adjusted_rep}{No description provided.}
#'   \item{multiversions}{No description provided.}
#'   \item{tracking}{No description provided.}
#'   \item{url}{No description provided.}
#'   \item{poll_id}{No description provided.}
#'   \item{question_id}{No description provided.}
#'   \item{createddate}{No description provided.}
#'   \item{timestamp}{No description provided.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/congress-generic-ballot/README.md}
#' @seealso \code{\link{generic_topline}}
"generic_polllist"



#' Congress Generic Ballot Polls
#'
#' The raw data behind the story
#' "Are Democrats Winning The Race For Congress?"
#' \url{https://projects.fivethirtyeight.com/congress-generic-ballot-polls/}.
#'
#' @format A data frame with 751 rows representing polls and 9 variables:
#' \describe{
#'   \item{subgroup}{No description provided.}
#'   \item{modeldate}{No description provided.}
#'   \item{dem_estimate}{No description provided.}
#'   \item{dem_hi}{No description provided.}
#'   \item{dem_lo}{No description provided.}
#'   \item{rep_estimate}{No description provided.}
#'   \item{rep_hi}{No description provided.}
#'   \item{rep_lo}{No description provided.}
#'   \item{timestamp}{No description provided.}
#'
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/congress-generic-ballot/README.md}
#' @seealso \code{\link{generic_polllist}}
"generic_topline"



#' Current SPI ratings and rankings for men's club teams
#'
#' The raw data behind the stories "Club Soccer Predictions"
#' \url{https://projects.fivethirtyeight.com/soccer-predictions/} and
#' "Global Club Soccer Rankings"
#' \url{https://projects.fivethirtyeight.com/global-club-soccer-rankings/}.
#'
#' @format A data frame with 453 rows representing soccer rankings and 7 variables:
#' \describe{
#'   \item{name}{The name of the soccer club.}
#'   \item{league}{The name of the league to which the club belongs.}
#'   \item{rank}{A club's current global ranking.}
#'   \item{prev_rank}{A club's previous global ranking}
#'   \item{off}{Offensive rating for a given team (the higher the value the stronger the team's offense).}
#'   \item{def}{Defensive rating for a given team (the lower the value the stronger the team's defense).}
#'   \item{spi}{A club's SPI score.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/soccer-spi/README.md}
#' @seealso \code{\link[fivethirtyeightdata]{spi_matches}}
"spi_global_rankings"



