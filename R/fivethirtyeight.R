#' fivethirtyeight: Data and Code Behind the Stories and Interactives at 'FiveThirtyEight'
#'
#' An R package that provides access to the code and data sets
#' published by FiveThirtyEight \url{https://github.com/fivethirtyeight/data}. Note
#' that while we received guidance from editors at 538, this package is not
#' officially published by 538. Contribute to this package at
#' \url{https://github.com/rudeboybert/fivethirtyeight}.
#'
#' @docType package
#' @name fivethirtyeight
#' @examples
#' # Example usage:
#' library(fivethirtyeight)
#' head(bechdel)
#'
#' # All information about any data set can be found in the help file:
#' ?bechdel
#'
#' # To view a list of all data sets:
#' data(package = "fivethirtyeight")
#'
#' # To view a detailed list of all data sets:
#' vignette("fivethirtyeight", package = "fivethirtyeight")
#'
#' # Some data sets include vignettes with an example analysis:
#' vignette("bechdel", package = "fivethirtyeight")
#'
#' # To browse all vignettes:
#' browseVignettes(package = "fivethirtyeight")
NULL
