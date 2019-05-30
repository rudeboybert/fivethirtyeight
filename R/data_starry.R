#' Two Years In, Turnover In Trump’s Cabinet Is Still Historically High
#'
#' The raw data behind the story
#' "Two Years In, Turnover In Trump’s Cabinet Is Still Historically High"
#' \url{https://fivethirtyeight.com/features/two-years-in-turnover-in-trumps-cabinet-is-still-historically-high/}.
#'
#' @format A data frame with 312 rows representing cabinet member histories and 7 variables:
#' \describe{
#'   \item{president}{Last name of sitting President}
#'   \item{position}{Cabinet Position}
#'   \item{appointee}{Appointee's full name}
#'   \item{start}{Date the appointee was sworn in}
#'   \item{end}{Date the appointee left office}
#'   \item{length}{Length of Tenure in days}
#'   \item{days}{Days into admininstration that the appointee left office}
#' }
#' @source Federal Government Website, News Reports
"cabinet_turnover"

#' How Much Trouble Is Ted Cruz Really In?
#'
#' The raw data behind the story
#' "How Much Trouble Is Ted Cruz Really In?"
#' \url{https://fivethirtyeight.com/features/how-much-trouble-is-ted-cruz-really-in/}.
#'
#' @format A data frame with 594 rows representing "Senate polls that were conducted in August of an election year", and 11 variables (We weeded out any polls of races that didn’t have at least one Democrat and one Republican facing off.):
#' \describe{
#'   \item{cycle}{the election year}
#'   \item{state}{the state of the poll}
#'   \item{senate_class}{the class of the senate}
#'   \item{start_date}{the start date of the poll}
#'   \item{end_date}{the end odate of the poll}
#'   \item{DEM_poll}{x}
#'   \item{REP_poll}{x}
#'   \item{DEM_result}{x}
#'   \item{REP_result}{x}
#'   \item{error}{x}
#'   \item{absolute_error}{x}
#'   }
#' @source Emerson College’s poll of registered voters \url{https://www.emerson.edu/sites/default/files/Files/Academics/ecp-tx-aug2018-pr.pdf}
"august_senate_polls"

#' The 2020 Endorsement Primary - Which Democratic candidates are receiving the most support from prominent members of their party?
#'
#' The raw data behind the story
#' "The 2020 Endorsement Primary - Which Democratic candidates are receiving the most support from prominent members of their party?"
#' \url{https://projects.fivethirtyeight.com/2020-endorsements/democratic-primary/}.
#'
#' @format A data frame with 1000 rows representing X and 13 variables: 
#' \describe{
#'   \item{X}{Y}
#'   }
#' @source 
"endorsements_2020"

#' How FiveThirtyEight's 2018 Midterm Forecasts Did
#' 
#' The raw data behind the story 
#' 'How FiveThirtyEight's 2018 Midterm Forecasts Did'
#' \url {https://fivethirtyeight.com/features/how-fivethirtyeights-2018-midterm-forecasts-did/}
#' 
#' @format A dataframe with 1518 rows and 11 variables:
#' \describe{
#'   \item{X}{Y}
#'   }
#' @source 
"forecast_results_2018"
