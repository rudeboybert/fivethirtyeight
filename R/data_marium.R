#' @name state_of_the_state
#' @rdname state_of_the_state
#' 
#' @title What America’s Governors Are Talking About
#' 
#' @description The raw data behind the story
#' "What America’s Governors Are Talking About"
#' \url{https://fivethirtyeight.com/features/what-americas-governors-are-talking-about/}
#' 
NULL

#' @rdname state_of_the_state
#' 
#' @format 2 data frames about the 50 U.S Governers' Speeches
#' 
#' @section state_index:
#' A data frame with 50 rows representing the 50 U.S. states and 5 variables:
#' \describe{
#'   \item{state}{the state}
#'   \item{governer}{the name of the state's governer}
#'   \item{party}{the party of the state's governer}
#'   \item{filename}{the filename of the speech in the speeches folder}
#'   \item{url}{a link to an official/media source for the speech}
#'   }
"state_index"

#' @rdname state_of_the_state
#' @section state_words:
#' A data frame with 2,223 rows representing phrases and 9 variables:
#' \describe{
#'   \item{phrase}{one-, two-, and three-word phrases spoken repeatedly}
#'   \item{category}{thematic categories for the phrases}
#'   \item{d_speeches}{number of Democratic speeches containing the phrase}
#'   \item{r_speeches}{number of Republican speeches containing the phrase}
#'   \item{total}{total number of speeches containing the phrase}
#'   \item{percent_of_d_speeches}{percent of the 23 Democratic speeches containing the phrase}
#'   \item{percent_of_r_speeches}{percent of the 27 Republican speeches containing the phrase}
#'   \item{chi2}{the chi-square test statistic for statistical significance}
#'   \item{pval}{p-value for chi^2 test}
#'   }
#' @source The chi-square test statistic \url{https://scikit-learn.org/stable/modules/generated/sklearn.feature_selection.chi2.html#sklearn.feature_selection.chi2}
"state_words"
