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
#'   \item{days}{Days into administration that the appointee left office}
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
#'   \item{dem_poll}{the percent of support for the Democrat during the poll}
#'   \item{rep_poll}{the percent of support for the Republican during the poll}
#'   \item{dem_result}{the result percent of support for the Democrat during the election}
#'   \item{rep_result}{the result percent of support for the Republican during the election}
#'   \item{error}{the difference between the percent of support of one party during the poll and the result percent of support for the same party during the election}
#'   \item{absolute_error}{the absolute value of the error value}
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
#'   \item{category}{category of the endorsement}
#'   \item{body}{body of the endorsement}
#'   \item{district}{district}
#'   \item{points}{points the endorsement counts for}
#'   }
#' @source 2020 endorsement tracker.
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
#'   \item{dem_win_prob}{the probability of winning for the Democrat}
#'   \item{rep_win_prob}{the probability of winning for the Republican}
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
#' @seealso \code{\link{governor_state_forecast}}
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
#' @seealso \code{\link{governor_national_forecast}}
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
#' @seealso \code{\link{house_national_forecast}}
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
#' @seealso \code{\link{house_district_forecast}}
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
#' \item{first_home_game}{Whether the school played its first-round tournament games on its home court.}
#' \item{tourney_w}{number of winning in tournament record}
#' \item{tourney_l}{number of losses in tournament record}
#' \item{tourney_finish}{The round of the final game for each team. OR=opening-round loss (1983 only); 1st=first-round loss; 2nd=second-round loss; RSF=loss in the Sweet 16; RF=loss in the Elite Eight; NSF=loss in the national semifinals; N2nd=national runner-up; Champ=national champions}
#' \item{full_w}{number of winning in full record}
#' \item{full_l}{number of losses in full record}
#' \item{full_percent}{percent of winning in full record}
#' }
#'
#' @source NCAA
"ncaa_w_basketball_tournaments"

#' FiveThirtyEight's Partisan Lean
#'
#' This directory contains the data for FiveThirtyEight's partisan lean, which is used in our
#' [House]
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house}
#' [Senate]
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/senate}
#' and [Governor]
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/governor/}
#' forecasts.
#'
#' @format A dataset with 435 rows representing votes and 4 variables
#' \describe{
#' \item{state}{the state of the vote}
#' \item{district_number}{the district_number of the vote}
#' \item{pvi_party}{the party of the vote}
#' \item{pvi_amount}{the Cook Partisan Voting Index of the vote}
#' }
#'
#' @source Partisan lean is the average difference between how a state or district votes and how the country votes overall, with 2016 presidential election results weighted 50 percent, 2012 presidential election results weighted 25 percent and results from elections for the state legislature weighted 25 percent.
#' @seealso \code{\link{partisan_lean_state}}
#' @note The original dataset only has 2 columns: "district" and "pvi_538". I separated each of the 2 columns into two.
#' For example, in row 1 of the dataset, the original "district" = "AK-1", and I separated it into "state" = "Arkansas" and "district_number" = "1";
#' the original "pvi_538" = "R+15.21", and I separated it into “pvi_party" = "R" and "pvi_amount" = "15.21".
#' In addition, I used the full names for all states instead of abbreviations.
#' @seealso \code{\link{partisan_lean_state}}
"partisan_lean_district"

#' FiveThirtyEight's Partisan Lean
#'
#' This directory contains the data for FiveThirtyEight's partisan lean, which is used in our
#' [House]
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house}
#' [Senate]
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/senate}
#' and [Governor]
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/governor/}
#' forecasts.
#'
#' @format A dataset with 50 rows representing states and 3 variables
#' \describe{
#' \item{state}{the state}
#' \item{pvi_party}{the party of the vote}
#' \item{pvi_amount}{the Cook Partisan Voting Index of the vote}
#' }
#'
#' @source Partisan lean is the average difference between how a state or district votes and how the country votes overall, with 2016 presidential election results weighted 50 percent, 2012 presidential election results weighted 25 percent and results from elections for the state legislature weighted 25 percent.
#' @note The original dataset only has 2 columns: "state" and "pvi_538". I separated the "pvi_538" columns into two.
#' For example, in row 1 of the dataset, the original "pvi_538" = "R+27", and I separated it into “pvi_party" = "R" and "pvi_amount" = "27".
#' @seealso \code{\link{partisan_lean_district}}
"partisan_lean_state"

#' Political Elasticity Scores
#'
#' This folder contains the data behind the story 'Election Update: The House Districts That Swing The Most (And Least) With The National Mood'
#' \url{https://fivethirtyeight.com/features/election-update-the-house-districts-that-swing-the-most-and-least-with-the-national-mood/}
#'
#' @format A dataset with 435 rows representing congressional districts and 2 variables
#' \describe{
#' \item{district}{congressional district}
#' \item{pvi_538}{pvi}
#' }
#' @source An elasticity score measures how sensitive a state or district it is to changes in the national political environment.
#' @note The original dataset only has 2 columns: "district" and "elasticity". I separated  the "district" columns into two.
#' For example, in row 1 of the dataset, the original "district" = "MI-5", and I separated it into “state" = "Michigan" and "district_number" = "5".
#' In addition, I used the full names for all states instead of abbreviations.
#' @seealso \code{\link{elasticity_by_state}}
"elasticity_by_district"

#' Political Elasticity Scores
#'
#' This folder contains the data behind the story 'Election Update: The House Districts That Swing The Most (And Least) With The National Mood'
#' \url{https://fivethirtyeight.com/features/election-update-the-house-districts-that-swing-the-most-and-least-with-the-national-mood/}
#'
#' @format A dataset with 435 rows representing each state and the District of Columbia and 2 variables
#' \describe{
#' \item{state}{state}
#' \item{pvi_538}{pvi}
#' }
#'
#' @source An elasticity score measures how sensitive a state or district it is to changes in the national political environment.
#' @note I used the full names for all states instead of abbreviations.
#' @seealso \code{\link{elasticity_by_district}}
"elasticity_by_state"

#' Russia Investigation
#'
#' This folder contains data behind the story 'Is The Russia Investigation Really Another Watergate?'
#' \url{https://projects.fivethirtyeight.com/russia-investigation/}
#'
#' @format A dataset with 194 rows representing every special investigation since the Watergate probe began in 1973 and 13 variables
#' \describe{
#' \item{investigation}{Unique id for each investigation}
#' \item{investigation_start}{Start date of the investigation}
#' \item{investigation_end}{End date of the investigation}
#' \item{investigation_days}{Length, in days, of the investigation. Days will be negative if the charge occurred before the investigation began.}
#' \item{name}{Name of the person charged (if applicable). Will be blank if there were no charges.}
#' \item{indictment_days}{Length, in days, from the start of the investigation to the date the person was charged (if applicable). Days will be negative if the charge occurred before the investigation began.}
#' \item{type}{Result of charge (if applicable)}
#' \item{cp_date}{Date the person pled guilty or was convicted (if applicable)}
#' \item{cp_days}{Length, in days, from the start of the investigation to the date the person pled guilty or was convicted (if applicable)}
#' \item{overturned}{Whether or not the relevant person's conviction was overturned}
#' \item{pardoned}{Whether or not the relevant person's charge was pardoned}
#' \item{american}{Whether or not the relevant person's charge was a U.S. resident}
#' \item{president}{President at the center of the investigation}
#' }
#'
#' @source Information for this story is drawn from an original data set of special counsel, independent counsel and special prosecutor investigations from 1973 to 2019. The data set was created by consulting historical sources, including final reports generated by independent counsels, special counsels and special prosecutors; reports in Congressional Quarterly; and contemporaneous news stories. Secondary historical sources were also consulted, including a 2006 Congressional Research Service report about independent counsel investigations and a history of the Watergate investigation by Stanley Kutler. Data about pardons was obtained from the Office of the Pardon Attorney. Indicted organizations were excluded from our analysis. The data set, which is available on Github, includes the names of all people charged as part of these investigations, as well as the outcome of their cases and the dates of major actions in their cases.
#'
#' 2006 Congressional Research Service report:
#' \url{https://digital.library.unt.edu/ark:/67531/metadc815038/m2/1/high_res_d/98-19_2006Jun08.pdf}
#'
#' dataset in GitHub:
#' \url{https://github.com/fivethirtyeight/data/tree/master/russia-investigation}
"russia_investigation"

#' Senate Forecast 2018
#'
#' This file contains links to the data behind FiveThirtyEight's 'Senate forecasts'
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/senate/}
#'
#' @format A dataframe with 450 rows representing national-level results of the classic, lite, and deluxe   Senate forecasts since Aug. 1, 2018 and 11 variables
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
#' @seealso \code{\link{senate_seat_forecast}}
"senate_national_forecast"

#' Senate Forecast 2018
#'
#' This file contains links to the data behind FiveThirtyEight's 'Senate forecasts'
#' \url{https://projects.fivethirtyeight.com/2018-midterm-election-forecast/senate/}
#'
#' @format A dataframe with 28353 rows representing seat-level results of the classic, lite, and deluxe Senate forecasts since Aug. 1, 2018 and 12 variables
#' \describe{
#' \item{forecastdate}{date of the forecast}
#' \item{state}{state of the forecast}
#' \item{class}{class of the forecast}
#' \item{special}{unknown}
#' \item{candidate}{name of the candidate}
#' \item{party}{party of the candidate}
#' \item{incumbent}{whether the candidate is incumbent}
#' \item{model}{the model of the forecast}
#' \item{win_probability}{the probability of the corresponding party winning}
#' \item{voteshare}{the voteshare of the corresponding party}
#' \item{p10_voteshare}{the top 10 percentile of the voteshare}
#' \item{p90_voteshare}{the top 00 percentile of the voteshare}
#' }
#' @source FiveThirtyEight’s House, Senate And Governor Models
#' Methodology:
#' \url{https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/}
#' @seealso \code{\link{senate_national_forecast}}
"senate_seat_forecast"

#' Trump Lawsuits
#'
#' This folder contains the data behind the stories:
#' 'What Trump's Legal Battles Tell Us About Presidential Power'
#' \url{https://fivethirtyeight.com/features/what-trumps-legal-battles-tell-us-about-presidential-power/};
#' 'Why It Might Be Impossible To Overturn A Presidential Pardon'
#' \url{https://fivethirtyeight.com/features/why-it-might-be-impossible-to-overturn-a-presidential-pardon/};
#' 'Will The Supreme Court Fast-Track Cases Involving Trump?'
#' \url{https://fivethirtyeight.com/features/will-the-supreme-court-fast-track-cases-involving-trump/};
#' 'Why One of Trump’s Biggest Legal Threats Is New York’s Attorney General'
#' \url{https://fivethirtyeight.com/features/why-one-of-trumps-biggest-legal-threats-is-new-yorks-attorney-general/};
#' 'Should Judges Pay Attention To Trump’s Tweets?'
#' \url{https://fivethirtyeight.com/features/should-judges-pay-attention-to-trumps-tweets/};
#' 'Trump Is Losing The Legal Fight Against Sanctuary Cities, But It May Still Pay Off Politically'
#' \url{https://fivethirtyeight.com/features/trump-is-losing-the-legal-fight-against-sanctuary-cities-but-it-may-still-pay-off-politically/};
#' 'Will Trump’s Latest Lawsuits Keep Congress From Investigating Future Presidents?'
#' \url{https://fivethirtyeight.com/features/will-trumps-latest-lawsuits-keep-congress-from-investigating-future-presidents/};
#'
#' @format A dataset with 57 rows representing lawsuits and 16 variables
#' \describe{
#' \item{docket_number}{Current docket number}
#' \item{date_filed}{Date lawsuit was originally filed}
#' \item{case_name}{Case name (current)}
#' \item{plaintiff}{Names of plaintiffs (if more than five, "et al" for plaintiffs who are not in case name)}
#' \item{defendant}{Names of defendants (if more than five, "et al" for defendants who are not in case name)}
#' \item{current_location}{Court the lawsuit is currently in front of}
#' \item{previous_location}{Other courts the case has appeared before}
#' \item{jurisdiction}{Where the case is being heard | 1 = Federal; 2 = State}
#' \item{judge}{Names of the judges the case is currently before}
#' \item{nature}{PACER code for nature of lawsuit (Not relevant for criminal cases) \url{https://www.pacer.gov/documents/natsuit.pdf}}
#' \item{trump_category}{Whether the case is related to action before Trump was president, his personal conduct as president, or a policy action as president | 1 = Case directed at pre-presidency action; 2 = Case directed at personal action of Trump as president; 3 = Case directed at policy action of Trump as president}
#' \item{capacity}{The capacity in which Trump is implicated | 1 = Case directed at Trump personally; 2 = Case directed at action of Trump administration; 3 = Trump as plaintiff; 4 = Trump administration as plaintiff; 5 = Case directed at Trump associate; 6 = Other}
#' \item{type}{Criminal vs. civil | 1 = Criminal; 2 = Civil}
#' \item{issue}{Key topic area raised in the case (i.e. emoluments, First Amendment, DACA, etc). Categories created based on key policy topic area or legal issue. Calls are subjective and based on reporting and may change.}
#' \item{docket_orig}{Original docket number, if case has been appealed or changed jurisdiction}
#' \item{status}{Whether the case, or the part of the case connected to Trump, is ongoing. | 1 = Case is ongoing; 2 = Case or part of case connected to Trump is closed}
#' }
#' @source Approval Polls
"trump_lawsuits"

#'  Masculinity Survey
#'
#' This folder contains the data behind the story:
#' "What Do Men Think It Means To Be A Man?"
#' \url{https://fivethirtyeight.com/features/what-do-men-think-it-means-to-be-a-man}
#' @format A dataset with 189 rows representing answers and 12 variables:
#' \describe{
#' \item{question}{the survey question}
#' \item{response}{the survey response}
#' \item{overall}{the ratio of overall participants who selected this response}
#' \item{age_18_34}{the ratio of participants age 18 to 34 who selected this response}
#' \item{age_35_64}{the ratio of participants age 35 to 64 who selected this response}
#' \item{age_65_over}{the ratio of participants age 65 or over who selected this response}
#' \item{white_yes}{the ratio of overall white participants who selected this response}
#' \item{white_no}{the ratio of overall non-white participants who selected this response}
#' \item{children_yes}{the ratio of participants who have child(ren) who selected this response}
#' \item{children_no}{the ratio of participants who do not have children who selected this response}
#' \item{straight_yes}{the ratio of straight participants who selected this response}
#' \item{straight_no}{the ratio of non-straight participants who selected this response}
#' }
#' @note The original `masculinity-survey.csv` contains the results of a survey of 1,615 adult men conducted by SurveyMonkey in partnership with FiveThirtyEight and WNYC Studios from May 10-22, 2018. The modeled error estimate for this survey is plus or minus 2.5 percentage points. The percentages have been weighted for age, race, education, and geography using the Census Bureau’s American Community Survey to reflect the demographic composition of the United States age 18 and over. Crosstabs with less than 100 respondents have been left blank because responses would not be statistically significant.
#' I made heavy editions in Excel to make the dataset easily usable in R.
#' @source The original survey responses and original datasets can be found here:
#' \url{https://github.com/fivethirtyeight/data/tree/master/masculinity-survey}
#' @examples
#' library(dplyr)
#' library(ggplot2)
#' library(tidyr)
#' library(stringr)
#'
#' # Data wrangling
#' masculinity_tidy <- masculinity_survey %>%
#'   # Narrow down rows to those pertaining to first question of survey:
#'   filter(question == 'In general, how masculine or "manly" do you feel?') %>%
#'   # Eliminate columns not relating to sexual orientaiton:
#'   select(-c(age_18_34, age_35_64, age_65_over, white_yes, white_no, children_yes,
#'             children_no, overall)) %>%
#'   # Convert data frame to tidy data (long) format:
#'   gather(key = sexuality, value = ratio_by_sexuality, -c(question, response) )
#'
#' # Visualize results
#' ggplot(data = masculinity_tidy, aes(x = response, y = ratio_by_sexuality, fill = sexuality)) +
#'   geom_bar(stat="identity", position = 'dodge') +
#'   labs(x = "Response", y = "Proportion", labs = "Sexuality",
#'        title = "In general, how masculine or 'manly' do you feel?")
"masculinity_survey"
