#' Do Americans Support Impeaching Trump?
#' 
#' Raw data behind this story
#' "Do Americans Support Impeaching Trump?"
#' \url{https://projects.fivethirtyeight.com/impeachment-polls/}
#' 
#' @format A data frame with 388 rows of polling data and 24 variables:
#' \describe{
#'   \item{start}{Poll start date, the first date responses were collected}
#'   \item{end}{Poll end date, the last date responses were collected}
#'   \item{pollster}{entity/organization that created poll, collected and published data}
#'   \item{sponsor}{sponsor of pollster}
#'   \item{sample_size}{number of respondents for each}
#'   \item{pop}{categorical variable with 3 categories: a, rv, lv -- value unknown}
#'   \item{tracking}{true/false logical -- value unknown}
#'   \item{text}{poll question}
#'   \item{category}{category of poll question with 5 categories: impeach and remove, begin proceedings, begin inquiry, reasons, impeach}
#'   \item{include}{yes/no logical -- value unknown}
<<<<<<< HEAD
#'   \item{yes}{Percent of repsondents in sample who answered "Yes" to the poll question}
#'   \item{no}{Percent of respondents in sample  who answered "No" to the poll question}
#'   \item{unsure}{Percent of respondents in sample who did not answer "Yes" or "No" to the poll question}
#'   \item{rep_sample}{number of Republican respondents in sample}
#'   \item{rep_yes}{Percent of Republican respondents who answered "yes"}
#'   \item{rep_no}{Percent of Republican respondents who answered "no"}
#'   \item{dem_sample}{number of Democrat respondents in sample}
#'   \item{dem_yes}{Percent of Democrat respondents who answered "yes"}
#'   \item{dem_no}{Percent of Democrat respondents who answered "no"}
#'   \item{ind_sample}{number of Independent respondents in sample}
#'   \item{ind_yes}{Percent of Independent respondents who answered "yes"}
#'   \item{ind_no}{Percent of Independent respondents who answered "no"}
#'   \item{url}{URL links to poll websites}
#'   \item{notes}{any notes relating to polls in sample
=======
#'   \item{yes}{% of repsondents in sample who answered "Yes" to the poll question}
#'   \item{no}{% of respondents in sample  who answered "No" to the poll question}
#'   \item{unsure}{% of respondents in sample who did not answer "Yes" or "No" to the poll question}
#'   \item{rep_sample}{number of Republican respondents in sample}
#'   \item{rep_yes}{% of Republican respondents who answered "yes"}
#'   \item{rep_no}{% of Republican respondents who answered "no"}
#'   \item{dem_sample}{number of Democrat respondents in sample}
#'   \item{dem_yes}{% of Democrat respondents who answered "yes"}
#'   \item{dem_no}{% of Democrat respondents who answered "no"}
#'   \item{ind_sample}{number of Independent respondents in sample}
#'   \item{ind_yes}{% of Independent respondents who answered "yes"}
#'   \item{ind_no}{% of Independent respondents who answered "no"}
#'   \item{url}{URL links to poll websites}
#'   \item{notes}{any notes relating to polls in sample}
>>>>>>> 25e8defc63e3a707dcecaa074932ec91ea22f474
#'   }
#' @source data from \url{https://github.com/fivethirtyeight/data/tree/master/impeachment-polls}.
"impeachment_polls"
