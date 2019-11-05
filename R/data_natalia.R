#' @name media_mentions
#' @rdname media_mentions
#' 
#' @title 2020 Presidential Candidates Media Mentions
#' 
#' @description The raw data behind the story
#' "Beto O'Rourke Ignored Cable News - And It Ignored Him"
#' \url{https://fivethirtyeight.com/features/beto-orourke-ignored-cable-news-and-it-ignored-him/}
#' 
NULL

#' @rdname media_mentions
#'
#' @format 2 dataframes about 2020 presidential candidate media mentions
#' @section media_mentions_cable:
#' A data frame with 972 rows representing weeks of cable coverage and 7 variables:
#' \describe{
#'   \item{date}{start date for the week of coverage}
#'   \item{name}{candidate's name}
#'   \item{matched_clips}{number of 15-second clips in that week that mention the specified candidate}
#'   \item{all_candidate_clips}{number of 15-second clips in that week that mention any candidates}
#'   \item{total_clips}{total number of 15-second clips that week across the three networks}
#'   \item{pct_of_all_candidate_clips}{percentage of clips in which that specific candidate is mentioned out of all clips mentioning any candidate for that week (matched_clips / all_candidate_clips)}
#'   \item{query}{query used for the GDELT Television API}
#' }
#' @export
#' @source The GDELT Television API \url{https://blog.gdeltproject.org/gdelt-2-0-television-api-debuts/}, which processes the data from the TV News Archive \url{https://archive.org/details/tv}.
#' @export
"media_mentions_cable"

#' @rdname media_mentions
#'
#' @format
#' @section media_mentions_online:  
#' A data frame with 954 rows representing weeks and 6 variables:
#' \describe{
#'   \item{date}{start date for the week of coverage}
#'   \item{name}{candidate's name}
#'   \item{matched_stories}{number of stories in that week that mention the specified candidate}
#'   \item{all_candidate_stories}{number of stories in that week that mention any candidate}
#'   \item{pct_of_all_candidate_stories}{percentage of stories in which that specific candidate is mentioned out of all stories mentioning any candidate for that week (matched_stories / all_candidate_stories)}
#'   \item{query}{query for Media Cloud}
#'}
#' @export
#' @source Two collections in the Media Cloud \url{https://mediacloud.org/} database U.S. Top Online News \url{https://sources.mediacloud.org/#/collections/58722749} and U.S. Top Digital Native News \url{https://sources.mediacloud.org/#/collections/57078150}
#' @export
"media_mentions_online"

