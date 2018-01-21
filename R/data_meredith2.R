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
#'   \item{oppose}{The number of negative reponses to the question at the pollster.}
#'   \item{url}{The website associated with the polling question.}
#'   \item{text}{The polling question asked at the pollster.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/ahca-polls/README.md}
#'  @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' ahca_polls_tidy <- ahca_polls %>%
#'   gather(opinion, count, -c(start, end, pollster, text, url))
"ahca_polls"