#' Two Years In, Turnover In Trump’s Cabinet Is Still Historically High
#'
#' The raw data behind the story
#' "Two Years In, Turnover In Trump’s Cabinet Is Still Historically High"
#' \url{https://fivethirtyeight.com/features/two-years-in-turnover-in-trumps-cabinet-is-still-historically-high/}.
#'
#' @format A data frame with 312 rows representing cabinet members and 7 variables:
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
#' @format A data frame with 594 rows representing senate polls, and 11 variables:
#' \describe{
#'   \item{cycle}{the election year}
#'   \item{state}{the state of the poll}
#'   \item{senate_class}{the class of the senate}
#'   \item{start_date}{the start date of the poll}
#'   \item{end_date}{the end odate of the poll}
#'   \item{DEM_poll}{the percent of support for the Democrat during the poll}
#'   \item{REP_poll}{the percent of support for the Republican during the poll}
#'   \item{DEM_result}{the result percent of support for the Democrat during the election}
#'   \item{REP_result}{the result percent of support for the Republican during the election}
#'   \item{error}{the difference between the percent of support of one party during the poll and the result percent of support for the same party during the election}
#'   \item{absolute_error}{the absolutel value of the error value}
#'   }
#' @source Emerson College’s poll of registered voters \url{https://www.emerson.edu/sites/default/files/Files/Academics/ecp-tx-aug2018-pr.pdf}
"august_senate_polls"

#' The 2020 Endorsement Primary - Which Democratic candidates are receiving the most support from prominent members of their party?
#'
#' The raw data behind the story
#' "The 2020 Endorsement Primary - Which Democratic candidates are receiving the most support from prominent members of their party?"
#' \url{https://projects.fivethirtyeight.com/2020-endorsements/democratic-primary/}.
#'
#' @format A data frame with 1000 rows representing endorsements and 13 variables: 
#' \describe{
#'   \item{date}{date of the endorsement}
#'   \item{position}{position of the endorser}
#'   \item{city}{city of the endorser}
#'   \item{state}{state of the endorser}
#'   \item{endorser}{name of the endorser}
#'   \item{endorsee}{name of the endorsee}
#'   \item{endorser_party}{party of the endorser}
#'   \item{source}{source link of the endorsement}
#'   \item{order}{order of the endorsement}
#'   \item{category}{cateogory of the endorsement}
#'   \item{body}{body of the endorsement}
#'   \item{points}{points the endorsement counts for}
#'   }
#' @source 2020 endorcement tracker. 
#' Methodology: 
#' \url{https://fivethirtyeight.com/methodology/how-our-presidential-endorsement-tracker-works/}.
"endorsements_2020"

#' How FiveThirtyEight's 2018 Midterm Forecasts Did
#' 
#' The raw data behind the story 
#' 'How FiveThirtyEight's 2018 Midterm Forecasts Did'
#' \url{https://fivethirtyeight.com/features/how-fivethirtyeights-2018-midterm-forecasts-did/}
#' 
#' @format A dataframe with 1518 rows representing forecast results (as of December 3, 2018) and 11 variables:
#' \describe{
#'   \item{cycle}{cycle of the election}
#'   \item{branch}{branch of the election}
#'   \item{race}{election forecast for the gubernatorial race}
#'   \item{forecastdate}{the date of the forecast}
#'   \item{version}{version of the election forecast}
#'   \item{democrat_winprobability}{the probability of winning for the Democrat}
#'   \item{republican_winprobability}{the probability of winning for the Republican}
#'   \item{category}{the predicted political affiliation of the forecast}
#'   \item{democrat_won}{whether the Democrat won}
#'   \item{republican_won}{whether the Republican won}
#'   \item{uncalled}{if a race was uncalled}
#'   }
#' @source FiveThirtyEight's 2018 House Forecast \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house/}
"forecast_results_2018"

#' 2018 Governors Forecast
#' 
#' The raw data behind the story 
#' 'Forecasting the races for governor'
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/governor/}
#' 
#' @format A dataframe with 150 rows representing national-level results of the classic, lite, and deluxe gubernatorial forecasts since Oct. 11, 2018. and 11 variables
#' \describe{
#' \item{forecastdate}{date of the forecast}
#' \item{party}{the party of the forecast}
#' \item{model}{the model of the forecast}
#' \item{win_probability}{the probability of the corresponding party winning}
#' \item{mean_seats}{the mean of the number of seats}
#' \item{median_seats}{the median number of seats}
#' \item{p10_seats}{the top 10 percentile of number of seats}
#' \item{p90_seats}{the top 90 percentile of number of seats}
#' \item{margin}{unknown}
#' \item{p10_margin}{the margin of p10_seats}
#' \item{p90_margin}{the margin of p90_seats}
#' }
#' @note The original dataset included a meaningless column called "state", and all variables under this column was "US". So this column was removed.
#' @source FiveThirtyEight’s House, Senate And Governor Models
#' Methodology: 
#' \url{https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/}
"governor_national_forecast"

#' 2018 Governors Forecast
#' 
#' The raw data behind the story 
#' 'Forecasting the races for governor'
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/governor/}
#' 
#' @format A dataframe with 7743 rows representing state-level results of the classic, lite, and deluxe  gubernatorial forecasts since Oct. 11, 2018. and 10 variables
#' \describe{
#' \item{forecastdate}{date of the forecast}
#' \item{state}{state of the forecast}
#' \item{candidate}{name of the candidate}
#' \item{party}{party of the candidate}
#' \item{incumbent}{whether the candidate is incumbent}
#' \item{model}{the model of the forecast}
#' \item{win_probability}{the probability of the corresponding party winning}
#' \item{voteshare}{the voteshare of the corresponding party}
#' \item{p10_voteshare}{the top 10 percentile of the voteshare}
#' \item{p90_voteshare}{the top 00 percentile of the voteshare}
#' }
#' @note The original dataset included two empty column "district" and "special",which were removed. 
#' @source FiveThirtyEight’s House, Senate And Governor Models
#' Methodology: 
#' \url{https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/}
"governor_state_forecast"

#' 2018 House Forecast
#' 
#' The raw data behind the story 
#' 'Forecasting the race for the House'
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house/}
#' 
#' @format A dataframe with 302859 rows representing district-level results of the classic, lite, and deluxe   House forecasts since Aug. 1, 2018 and 11 variables
#' \describe{
#' \item{forecastdate}{date of the forecast}
#' \item{state}{state of the forecast}
#' \item{district}{district of the forecast}
#' \item{candidate}{name of the candidate}
#' \item{party}{party of the candidate}
#' \item{incumbent}{whether the candidate is incumbent}
#' \item{model}{the model of the forecast}
#' \item{win_probability}{the probability of the corresponding party winning}
#' \item{voteshare}{the voteshare of the corresponding party}
#' \item{p10_voteshare}{the top 10 percentile of the voteshare}
#' \item{p90_voteshare}{the top 00 percentile of the voteshare}
#' }
#' @note the original dataset included an empty column "special", which was removed. 
#' @source FiveThirtyEight’s House, Senate And Governor Models
#' Methodology: 
#' \url{https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/}
"house_district_forecast"

#' 2018 House Forecast
#' 
#' The raw data behind the story 
#' 'Forecasting the race for the House'
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house/}
#' 
#' @format A dataframe with 588 rows representing district-level results of the classic, lite, and deluxe House forecasts since Aug. 1, 2018 and 11 variables
#' \describe{
#' \item{forecastdate}{date of the forecast}
#' \item{party}{the party of the forecast}
#' \item{model}{the model of the forecast}
#' \item{win_probability}{the probability of the corresponding party winning}
#' \item{mean_seats}{the mean of the number of seats}
#' \item{median_seats}{the median number of seats}
#' \item{p10_seats}{the top 10 percentile of number of seats}
#' \item{p90_seats}{the top 90 percentile of number of seats}
#' \item{margin}{unknown}
#' \item{p10_margin}{the margin of p10_seats}
#' \item{p90_margin}{the margin of p90_seats}
#' }
#' 
#' @note The original dataset included a meaningless column called "state", and all variables under this column was "US". So this column was removed.
#' @source FiveThirtyEight’s House, Senate And Governor Models
#' Methodology: 
#' \url{https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/}
"house_national_forecast"

#' Both Parties Think The Mueller Report Was Fair. They Just Completely Disagree On What It Says.
#' 
#' The raw data behind the story
#' 'Both Parties Think The Mueller Report Was Fair. They Just Completely Disagree On What It Says.'
#' \url{https://fivethirtyeight.com/features/both-parties-think-the-mueller-report-was-fair-they-just-disagree-on-what-it-says/}
#' 
#' @format A dataset with 65 rows representing every job approval poll of Robert Mueller that we could find from when Mueller was appointed as special council on May 17, 2017 through May 3, 2019 and 12 variables 
#' \describe{
#' \item{start}{the start date of the poll}
#' \item{end}{the end date of the poll}
#' \item{pollster}{the name of the pollster}
#' \item{sample_size}{the size of the poll sample}
#' \item{population}{unknown}
#' \item{text}{the text of the poll question}
#' \item{approve}{the number of approval in the poll}
#' \item{disapprove}{the number of disapproval in the poll}
#' \item{unsure}{the number of unsure in the poll}
#' \item{approve_(republican)}{the number of approval from Republican}
#' \item{approve_(democrat)}{the number of approval from Democrat}
#' \item{url}{the url of the poll}
#' }
#' 
#' @source Polls, Washington Post / ABC and Washington Post / Schar School Polls 
"mueller_approval_polls"

#' The Rise And Fall Of Women's NCAA Tournament Dynasties
#'
#' The raw data behind the story
#' 'The Rise And Fall Of Women's NCAA Tournament Dynasties'
#' \url{https://fivethirtyeight.com/features/louisiana-tech-was-the-uconn-of-the-80s/}
#'
#' @format A dataset with 2092 rows representing every team that has participated in the NCAA Division I Women's Basketball Tournament since it began in 1982 and 19 variables
#' \describe{
#' \item{year}{the year of the game which the team participated in}
#' \item{school}{the school of the participating team}
#' \item{seed}{The `(OR)` seeding designation in 1983 notes the eight teams that played an opening-round game to become the No. 8 seed in each region.}
#' \item{conference}{the conference record of the team (if available)}
#' \item{conf_w}{number of winning in conference record}
#' \item{conf_l}{number of losses in conference record}
#' \item{conf_percent}{percent of winning in conference record}
#' \item{reg_w}{number of winning in regular-season record}
#' \item{reg_l}{number of losses in regular-season record}
#' \item{reg_percent}{percent of winning in regular-season record}
#' \item{how_qual}{Whether the school qualified with an automatic bid (by winning its conference or conference tournament) or an at-large bid.}
#' \item{1st_game_at_home}{Whether the school played its first-round tournament games on its home court.}
#' \item{tourney_w}{number of winning in tournament record}
#' \item{tourney_l}{number of losses in tournament record}
#' \item{tourney_finish}{The round of the final game for each team. OR=opening-round loss (1983 only); 1st=first-round loss; 2nd=second-round loss; RSF=loss in the Sweet 16; RF=loss in the Elite Eight; NSF=loss in the national semifinals; N2nd=national runner-up; Champ=national champions}
#' \item{full_w}{number of winning in full record}
#' \item{full_l}{number of losses in full record}
#' \item{full_percent}{percent of winning in full record}
#' }
#'
#' @source NCAA
"ncaa_womens_basketball_tournament_history"

