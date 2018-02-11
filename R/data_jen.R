#' Most Police Don't Live In The Cities They Serve
#'
#' The raw data behind the story
#' "Most Police Don't Live In The Cities They Serve"
#' \url{https://fivethirtyeight.com/features/most-police-dont-live-in-the-cities-they-serve/}.
#'
#' @details
#' The dataset includes the cities with the 75 largest police forces, with the exception of Honolulu for which data is not available. All calculations are based on data from the U.S. Census.
#'
#' The Census Bureau numbers are potentially going to differ from other counts for three reasons:
#' \enumerate{
#'    \item The census category for police officers also includes sheriffs, transit police and others who might not be under the same jurisdiction as a city's police department proper. The census category won't include private security officers.
#'    \item The census data is estimated from 2006 to 2010; police forces may have changed in size since then.
#'    \item There is always a margin of error in census numbers; they are estimates, not complete counts.
#' }
#'
#' Note: Missing values means that there are fewer than 100 police officers of that race serving that city.
#'
#' @format A data frame with 75 rows representing cities and 8 variables:
#' \describe{
#'   \item{city}{U.S. city}
#'   \item{force_size}{Number of police officers serving that city}
#'   \item{all}{Percentage of the total police force that lives in the city}
#'   \item{white}{Percentage of white (non-Hispanic) police officers who live in the city}
#'   \item{non_white}{Percentage of non-white police officers who live in the city}
#'   \item{black}{Percentage of black police officers who live in the city}
#'   \item{hispanic}{Percentage of Hispanic police officers who live in the city}
#'   \item{asian}{Percentage of Asian police officers who live in the city}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/police-locals}
#'
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' police_locals_tidy <- police_locals %>%
#'    gather(key = "race", value = "perc_in", all:asian)
"police_locals"

#' Looking For Clues: Who Is Going To Run For President In 2016?
#'
#' The raw data behind the story
#' "Looking For Clues: Who Is Going To Run For President In 2016?"
#' \url{https://fivethirtyeight.com/features/2016-president-who-is-going-to-run/}.
#'
#' @format A data frame with 42 rows representing events attended in Iowa and New Hampshire by potential presidential primary candidates and 8 variables:
#' \describe{
#'   \item{person}{Potential presidential candidate}
#'   \item{party}{Political party}
#'   \item{state}{State of event}
#'   \item{event}{Name of event}
#'   \item{type}{Type of event}
#'   \item{date}{Date of event}
#'   \item{link}{Link to event}
#'   \item{snippet}{Snippet of event description}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/potential-candidates}
#' @seealso \code{\link{cand_state_20150114}}, \code{\link{cand_events_20150130}}, and \code{\link{cand_state_20150130}}
"cand_events_20150114"

#' Looking For Clues: Who Is Going To Run For President In 2016?
#'
#' The raw data behind the story
#' "Looking For Clues: Who Is Going To Run For President In 2016?"
#' \url{https://fivethirtyeight.com/features/2016-president-who-is-going-to-run/}.
#'
#' @format A data frame with 25 rows representing potential presidential primary candidates and 5 variables:
#' \describe{
#'   \item{person}{Potential presidential candidate}
#'   \item{party}{Political party}
#'   \item{date}{Date of event}
#'   \item{latest}{Latest statement}
#'   \item{score}{Likelihood of running score, 1 = Not running, 5 = Definitely running}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/potential-candidates}
#' @seealso \code{\link{cand_events_20150114}}, \code{\link{cand_events_20150130}}, and \code{\link{cand_state_20150130}}
"cand_state_20150114"

#' Who Will Run For President: Romney Is Out
#'
#' The raw data behind the story
#' "Who Will Run For President: Romney Is Out"
#' \url{https://fivethirtyeight.com/features/romney-not-running-for-president/}.
#'
#' @format A data frame with 27 rows representing potential presidential primary candidates and 5 variables:
#' \describe{
#'   \item{person}{Potential presidential candidate}
#'   \item{party}{Political party}
#'   \item{date}{Date of event}
#'   \item{latest}{Latest statement}
#'   \item{score}{Likelihood of running score, 1 = Not running, 5 = Definitely running}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/potential-candidates}
#' @seealso \code{\link{cand_events_20150130}}, \code{\link{cand_events_20150114}}, and \code{\link{cand_state_20150114}}
"cand_state_20150130"

#' Who Will Run For President: Romney Is Out
#'
#' The raw data behind the story
#' "Who Will Run For President: Romney Is Out"
#' \url{https://fivethirtyeight.com/features/romney-not-running-for-president/}.
#'
#' @format A data frame with 74 rows representing events attended by potential presidential primary candidates and 8 variables:
#' \describe{
#'   \item{person}{Potential presidential candidate}
#'   \item{party}{Political party}
#'   \item{state}{State of event}
#'   \item{event}{Name of event}
#'   \item{type}{Type of event}
#'   \item{date}{Date of event}
#'   \item{link}{Link to event}
#'   \item{snippet}{Snippet of event description}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/potential-candidates}
#' @seealso \code{\link{cand_state_20150130}}, \code{\link{cand_events_20150114}}, and \code{\link{cand_state_20150114}}
"cand_events_20150130"




#' Sitting Presidents Give Way More Commencement Speeches Than They Used To
#'
#' The raw data behind the story
#' "Sitting Presidents Give Way More Commencement Speeches Than They Used To"
#' \url{https://fivethirtyeight.com/features/sitting-presidents-give-way-more-commencement-speeches-than-they-used-to/}.
#'
#' @format A data frame with 154 rows representing speeches and 8 variables:
#' \describe{
#'   \item{pres}{Number of president (33 is Harry Truman, the 33rd president; 44 is Barack Obama, the 44th president)}
#'   \item{pres_name}{Name of president}
#'   \item{title}{Description of commencement speech}
#'   \item{date}{Date speech was delivered}
#'   \item{city}{City where speech was delivered}
#'   \item{state}{State where speech was delivered}
#'   \item{building}{Name of building in which speech was delivered}
#'   \item{room}{Room in which speech was delivered}
#' }
#' @source American Presidency Project, Gerhard Peters and John T. Woolley \url{http://www.presidency.ucsb.edu}
"pres_commencement"


#' Do Pulitzers Help Newspapers Keep Readers?
#'
#' The raw data behind the story
#' "Do Pulitzers Help Newspapers Keep Readers?"
#' \url{https://fivethirtyeight.com/features/do-pulitzers-help-newspapers-keep-readers/}.
#'
#' @format A data frame with 50 rows representing newspapers and 7 variables:
#' \describe{
#'   \item{newspaper}{Newspaper}
#'   \item{circ2004}{Daily Circulation in 2004}
#'   \item{circ2013}{Daily Circulation in 2013}
#'   \item{pctchg_circ}{Percent change in Daily Circulation from 2004 to 2013}
#'   \item{num_finals1990_2003}{Number of Pulitzer Prize winners and finalists from 1990 to 2003}
#'   \item{num_finals2004_2014}{Number of Pulitzer Prize winners and finalists from 2004 to 2014}
#'   \item{num_finals1990_2014}{Number of Pulitzer Prize winners and finalists from 1990 to 2014}
#' }
#' @source See \url{https://fivethirtyeight.com/features/do-pulitzers-help-newspapers-keep-readers/}
"pulitzer"


#' The Rock Isn't Alone: Lots Of People Are Worried About 'The Big One'
#'
#' The raw data behind the story
#' "The Rock Isn't Alone: Lots Of People Are Worried About 'The Big One'"
#' \url{https://fivethirtyeight.com/features/the-rock-isnt-alone-lots-of-people-are-worried-about-the-big-one/}.
#'
#' @format A data frame with 1013 rows representing respondents and 11 variables:
#' \describe{
#'   \item{worry_general}{In general, how worried are you about earthquakes?}
#'   \item{worry_bigone}{How worried are you about the "Big One," a massive, catastrophic earthquake?}
#'   \item{will_occur}{Do you think the "Big One" will occur in your lifetime?}
#'   \item{experience}{Have you ever experienced an earthquake?}
#'   \item{prepared }{Have you or anyone in your household taken any precautions for an earthquake (packed an earthquake survival kit, prepared an evacuation plan, etc.)?}
#'   \item{fam_san_andreas}{How familiar are you with the San Andreas Fault line?}
#'   \item{fam_yellowstone}{How familiar are you with the Yellowstone Supervolcano?}
#'   \item{age}{Age}
#'   \item{female}{Gender}
#'   \item{hhold_income}{How much total combined money did all members of your HOUSEHOLD earn last year?}
#'   \item{region}{US Region}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/san-andreas}
"san_andreas"


#' How Americans Like Their Steak
#'
#' The raw data behind the story
#' "How Americans Like Their Steak"
#' \url{https://fivethirtyeight.com/features/how-americans-like-their-steak/}.
#'
#' @format A data frame with 550 rows representing respondents and 15 variables:
#' \describe{
#'   \item{respondent_id}{Respondent ID}
#'   \item{lottery_a}{not sure}
#'   \item{smoke}{Is respondent a smoker?}
#'   \item{alcohol}{Is respondent a drinker?}
#'   \item{gamble}{Is respondent a gambler?}
#'   \item{skydiving}{Is respondent a skydiver?}
#'   \item{speed}{not sure}
#'   \item{cheated}{not sure}
#'   \item{steak}{not sure}
#'   \item{steak_prep}{Preferred steak preparation}
#'   \item{female}{Is respondent female?}
#'   \item{age}{Age}
#'   \item{hhold_income}{Household income}
#'   \item{educ}{Education level}
#'   \item{region}{Region of US}
#' }
#' @source See \url{https://fivethirtyeight.com/features/how-americans-like-their-steak/}
"steak_survey"


#' A Complete Catalog Of Every Time Someone Cursed Or Bled Out In A Quentin Tarantino Movie
#'
#' The raw data behind the story
#' "A Complete Catalog Of Every Time Someone Cursed Or Bled Out In A Quentin Tarantino Movie"
#' \url{https://fivethirtyeight.com/features/complete-catalog-curses-deaths-quentin-tarantino-films/}.
#' An analysis using this data was contributed by Olivia Barrows, Jojo Miller, and Jayla Nakayama
#' as a package vignette at
#' \url{http://fivethirtyeight-r.netlify.com/articles/tarantino_swears.html}.
#'
#' @format A data frame with 1894 rows representing curse/death instances and 4 variables:
#' \describe{
#'   \item{movie}{Film title}
#'   \item{profane}{Whether the event was a profane word (TRUE) or a death (FALSE)}
#'   \item{word}{The specific profane word, if the event was a word}
#'   \item{minutes_in}{The number of minutes into the film the event occurred}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/tarantino}
"tarantino"


#' Why Some Tennis Matches Take Forever
#'
#' The raw data behind the story
#' "Why Some Tennis Matches Take Forever"
#' \url{https://fivethirtyeight.com/features/why-some-tennis-matches-take-forever/}.
#'
#' @format A data frame with 205 rows representing tournaments and 5 variables:
#' \describe{
#'   \item{tournament}{Name of event}
#'   \item{surface}{Court surface used at the event}
#'   \item{sec_added}{Seconds added per point for this event on this surface in years shown, from regression model controlling for players, year and other factors}
#'   \item{year_start}{Start year for data used from this tournament in regression}
#'   \item{year_end}{End year for data used from this tournament in regression}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/tennis-time}
#' @seealso \code{\link{tennis_players_time}} and \code{\link{tennis_serve_time}}
"tennis_events_time"

#' Why Some Tennis Matches Take Forever
#'
#' The raw data behind the story
#' "Why Some Tennis Matches Take Forever"
#' \url{https://fivethirtyeight.com/features/why-some-tennis-matches-take-forever/}.
#'
#' @format A data frame with 218 rows representing players and 2 variables:
#' \describe{
#'   \item{player}{Player Name}
#'   \item{sec_added}{Weighted average of seconds added per point as loser and winner of matches, 1991-2015, from regression model controlling for tournament, surface, year and other factors}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/tennis-time}
#' @seealso \code{\link{tennis_events_time}} and \code{\link{tennis_serve_time}}
"tennis_players_time"

#' Why Some Tennis Matches Take Forever
#'
#' The raw data behind the story
#' "Why Some Tennis Matches Take Forever"
#' \url{https://fivethirtyeight.com/features/why-some-tennis-matches-take-forever/}.
#'
#' @format A data frame with 120 rows representing serves and 7 variables:
#' \describe{
#'   \item{server}{Name of player serving at 2015 French Open}
#'   \item{sec_between}{Time in seconds between end of marked point and next serve, timed by stopwatch app}
#'   \item{opponent}{Opponent, receiving serve}
#'   \item{game_score}{Score in the current game during the timed interval between points}
#'   \item{set}{Set number, out of five}
#'   \item{game}{Score in games within the set}
#'   \item{date}{Date}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/tennis-time}
#' @seealso \code{\link{tennis_events_time}} and \code{\link{tennis_players_time}}
"tennis_serve_time"



#' How Trump Hacked The Media
#'
#' The raw data behind the story
#' "How Trump Hacked The Media"
#' \url{https://fivethirtyeight.com/features/how-donald-trump-hacked-the-media/}.
#'
#' @format A data frame with 286 rows representing lead stories and 3 variables:
#' \describe{
#'   \item{date}{Date of lead story about Donald Trump.}
#'   \item{major_cat}{Story classification}
#'   \item{detail}{}
#' }
#' @source Memeorandum \url{http://www.memeorandum.com/}.
"trump_news"


#' The World's Favorite Donald Trump Tweets
#'
#' The raw data behind the story
#' "The World's Favorite Donald Trump Tweets"
#' \url{https://fivethirtyeight.com/features/the-worlds-favorite-donald-trump-tweets/}.
#' Tweets posted on twitter by Donald Trump (@@realDonaldTrump).
#' An analysis using this data was contributed by Adam Spannbauer as a package vignette at
#' \url{http://fivethirtyeight-r.netlify.com/articles/trump_twitter.html}.
#'
#' @format A data frame with 448 rows representing tweets and 3 variables:
#' \describe{
#'   \item{id}{}
#'   \item{created_at}{}
#'   \item{text}{}
#' }
#' @source Twitter \url{https://twitter.com/realdonaldtrump}
"trump_twitter"


#' The Most Common Unisex Names In America: Is Yours One Of Them?
#'
#' The raw data behind the story
#' "The Most Common Unisex Names In America: Is Yours One Of Them?"
#' \url{https://fivethirtyeight.com/features/there-are-922-unisex-names-in-america-is-yours-one-of-them/}.
#'
#' @format A data frame with 919 rows representing names and 5 variables:
#' \describe{
#'   \item{name}{First names from the Social Security Administration}
#'   \item{total}{Total number of living Americans with the name}
#'   \item{male_share}{Percentage of people with the name who are male}
#'   \item{female_share}{Percentage of people with the name who are female}
#'   \item{gap}{Gap between male_share and female_share}
#' }
#' @source Social Security Administration \url{https://www.ssa.gov/oact/babynames/limits.html}.  See \url{https://github.com/fivethirtyeight/data/tree/master/unisex-names}.
"unisex_names"



#' Where People Go To Check The Weather
#'
#' The raw data behind the story
#' "Where People Go To Check The Weather"
#' \url{https://fivethirtyeight.com/features/weather-forecast-news-app-habits/}.
#'
#' @format A data frame with 928 rows representing respondents and 9 variables:
#' \describe{
#'   \item{respondent_id}{Respondent ID}
#'   \item{ck_weather}{Do you typically check a daily weather report?}
#'   \item{weather_source}{How do you typically check the weather?}
#'   \item{weather_source_site}{If they responded "A specific website or app" when asked how they typically check the weather, they were asked to write-in the app or website they used.}
#'   \item{ck_weather_watch}{If you had a smartwatch (like the soon to be released Apple Watch), how likely or unlikely would you be to check the weather on that device?}
#'   \item{age}{Age}
#'   \item{female}{Gender}
#'   \item{hhold_income}{How much total combined money did all members of your HOUSEHOLD earn last year?}
#'   \item{region}{US Region}
#' }
#' @source The source of the data is a Survey Monkey Audience poll commissioned by FiveThirtyEight and conducted from April 6 to April 10, 2015.  See \url{https://github.com/fivethirtyeight/data/tree/master/weather-check}
"weather_check"

#' Can You Rule Riddler Nation?
#'
#' The raw data behind the story
#' "Can You Rule Riddler Nation?"
#' \url{https://fivethirtyeight.com/features/can-you-rule-riddler-nation/}.
#' Analysis of the submitted solutions can be found at: \url{https://fivethirtyeight.com/features/can-you-save-the-drowning-swimmer/}
#'
#' @format A data frame with 1387 rows representing submissions and 11 variables:
#' \describe{
#'   \item{castle1}{Number of troops out of 100 send to castle 1}
#'   \item{castle2}{Number of troops out of 100 send to castle 2}
#'   \item{castle3}{Number of troops out of 100 send to castle 3}
#'   \item{castle4}{Number of troops out of 100 send to castle 4}
#'   \item{castle5}{Number of troops out of 100 send to castle 5}
#'   \item{castle6}{Number of troops out of 100 send to castle 6}
#'   \item{castle7}{Number of troops out of 100 send to castle 7}
#'   \item{castle8}{Number of troops out of 100 send to castle 8}
#'   \item{castle9}{Number of troops out of 100 send to castle 9}
#'   \item{castle10}{Number of troops out of 100 send to castle 10}
#'   \item{reason}{Why did you choose your troop deployment?}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/riddler-castles}
#'
#' @examples
#' # To convert data frame to tidy data (long) format, run
#' library(tidyverse)
#' library(stringr)
#' riddler_castles_tidy<-riddler_castles %>%
#'    gather(key = castle , value = soldiers, castle1:castle10) %>%
#'    mutate(castle = as.numeric(str_replace(castle, "castle","")))
#' @seealso \code{\link{riddler_castles2}}
"riddler_castles"


#' The Battle For Riddler Nation, Round 2
#'
#' The raw data behind the story
#' "The Battle For Riddler Nation, Round 2"
#' \url{https://fivethirtyeight.com/features/the-battle-for-riddler-nation-round-2/}.
#' Analysis of the submitted solutions can be found at: \url{https://fivethirtyeight.com/features/how-much-should-you-bid-for-that-painting/}
#'
#' @format A data frame with 932 rows representing submissions and 11 variables:
#' \describe{
#'   \item{castle1}{Number of troops out of 100 send to castle 1}
#'   \item{castle2}{Number of troops out of 100 send to castle 2}
#'   \item{castle3}{Number of troops out of 100 send to castle 3}
#'   \item{castle4}{Number of troops out of 100 send to castle 4}
#'   \item{castle5}{Number of troops out of 100 send to castle 5}
#'   \item{castle6}{Number of troops out of 100 send to castle 6}
#'   \item{castle7}{Number of troops out of 100 send to castle 7}
#'   \item{castle8}{Number of troops out of 100 send to castle 8}
#'   \item{castle9}{Number of troops out of 100 send to castle 9}
#'   \item{castle10}{Number of troops out of 100 send to castle 10}
#'   \item{reason}{Why did you choose your troop deployment?}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/riddler-castles}
#'
#' @examples
#' # To convert data frame to tidy data (long) format, run
#' library(tidyverse)
#' library(stringr)
#' riddler_castles_tidy<-riddler_castles2 %>%
#'    gather(key = castle , value = soldiers, castle1:castle10) %>%
#'    mutate(castle = as.numeric(str_replace(castle, "castle","")))
#' @seealso \code{\link{riddler_castles}}
"riddler_castles2"


#' Trump Might Be The First President To Scrap A National Monument
#'
#' The raw data behind the story
#' "Trump Might Be The First President To Scrap A National Monument"
#' \url{https://fivethirtyeight.com/features/trump-might-be-the-first-president-to-scrap-a-national-monument/}.
#'
#' @format A data frame with 344 rows representing acts and 9 variables (Note that 7 of the original rows failed to parse and are omitted here):
#' \describe{
#'   \item{current_name}{Current name of piece of land designated under the Antiquities Act}
#'   \item{states}{State(s) or territory where land is located}
#'   \item{original_name}{If included, original name of piece of land designated under the Antiquities Act}
#'   \item{current_agency}{Current land management agency. NPS = National Parks Service, BLM = Bureau of Land Management, USFS = US Forest Service, FWS = US Fish and Wildlife Service, NOAA = National Oceanic and National Oceanic and Atmospheric Administration}
#'   \item{action}{Type of action taken on land}
#'   \item{date}{Date of action}
#'   \item{year}{Year of action}
#'   \item{pres_or_congress}{President or congress that issued action}
#'   \item{acres_affected}{Acres affected by action. Note that total current acreage is not included. National monuments that cover ocean are listed in square miles.}
#' }
#' @source National Parks Conservation Association \url{https://www.npca.org/} and National Parks Service Archeology Program \url{https://www.nps.gov/history/archeology/sites/antiquities/MonumentsList.htm}
"antiquities_act"

#' The Save Ruined Relief Pitching. The Goose Egg Can Fix It.
#'
#' The raw data behind the story
#' "The Save Ruined Relief Pitching. The Goose Egg Can Fix It."
#' \url{https://fivethirtyeight.com/features/goose-egg-new-save-stat-relief-pitchers/}.
#'
#' @format A data frame with 30,533 rows representing pitchers and 12 variables:
#' \describe{
#'   \item{name}{Pitcher name}
#'   \item{year}{Start year of season}
#'   \item{team}{Retrosheet team code}
#'   \item{league}{NL or AL}
#'   \item{goose_eggs}{Goose eggs}
#'   \item{broken_eggs}{Broken eggs}
#'   \item{mehs}{Mehs}
#'   \item{league_average_gpct}{League-average goose percentage}
#'   \item{ppf}{Pitcher park factor}
#'   \item{replacement_gpct}{Replacement-level goose percentage}
#'   \item{gwar}{Goose Wins Above Replacement}
#'   \item{key_retro}{Retrosheet unique player identifier}
#' }
#' @source Retrosheet \url{http://www.retrosheet.org/}
"goose"

#' For A Trump Nominee, Neil Gorsuch’s Record Is Surprisingly Moderate On Immigration
#'
#' The raw data behind the story
#' "For A Trump Nominee, Neil Gorsuch’s Record Is Surprisingly Moderate On Immigration"
#' \url{https://fivethirtyeight.com/features/for-a-trump-nominee-neil-gorsuchs-record-is-surprisingly-moderate-on-immigration/}.
#'
#' @format A data frame with 954 rows representing cases and 13 variables:
#' \describe{
#'   \item{title}{Name of the case}
#'   \item{date}{Date of decision}
#'   \item{federalreporter_cit}{Case citation, as listed in the Federal Reporter Series}
#'   \item{westlaw_cit}{Case citation, Westlaw format}
#'   \item{issue}{Issue number, in cases divided into multiple issues}
#'   \item{weight}{Weight per issue (total weight per case equals one)}
#'   \item{judge1}{Name of first judge}
#'   \item{judge2}{Name of second judge}
#'   \item{judge3}{Name of third judge}
#'   \item{vote1_liberal}{Vote of first judge. 1 = liberal, 0 = conservative.}
#'   \item{vote2_liberal}{Vote of second judge. 1 = liberal, 0 = conservative.}
#'   \item{vote3_liberal}{Vote of third judge. 1 = liberal, 0 = conservative.}
#'   \item{category}{Category of case, immigration or discrimination}
#'   }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/tenth-circuit}
#' @note In immigration cases, partial relief to immigration petitioner is coded as liberal because the petitioner typically seeks just one core remedy (e.g., withholding of removal, adjustment of status, or asylum); in discrimination cases, partial relief is coded as multiple issues because the plaintiff often seeks separate remedies under multiple claims (e.g., disparate treatment, retaliation, etc.) and different sources of law.
"tenth_circuit"
