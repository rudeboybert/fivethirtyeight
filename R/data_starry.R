#' Two Years In, Turnover In Trump’s Cabinet Is Still Historically High
#'
#' The raw data behind the story
#' "Two Years In, Turnover In Trump’s Cabinet Is Still Historically High"
#' \url{https://fivethirtyeight.com/features/two-years-in-turnover-in-trumps-cabinet-is-still-historically-high/}.
#'
#' @format A data frame with 312 rows representing airlines and 7 variables:
#' \describe{
#'   \item{president}{Last name of sitting President}
#'   \item{position}{Cabinet Position}
#'   \item{appointee}{Appointee's full name}
#'   \item{start}{Date the appointee was sworn in}
#'   \item{end}{Date the appointee left office}
#'   \item{length}{Length of Tenure in days}
#'   \item{days}{Days into admininstration that the appointee left office}
#' }
#' @source \url{https://github.com/fivethirtyeight/data/tree/master/cabinet-turnover}.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' airline_safety_tidy <- airline_safety %>%
#'   gather(type, count, -c(airline, incl_reg_subsidiaries, avail_seat_km_per_week)) %>%
#'   mutate(
#'     period = str_sub(type, start=-5),
#'     period = str_replace_all(period, "_", "-"),
#'     type = str_sub(type, end=-7)
#'   )
"cabinet_turnover"