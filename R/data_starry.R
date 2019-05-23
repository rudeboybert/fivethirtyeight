#' Should Travelers Avoid Flying Airlines That Have Had Crashes in the Past?
#'
#' The raw data behind the story
#' "Two Years In, Turnover In Trump’s Cabinet Is Still Historically High"
#' \url{https://fivethirtyeight.com/features/two-years-in-turnover-in-trumps-cabinet-is-still-historically-high/}.
#'
#' @format A data frame with X rows representing airlines and X variables:
#' \describe{
#'   \item{airline}{airline}
#'   \item{incl_reg_subsidiaries}{indicates that regional subsidiaries are included}
#'   \item{avail_seat_km_per_week}{available seat kilometers flown every week}
#'   \item{incidents_85_99}{Total number of incidents, 1985-1999}
#'   \item{fatal_accidents_85_99}{Total number of fatal accidents, 1985-1999}
#'   \item{fatalities_85_99}{Total number of fatalities, 1985-1999}
#'   \item{incidents_00_14}{Total number of incidents, 2000-2014}
#'   \item{fatal_accidents_00_14}{Total number of fatal accidents, 2000-2014}
#'   \item{fatalities_00_14}{Total number of fatalities, 2000-2014}
#' }
#' @source Aviation Safety Network \url{http://aviation-safety.net}.
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