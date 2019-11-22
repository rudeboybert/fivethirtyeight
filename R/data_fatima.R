#' Do Americans Support Impeaching Trump?
#' 
#' Raw data behind this story
#' "Do Americans Support Impeaching Trump?"
#' \url{https://projects.fivethirtyeight.com/impeachment-polls/}
#' 
#' @format A data frame with 388 rows representing various polling data and 24 variables:
#' \describe{
#' \item{Start}{Poll start date, the first date responses were collected}
#' \item{End}{Poll end date, the last date responses collected}
#' \item{Pollster}{entity/organization that create poll and collected poll data}
#' \item{Sponsor}{sponsor of poll}
#' \item{SampleSize}{number of responders in each of the polls included}
#' \item{Pop}{unknown value, factor with 3 values -- a, rv, lv}
#' \item{tracking}{unknown value, logical true false}
#' \item{Text}{poll question}
#' \item{Category}{poll question category, 5 known values -- impeach_and_remove, reasons, impeach, begin_proceedings, begin_inquiry}
#' \item{Include?}{unknown value, logical yes no}
#' \item{Yes}{% of repsondents in sample who answered "Yes" to the poll question}
#' \item{No}{% of respondents in sample  who answered "No" to the poll question}
#' \item{Unsure}{% of respondents in sample who did not answer "Yes" or "No" to the poll question, i.e. "not sure", "unsure"}
#' \item{Rep Sample}{number of Republican respondents in sample}
#' \item{Rep Yes}{percentage of Republican respondents who answered "yes" to poll question}
#' \item{Rep No}{percentage of Republican respondents who answered "no" to poll question}
#' \item{Dem Sample}{number of Democrat respondents in sample}
#' \item{Dem Yes}{percentage of Democrat respondents who answered "yes" to poll question}
#' \item{Dem No}{percentage of Democrat respondents who answered "no" to poll question}
#' \item{Ind Sample}{number of Independent respondents in sample}
#' \item{Ind Yes}{percentage of Independent respondents who answered "yes" to poll question}
#' \item{Ind No}{percentage of Independent respondents who answered "no" to poll question}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/impeachment-polls}
"impeachment_polls"