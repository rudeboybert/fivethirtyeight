#' The Complete History Of The NBA
#' 2017-18 NBA Predictions
#'
#' The raw data behind the story
#' "The Complete History Of The NBA"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nba/}
#' And our "2017-18 NBA Predictions"
#' \url{https://projects.fivethirtyeight.com/2018-nba-predictions/}
#'
#' @format A data frame with 67,012 rows representing games and 20 variables:
#' \describe{
#'  \item{date}{Date}
#'  \item{season}{Season year, 1947-2018}
#'  \item{neutral}{TRUE if the game was played on neutral territory, FALSE if not}
#'  \item{playoff}{TRUE if the game was a playoff game, FALSE if not}
#'  \item{team1}{The name of one participating team}
#'  \item{team2}{The name of the other participating team}
#'  \item{elo1_pre}{Team 1's Elo rating before the game}
#'  \item{elo2_pre}{Team 2's Elo rating before the game}
#'  \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'  \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'  \item{elo1_post}{Team 1's Elo rating after the game}
#'  \item{elo2_post}{Team 2's Elo rating after the game}
#'  \item{carmelo1_pre}{Team 1's CARMELO rating before the game}
#'  \item{carmelo2_pre}{Team 2's CARMELO rating before the game}
#'  \item{carmelo1_post}{Team 1's CARMELO rating after the game}
#'  \item{carmelo2_post}{Team 2's CARMELO rating after the game}
#'  \item{carmelo_prob1}{Team 1's probability winning based on CARMELO rating}
#'  \item{carmelo_prob2}{Team 2's probability of winning based on CARMELO rating}
#'  \item{score1}{Points scored by Team 1}
#'  \item{score2}{Points scored by Team 2}
#' }
#' @source See \url{https://projects.fivethirtyeight.com/nba-model/nba_elo.csv}
"nba_carmelo"



#' The Complete History Of The NFL
#' 2017 NFL Predictions
#'
#' The raw data behind the story
#' "The Complete History of the NFL"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nfl/}
#' And our "2017 NFL Predictions"
#' \url{https://projects.fivethirtyeight.com/2017-nfl-predictions/}
#'
#' @format a data frame with 16,007 rows representing games and 14 variables:
#' \describe{
#'  \item{date}{Date}
#'  \item{season}{Season year, 1920-2018}
#'  \item{neutral}{TRUE if the game was played on neutral territory, FALSE if not}
#'  \item{playoff}{TRUE if the game was a playoff game, FALSE if not}
#'  \item{team1}{The name of one participating team}
#'  \item{team2}{The name of the other participating team}
#'  \item{elo1_pre}{Team 1's Elo rating before the game}
#'  \item{elo2_pre}{Team 2's Elo rating before the game}
#'  \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'  \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'  \item{elo1_post}{Team 1's Elo rating after the game}
#'  \item{elo2_post}{Team 2's Elo rating after the game}
#'  \item{score1}{Points scored by Team 1}
#'  \item{score2}{Points scored by Team 2}
#' }
#' @source See \url{https://projects.fivethirtyeight.com/nfl-api/nfl_elo.csv}
"nfl_elo"



#' How Every NFL Team’s Fans Lean Politically
#'
#' The raw data behind the story
#' "How Every NFL Team’s Fans Lean Politically"
#' \url{https://fivethirtyeight.com/features/how-every-nfl-teams-fans-lean-politically}
#'
#' Google Data
#' @format a data frame with 207 rows representing designated market areas and 9 variables:
#' \describe{
#' \item{dma}{Designated Market Area}
#' \item{nfl}{The percentage of search traffic in the media market region related to the NFL over the past 5 years}
#' \item{nba}{The percentage of search traffic in the region related to the NBA over the past 5 years}
#' \item{mlb}{The percentage of search traffic in the region related to the MLB over the past 5 years}
#' \item{nascar}{The percentage of search traffic in the region related to NASCAR over the past 5 years}
#' \item{cbb}{The percentage of search traffic in the region related to the CBB over the past 5 years}
#' \item{cfb}{The percentage of search traffic in the region related to the CFB over the past 5 years}
#' \item{trump_2016_vote}{The percentage of voters in the region who voted for Trump in the 2016 Presidential Election}
#' }
#' @source Google Trends \url{https://g.co/trends/5P8aa}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' nfl_fandom_google_tidy <- gather(nfl_fandom_google, sport, search_traffic, 2:8)
#' @seealso \code{\link{nfl_fandom_surveymonkey}}
"nfl_fandom_google"



#' Surveymonkey Data:
#' @format a data frame with 33 rows representing teams and 25 variables:
#' \describe{
#' \item{team}{NFL team}
#' \item{total_respondents}{Total number of poll respondents who ranked the given team in their top 3 favorites}
#' \item{asian_dem}{Number of asian, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{black_dem}{Number of black, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{hispanic_dem}{Number of hispanic, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{other_dem}{Number of democrat poll respondents who identified their race as "other" (not asian, black, hispanic, or white) and ranked the given team in their top 3 favorites}
#' \item{white_dem}{Number of white, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{total_dem}{Total number of democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{asian_ind}{Number of asian, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{black_ind}{Number of black, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{hispanic_ind}{Number of hispanic, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{other_ind}{Number of independent poll respondents who identified their race as "other" (not asian, black, hispanic, or white) and ranked the given team in their top 3 favorites}
#' \item{white_ind}{Number of white, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{total_ind}{Total number of independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{asian_gop}{Number of asian, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{black_gop}{Number of black, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{hispanic_gop}{Number of hispanic, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{other_gop}{Number of republican poll respondents who identified their race as "other" (not asian, black, hispanic, or white) and ranked the given team in their top 3 favorites}
#' \item{white_gop}{Number of white, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{total_gop}{Total number of republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{gop_percent}{Percent of fans (who ranked the team in their top 3 favorite NFL teams) who are republicans}
#' \item{dem_percent}{Percent of fans who are democrats}
#' \item{ind_percent}{Percent of fans who are independent}
#' \item{white_percent}{Percent of fans who are white}
#' \item{nonwhite_percent}{Percent of fans who are not white}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/nfl-fandom/NFL_fandom_data-surveymonkey.csv}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' nfl_fandom_surveymonkey_tidy <- nfl_fandom_surveymonkey %>%
#' gather(key= race_party, value=percent, 3:20)
#' @seealso \code{\link{nfl_fandom_google}}
"nfl_fandom_surveymonkey"



#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}
#'
#' Google Trends Data:
#' @format A data frame with 37 rows representing dates and 5 variables:
#' \describe{
#' \item{date}{Date}
#' \item{hurricane_harvey_us}{US Google search interest on the specified date for Hurricane Harvey}
#' \item{hurricane_irma_us}{US Google search interest on the specified date for Hurricane Irma}
#' \item{hurricane_maria_us}{US Google search interest on the specified date for Hurricane Maria}
#' \item{hurricane_jose_us}{US Google search interest on the specified date for Hurricane Jose}
#' }
#' @details Google search interest is measured in search term popularity relative to peak popularity in the given
#' region and time period (with 100 as peak popularity)
#' @source Google Trends \url{https://trends.google.com/trends/}
#' @seealso \code{\link{mediacloud_hurricanes}}, \code{\link{mediacloud_states}}, \code{\link{mediacloud_online_news}},
#' \code{\link{mediacloud_trump}}, \code{\link{tv_hurricanes}}, \code{\link{tv_hurricanes_by_network}},
#' \code{\link{tv_states}}
"google_trends"



#' Mediacloud Hurricanes Data:
#' @format A data frame with 38 rows representing dates and 5 variables:
#' \describe{
#' \item{date}{Date}
#' \item{harvey}{The number of sentences in online news which mention Hurricane Harvey on the specified date}
#' \item{irma}{The number of sentences in online news which mention Hurricane Irma}
#' \item{maria}{The number of sentences in online news which mention Hurricane Maria}
#' \item{jose}{The number of sentences in online news which mention Hurricane Jose}
#' }
#' @source Mediacloud \url{https://mediacloud.org/}
#' @seealso \code{\link{mediacloud_states}}, \code{\link{mediacloud_online_news}},
#' \code{\link{mediacloud_trump}}, \code{\link{tv_hurricanes}}, \code{\link{tv_hurricanes_by_network}},
#' \code{\link{tv_states}}, \code{\link{google_trends}}
"mediacloud_hurricanes"



#' Mediacloud States Data:
#' @format A data frame with 51 rows representing dates and 4 variables:
#' \describe{
#' \item{date}{Date}
#' \item{texas}{The number of sentences in online news which mention Texas on the specified date}
#' \item{puerto_rico}{The number of sentences in online news which mention Puerto Rico}
#' \item{florida}{The number of sentences in online news which mention Florida}
#' }
#' @source Mediacloud \url{https://mediacloud.org/}
#' @seealso \code{\link{mediacloud_hurricanes}}, \code{\link{mediacloud_online_news}},
#' \code{\link{mediacloud_trump}}, \code{\link{tv_hurricanes}}, \code{\link{tv_hurricanes_by_network}},
#' \code{\link{tv_states}}, \code{\link{google_trends}}
"mediacloud_states"



#' Mediacloud Top Online News Data:
#' @format A data frame with 49 rows representing media outlets and 2 variables:
#' \describe{
#' \item{name}{Name of media outlet source included in Media Cloud's "U.S. Top Online News" collection}
#' \item{url}{URL of corresponding media outlet source}
#' }
#' @source Mediacloud \url{https://mediacloud.org/}
#' @seealso \code{\link{mediacloud_hurricanes}}, \code{\link{mediacloud_states}},
#' \code{\link{mediacloud_trump}}, \code{\link{tv_hurricanes}}, \code{\link{tv_hurricanes_by_network}},
#' \code{\link{tv_states}}, \code{\link{google_trends}}
"mediacloud_online_news"



#' Mediacloud Trump Data:
#' @format A data frame with 51 rows representing dates and 7 variables:
#' \describe{
#' \item{date}{Date}
#' \item{puerto_rico}{The number of headlines that mention Puerto Rico on the given date}
#' \item{puerto_rico_and_trump}{The number of headlines that mention Puerto Rico and either President or Trump}
#' \item{florida}{The number of headlines that mention Florida}
#' \item{florida_and_trump}{The number of headlines that mention Florida and either President or Trump}
#' \item{texas}{The number of headlines that mention Texas}
#' \item{texas_and_trump}{The number of headlines that mention Texas and either President or Trump}
#' }
#' @source Mediacloud \url{https://mediacloud.org/}
#' @seealso \code{\link{mediacloud_hurricanes}}, \code{\link{mediacloud_states}},
#' \code{\link{mediacloud_online_news}},\code{\link{tv_hurricanes}},
#' \code{\link{tv_hurricanes_by_network}}, \code{\link{tv_states}}, \code{\link{google_trends}}
"mediacloud_trump"



#' TV Hurricanes Data:
#' @format A data frame with 37 rows representing dates and 5 variables:
#' \describe{
#' \item{date}{Date}
#' \item{harvey}{The percent of sentences in TV news that mention Hurricane Harvey on the given date}
#' \item{irma}{The percent of sentences in TV news that mention Hurricane Irma}
#' \item{maria}{The percent of sentences in TV news that mention Hurricane Maria}
#' \item{jose}{The percent of sentences in TV news that mention Hurricane Irma}
#' }
#' @source Internet TV News Archive \url{https://archive.org/details/tv} and
#' Television Explorer \url{https://television.gdeltproject.org/cgi-bin/iatv_ftxtsearch/iatv_ftxtsearch}
#' @seealso \code{\link{mediacloud_hurricanes}}, \code{\link{mediacloud_states}},
#' \code{\link{mediacloud_online_news}}, \code{\link{mediacloud_trump}},
#' \code{\link{tv_hurricanes_by_network}}, \code{\link{tv_states}}, \code{\link{google_trends}}
"tv_hurricanes"



#' TV Hurricanes by Network Data:
#' @format A data frame with 84 rows representing dates and 6 variables:
#' \describe{
#' \item{date}{Date}
#' \item{query}{The hurricane in question}
#' \item{bbc_news}{The percent of sentences on the BBC News TV channel on the given date that mention the hurricane in question}
#' \item{cnn}{The percent of sentences on CNN News that mention the hurricane in question}
#' \item{fox_news}{The percent of sentences on Fox News that mention the hurricane in question}
#' \item{msnbc}{The percent of sentences on MSNBC News that mention the hurricane in question}
#' }
#' @source Internet TV News Archive \url{https://archive.org/details/tv} and
#' Television Explorer \url{https://television.gdeltproject.org/cgi-bin/iatv_ftxtsearch/iatv_ftxtsearch}
#' @seealso \code{\link{mediacloud_hurricanes}}, \code{\link{mediacloud_states}}, \code{\link{mediacloud_online_news}},
#' \code{\link{mediacloud_trump}}, \code{\link{tv_hurricanes}}, \code{\link{tv_states}}, \code{\link{google_trends}}
"tv_hurricanes_by_network"



#' TV States Data:
#' @format A data frame with 52 rows representing dates and 4 variables:
#' \describe{
#' \item{date}{Date}
#' \item{florida}{The percent of sentences in TV News on the given day that mention Florida}
#' \item{texas}{The percent of sentences in TV News on the given day that mention Texas}
#' \item{puerto_rico}{The percent of sentences in TV News on the given day that mention Puerto Rico}
#' }
#' @source Internet TV News Archive \url{https://archive.org/details/tv} and
#' Television Explorer \url{https://television.gdeltproject.org/cgi-bin/iatv_ftxtsearch/iatv_ftxtsearch}
#' @seealso \code{\link{mediacloud_hurricanes}}, \code{\link{mediacloud_states}}, \code{\link{mediacloud_online_news}},
#' \code{\link{mediacloud_trump}}, \code{\link{tv_hurricanes}}, \code{\link{tv_hurricanes_by_network}}, \code{\link{google_trends}}
"tv_states"



#' Pick A Number, Any Number
#'
#' The raw data behind the story
#' "Pick A Number, Any Number"
#' \url{https://fivethirtyeight.com/features/pick-a-number-any-number/}
#'
#' @format A data frame with 3660 rows representing dates and 1 variable:
#' \describe{
#' \item{your_number}{Guessed number}
#' \item{show_your_work}{People showing their work}
#' }
"riddler_pick_lowest"



#' The (Very) Long Tail Of Hurricane Recovery
#'
#' The raw data behind the story
#' "The (Very) Long Tail Of Hurricane Recovery"
#' \url{https://projects.fivethirtyeight.com/sandy-311/}
#'
#' @format A data frame with 1783 rows representing dates and 25 variables:
#' \describe{
#' \item{date}{Date}
#' \item{nyc_311}{.}
#' \item{acs}{The number of emergency hotline (311) calls made to the Administration for Children's Services related to Hurricane Sandy on the given date}
#' \item{bpsi}{The number of emergency hotline (311) calls made to Building Protection Systems, Inc related to Hurricane Sandy}
#' \item{cau}{The number of emergency hotline (311) calls made to the Community Affairs Unit related to Hurricane Sandy}
#' \item{chall}{The number of emergency hotline (311) calls made to the City Hall related to Hurricane Sandy}
#' \item{dep}{The number of emergency hotline (311) calls made to the Department of Environmental Protection related to Hurricane Sandy}
#' \item{dob}{The number of emergency hotline (311) calls made to the Department of Buildings related to Hurricane Sandy}
#' \item{doe}{The number of emergency hotline (311) calls made to the Department of Education related to Hurricane Sandy}
#' \item{dof}{The number of emergency hotline (311) calls made to the Department of Finance related to Hurricane Sandy}
#' \item{dohmh}{The number of emergency hotline (311) calls made to the Department of Health and Mental Hygiene related to Hurricane Sandy}
#' \item{dpr}{The number of emergency hotline (311) calls made to the Department of Parks and Recreation related to Hurricane Sandy}
#' \item{fema}{The number of emergency hotline (311) calls made to the Federal Emergency Management Agency related to Hurricane Sandy}
#' \item{hpd}{The number of emergency hotline (311) calls made to the Department of Housing Preservation and Development related to Hurricane Sandy}
#' \item{hra}{The number of emergency hotline (311) calls made to the Human Resources Administration related to Hurricane Sandy}
#' \item{mfanyc}{The number of emergency hotline (311) calls made to the Mayor's Fund to Advance NYC related to Hurricane Sandy}
#' \item{mose}{The number of emergency hotline (311) calls made to the Mayor's Office of Special Enforcement related to Hurricane Sandy}
#' \item{nycem}{The number of emergency hotline (311) calls made to Emergency Management related to Hurricane Sandy}
#' \item{nycha}{The number of emergency hotline (311) calls made to the New York City Housing Authority related to Hurricane Sandy}
#' \item{nyc_service}{The number of emergency hotline (311) calls made to NYC Service related to Hurricane Sandy}
#' \item{nypd}{The number of emergency hotline (311) calls made to the New York Police Department related to Hurricane Sandy}
#' \item{nysdol}{The number of emergency hotline (311) calls made to the NYC Department of Labor related to Hurricane Sandy}
#' \item{sbs}{The number of emergency hotline (311) calls made to Small Business Services related to Hurricane Sandy}
#' \item{nys_emergency_mg}{The number of emergency hotline (311) calls made to NYS Emergency Management related to Hurricane Sandy}
#' \item{total}{The total number of emergency hotline (311) calls made related to Hurricane Sandy}
#' }
#' @source Data from NYC Open Data \url{https://data.cityofnewyork.us/City-Government/311-Call-Center-Inquiry/tdd6-3ysr},
#' Agency acronyms from the Data Dictionary
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' sandy_311<-gather(sandy_311, "agency", "num_calls", 2:24)
#' sandy_311$agency <- as.factor(sandy_311$agency)
"sandy_311"



#' How Popular is Donald Trump
#'
#' The raw data behind the story:
#' "How Popular is Donald Trump"
#' \url{https://projects.fivethirtyeight.com/trump-approval-ratings/}
#'
#' Approval Poll Dataset:
#' @format A data frame with 3051 rows representing individual polls and 20 variables:
#' \describe{
#' \item{subgroup}{The subgroup the poll falls into as defined by the type of people being polled (all polls, voters, adults)}
#' \item{start_date}{The date the polling began}
#' \item{end_date}{The date the polling concluded}
#' \item{pollster}{The polling group which produced the poll}
#' \item{grade}{The grade for President Trump that the respondents' approval ratings correspond to}
#' \item{sample_size}{The sample size of the poll}
#' \item{population}{The type of people being polled (a for adults, lv for likely voters, rv for registered voters)}
#' \item{weight}{The weight fivethirtyeight gives the poll when determining approval ratings based on historical accuracy of the pollster}
#' \item{approve}{The percentage of respondents who approve of the president}
#' \item{disapprove}{The percentage of respondents who disapprove of the president}
#' \item{adjusted_approve}{The percentage of respondets who approve of the president adjusted for systematic tendencies of the polling firm}
#' \item{adjusted_disapprove}{The percentage of respondets who approve of the president adjusted for systematic tendencies of the polling firm}
#' \item{multiversions}{True if there are multiple versions of the poll, False if there are not}
#' \item{tracking}{TRUE if the poll was tracked, FALSE if not}
#' \item{url}{Poll result URL}
#' \item{poll_id}{Poll ID number}
#' \item{question_id}{ID number for the question being polled}
#' \item{created_date}{Date the poll was created}
#' \item{timestamp}{Date and time the poll was compiled}
#' }
#' @details Variables "model_date", "influence", and "president" were deleted because each observation contained the
#' same value for these variables: January 5, 2018; 0; and Donald Trump respectively.
#' @source \url{https://projects.fivethirtyeight.com/trump-approval-data/approval_polllist.csv} and
#' \url{https://projects.fivethirtyeight.com/trump-approval-data/approval_topline.csv}
#' @seealso \code{\link{trump_approval_trend}}
"trump_approval_poll"



#' Approval Trend Dataset:
#' @format A data frame with 1044 rows representing poll trends and 11 variables:
#' \describe{
#' \item{subgroup}{The subgroup the poll falls into as defined by the type of people being polled (all polls, voters, adults)}
#' \item{modeldate}{The date the model was created}
#' \item{approve_estimate}{Estimated approval ratings}
#' \item{approve_high}{Higher bound of the estimated approval percentage}
#' \item{approve_low}{Lower bound of the estimated approval percentage}
#' \item{disapprove_estimate}{Estimated disapproval percentage}
#' \item{disapprove_high}{Higher bound of the estimated disapproval percentage}
#' \item{disapprove_low}{Lower bound of the estimated disapproval percentage}
#' \item{timestamp}{Date and time the model was compiled}
#' }
#' @details The Variable "president" was removed because all values were "Donald Trump"
#' @source \url{https://projects.fivethirtyeight.com/trump-approval-data/approval_topline.csv}
#' @seealso \code{\link{trump_approval_poll}}
"trump_approval_trend"



#' What the World Thinks of Trump
#'
#' The raw data behind the story
#' "What the World Thinks of Trump"
#' \url{https://fivethirtyeight.com/features/what-the-world-thinks-of-trump/}
#'
#' Trump World Issues Dataset:
#' @format A data frame with 185 rows representing countries and 6 variables:
#' \describe{
#' \item{country}{The country whose population is being polled}
#' \item{net_approval}{The difference in the number of respondents from the given country who approve and who disapprove of the issue (Trump proposal) in question (approve-disapprove)}
#' \item{approve}{The number of respondents from the given country who approve of the issue (Trump proposal)}
#' \item{disapprove}{The number of respondents who disapprove of the issue}
#' \item{dk_refused}{undefined}
#' \item{issue}{The specific trump policy proposal being posed. Specifically:
#'            1: Withdraw support for international climate change agreements
#'            2: Build a wall on the border between the U. S. and Mexico
#'            3: Withdraw U.S. support from the Iran nuclear weapons agreement
#'            4: Withdraw U.S. support for major trade agreements
#'            5: Introduce tighter restrictions on those entering the U.S. from some majority-Muslim countries}
#' }
#' @source Pew Research Center \url{http://www.pewresearch.org/fact-tank/2017/07/17/9-charts-on-how-the-world-sees-trump/}
#' @seealso \code{\link{trumpworld_polls}}
"trumpworld_issues"



#' Trump World Polls Dataset:
#' @format A data frame with 32 rows representng years and 40 variables:
#' \describe{
#' \item{year}{Year the poll was conducted}
#' \item{avg}{The average percentage people who answered the poll question positively (support the president or have a favorable view of the U.S.)}
#' \item{canada}{The percentage of people from Canada who answered the poll question positively}
#' \item{france}{The percentage of people from  who answered the poll question positively}
#' \item{germany}{The percentage of people from  who answered the poll question positively}
#' \item{greece}{The percentage of people from  who answered the poll question positively}
#' \item{hungary}{The percentage of people from  who answered the poll question positively}
#' \item{italy}{The percentage of people from  who answered the poll question positively}
#' \item{netherlands}{The percentage of people from  who answered the poll question positively}
#' \item{poland}{The percentage of people from  who answered the poll question positively}
#' \item{spain}{The percentage of people from  who answered the poll question positively}
#' \item{sweden}{The percentage of people from  who answered the poll question positively}
#' \item{uk}{The percentage of people from  who answered the poll question positively}
#' \item{russia}{The percentage of people from  who answered the poll question positively}
#' \item{australia}{The percentage of people from  who answered the poll question positively}
#' \item{india}{The percentage of people from  who answered the poll question positively}
#' \item{indonesia}{The percentage of people from  who answered the poll question positively}
#' \item{japan}{The percentage of people from  who answered the poll question positively}
#' \item{philippines}{The percentage of people from  who answered the poll question positively}
#' \item{south_korea}{The percentage of people from  who answered the poll question positively}
#' \item{vietnam}{The percentage of people from  who answered the poll question positively}
#' \item{israel}{The percentage of people from  who answered the poll question positively}
#' \item{jordan}{The percentage of people from  who answered the poll question positively}
#' \item{lebanon}{The percentage of people from  who answered the poll question positively}
#' \item{tunisia}{The percentage of people from  who answered the poll question positively}
#' \item{turkey}{The percentage of people from  who answered the poll question positively}
#' \item{ghana}{The percentage of people from  who answered the poll question positively}
#' \item{kenya}{The percentage of people from  who answered the poll question positively}
#' \item{nigeria}{The percentage of people from  who answered the poll question positively}
#' \item{senegal}{The percentage of people from  who answered the poll question positively}
#' \item{south_africa}{The percentage of people from  who answered the poll question positively}
#' \item{tanzania}{The percentage of people from  who answered the poll question positively}
#' \item{argentina}{The percentage of people from  who answered the poll question positively}
#' \item{brazil}{The percentage of people from  who answered the poll question positively}
#' \item{chile}{The percentage of people from  who answered the poll question positively}
#' \item{colombia}{The percentage of people from  who answered the poll question positively}
#' \item{mexico}{The percentage of people from  who answered the poll question positively}
#' \item{peru}{The percentage of people from  who answered the poll question positively}
#' \item{venezuela}{The percentage of people from  who answered the poll question positively}
#' \item{question}{The item being polled. Specificially, whether respondents:
#'           Have a favorable view of the U.S.
#'           Trust the U.S. President when it comes to foreign affairs}
#' }
#' @source Pew Research Center \url{http://www.pewresearch.org/fact-tank/2017/07/17/9-charts-on-how-the-world-sees-trump/}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' trumpworld_polls_tidy <- gather(trumpworld_polls, country, percent_positive, 3:39)
#' @seealso \code{\link{trumpworld_issues}}
"trumpworld_polls"



#' The Worst Tweeter in Politics Isn't Trump
#'
#' The raw data behind:
#' "The Worst Tweeter in Politics Isn't Trump"
#' \url{https://fivethirtyeight.com/features/the-worst-tweeter-in-politics-isnt-trump/}
#'
#' Presidents Dataset:
#' @format A data frame with 6439 rows describing individual tweets and 8 variables:
#' \describe{
#' \item{created_at}{The date and time the tweet was posted}
#' \item{text}{The text of the tweet}
#' \item{url}{The link to the tweet}
#' \item{replies}{The number of replies to the tweet}
#' \item{retweets}{The number of retweets}
#' \item{favorites}{The number of favorites}
#' \item{user}{The user posting the tweet}
#' \item{president}{The name of the president who posted the tweet}
#' }
#' @details Data on President Obama's tweets collected on Oct 20, President Trump's tweets collected on Oct 23.
#' @source Twitter \url{https://twitter.com/BarackObama} and \url{https://twitter.com/realDonaldTrump}
#' @seealso \code{\link{senators}}
"twitter_presidents"



#' Senator Dataset:
#' @format A data frame with 288615 rows representing tweets and 10 variables:
#' \describe{
#' \item{created_at}{The date and time the tweet was posted}
#' \item{text}{The text of the tweet}
#' \item{url}{The link to the tweet}
#' \item{replies}{The number of replies to the tweet}
#' \item{retweets}{The number of retweets}
#' \item{favorites}{The number of favorites}
#' \item{user}{The user posting the tweet}
#' \item{bioguide_id}{The poster's member ID from the "Biographical Directory of the United States Congress"}
#' \item{party}{The poster's political party affiliation}
#' \item{state}{The state the poster represents in Congress}
#' }
#' @details Data collected on Oct 19 and 20
#' @source Twitter
#' @seealso \code{\link{twitter_presidents}}
"senators"



#' Mayweather Is Defined By The Zero Next To His Name
#'
#' The raw data behind:
#' "Mayweather Is Defined By The Zero Next To His Name"
#' \url{https://fivethirtyeight.com/features/mayweather-is-defined-by-the-zero-next-to-his-name/}
#' @format A data frame with 2125 rows representing boxing matches and 4 variables:
#' \describe{
#' \item{name}{Name of boxer}
#' \item{url}{URL with the boxer's record}
#' \item{date}{Date of the match}
#' \item{wins}{Number of cumulative wins for the boxer including the match at the specified date}
#' }
#' @source Box Rec \url{http://boxrec.com/}
"undefeated"
