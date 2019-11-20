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
#' \item{Pollster}{entity/organization that created poll and collected poll data}
#' \item{Sponsor}{sponsor of pollster}
#' \item{SampleSize}{number of responders in each of the polls included}
#' \item{Pop}{categorical var taking on 3 values: a, rv, lv}
#' \item{tracking}{true/false logical, not sure what this is measuring though}
#' \item{Text}{Poll Question}
#' \item{Category}{Poll Question Category}
#' \item{Include?}{yes/no logical, not sure what this is measuring though}
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