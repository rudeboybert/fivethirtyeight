#' American Health Care Act Polls
#'
#' The raw data behind the story
#' "Why The GOP Is So Hell-Bent On Passing An Unpopular Health Care Bill"
#' \url{https://fivethirtyeight.com/features/why-the-gop-is-so-hell-bent-on-passing-an-unpopular-health-care-bill}.
#'
#' @format A data frame with 15 rows representing _____ and 7 variables:
#' \describe{
#'   \item{start}{}
#'   \item{end}{}
#'   \item{pollster}{}
#'   \item{favor}{}
#'   \item{oppose}{}
#'   \item{url}{}
#'   \item{text}{}
#' }
#' @source 
"ahca_polls"



#' Bachelorette / Bachelor
#'
#' The raw data behind the stories:
#' "How To Spot A Front-Runner On The ‘Bachelor’ Or ‘Bachelorette’"
#' \url{https://fivethirtyeight.com/features/the-bachelorette/}
#' 
#' "Rachel’s Season Is Fitting Neatly Into ‘Bachelorette’ History"
#' \url{https://fivethirtyeight.com/features/rachels-season-is-fitting-neatly-into-bachelorette-history/}
#' 
#' "Rachel Lindsay’s ‘Bachelorette’ Season, In Three Charts"
#' \url{https://fivethirtyeight.com/features/rachel-lindsays-bachelorette-season-in-three-charts/}.
#'
#' @format A data frame with 887 rows representing contestants and 23 variables:
#' \describe{
#'   \item{show}{Bachelor or Bachelorette}
#'   \item{season}{Which season?}
#'   \item{contestant}{An identifier for the contestant in a given season}
#'   \item{elimination_1}{Who was eliminated in week 1}
#'   \item{elimination_2}{Who was eliminated in week 2}
#'   \item{elimination_3}{Who was eliminated in week 3}
#'   \item{elimination_4}{Who was eliminated in week 4}
#'   \item{elimination_5}{Who was eliminated in week 5}
#'   \item{elimination_6}{Who was eliminated in week 6}
#'   \item{elimination_7}{Who was eliminated in week 7}
#'   \item{elimination_8}{Who was eliminated in week 8}
#'   \item{elimination_9}{Who was eliminated in week 9}
#'   \item{elimination_10}{Who was eliminated in week 10}
#'   \item{dates_1}{Who was on which date in week 1}
#'   \item{dates_2}{Who was on which date in week 2}
#'   \item{dates_3}{Who was on which date in week 3}
#'   \item{dates_4}{Who was on which date in week 4}
#'   \item{dates_5}{Who was on which date in week 5}
#'   \item{dates_6}{Who was on which date in week 6}
#'   \item{dates_7}{Who was on which date in week 7}
#'   \item{dates_8}{Who was on which date in week 8}
#'   \item{dates_9}{Who was on which date in week 9}
#'   \item{dates_10}{Who was on which date in week 10}
#' }
#' @details Eliminates connote either an elimination (starts with "E") or a rose (starts with "R"). 
#' Eliminations supercede roses. "E" connotes a standard elimination, typically at a rose ceremony. "EQ" means the contestant quits. "EF" means the contestant was fired by production. "ED" connotes a date elimination. "EU" connotes an unscheduled elimination, one that takes place at a time outside of a date or rose ceremony. 
#' "R" means the contestant received a rose. "R1" means the contestant got a first impression rose. 
#' "D1" means a one-on-one date, "D2" means a 2-on-1, "D3" means a 3-on-1 group date, and so on.
#' Weeks of the show are deliminated by rose ceremonies, and may not line up exactly with episodes.
#' @source \url{http://bachelor-nation.wikia.com/wiki/Bachelor_Nation_Wikia} and then missing seasons were filled in by ABC and FiveThirtyEight staffers \url{}.
"bachelorette"



#' Candy Power Ranking
#'
#' The raw data behind the story
#' "The Ultimate Halloween Candy Power Ranking"
#' \url{http://fivethirtyeight.com/features/the-ultimate-halloween-candy-power-ranking/}.
#'
#' @format A data frame with 85 rows representing candy and 13 variables:
#' \describe{
#'   \item{competitor_name}{}
#'   \item{chocolate}{Does it contain chocolate?}
#'   \item{fruity}{Is it fruit flavored?}
#'   \item{caramel}{Is there caramel in the candy?}
#'   \item{peanuty_almondy}{Does it contain peanuts, peanut butter or almonds?}
#'   \item{nougat}{Does it contain nougat?}
#'   \item{crisped_ricewafer}{Does it contain crisped rice, wafers, or a cookie component?}
#'   \item{hard}{Is it a hard candy?}
#'   \item{bar}{Is it a candy bar?}
#'   \item{pluribus}{Is it one of many candies in a bag or box?}
#'   \item{surgar_percent}{The percentile of sugar it falls under within the data set.}
#'   \item{price_percent}{The unit price percentile compared to the rest of the set.}
#'   \item{win_percent}{The overall win percentage according to 269,000 matchups.}
#' }
#' @source 
"candy_rankings"



#' Chess Transfers
#'
#' The raw data behind the story
#' "American Chess Is Great Again"
#' \url{https://fivethirtyeight.com/features/american-chess-is-great-again/}.
#'
#' @format A data frame with 932 rows representing _____ and 5 variables:
#' \describe{
#'   \item{timestamp}{}
#'   \item{respondents}{}
#'   \item{link}{}
#'   \item{average}{}
#'   \item{mean}{}
#'   \item{median}{}
#'   \item{1_votes}{}
#'   \item{2_votes}{}
#'   \item{3_votes}{}
#'   \item{4_votes}{}
#'   \item{5_votes}{}
#'   \item{6_votes}{}
#'   \item{7_votes}{}
#'   \item{8_votes}{}
#'   \item{9_votes}{}
#'   \item{10_votes}{}
#'   \item{1_pct}{}
#'   \item{2_pct}{}
#'   \item{3_pct}{}
#'   \item{4_pct}{}
#'   \item{5_pct}{}
#'   \item{6_pct}{}
#'   \item{7_pct}{}
#'   \item{8_pct}{}
#'   \item{9_pct}{}
#'   \item{10_pct}{}
#' }
#' @source \url{https://ratings.fide.com/fedchange.phtml}
"chess_transfers"



#' Congress Generic Ballot Polls 
#'
#' The raw data behind the story
#' ""
#' \url{http://fivethirtyeight.com/}.
#'
#' @format A data frame with 934 rows representing ______ and 21 variables:
#' \describe{
#'   \item{}{}
#'  
#' }
#' @source 
"generic_polllist"



#' Congress Generic Ballot Polls 
#'
#' The raw data behind the story
#' ""
#' \url{http://fivethirtyeight.com/}.
#'
#' @format A data frame with 751 rows representing _______ and 9 variables:
#' \describe{
#'   \item{}{}
#'  
#' }
#' @source 
"generic_topline"



#' An Inconvenient Sequel
#'
#' The raw data behind the story
#' "Al Gore’s New Movie Exposes The Big Flaw In Online Movie Ratings"
#' \url{https://fivethirtyeight.com/features/al-gores-new-movie-exposes-the-big-flaw-in-online-movie-ratings/}.
#'
#' @format A data frame with 80053 rows representing movie ratings and 27 variables:
#' \describe{
#'   \item{timestamp}{}
#'   \item{respondents}{}
#'   \item{link}{}
#'   \item{average}{}
#'   \item{mean}{}
#'   \item{median}{}
#'   \item{1_votes}{}
#'   \item{2_votes}{}
#'   \item{3_votes}{}
#'   \item{4_votes}{}
#'   \item{5_votes}{}
#'   \item{6_votes}{}
#'   \item{7_votes}{}
#'   \item{8_votes}{}
#'   \item{9_votes}{}
#'   \item{10_votes}{}
#'   \item{1_pct}{}
#'   \item{2_pct}{}
#'   \item{3_pct}{}
#'   \item{4_pct}{}
#'   \item{5_pct}{}
#'   \item{6_pct}{}
#'   \item{7_pct}{}
#'   \item{8_pct}{}
#'   \item{9_pct}{}
#'   \item{10_pct}{}
#' }
#' @source
"ratings"



#' Mayweather Vs McGregor
#'
#' The raw data behind the story
#' "The Mayweather-McGregor Fight As Told Through Emojis"
#' \url{https://fivethirtyeight.com/?post_type=fte_features&p=161615}.
#'
#' @format A data frame with 12118 rows representing tweets and 7 variables:
#' \describe{
#'   \item{created_at}{}
#'   \item{emojis}{}
#'   \item{id}{}
#'   \item{link}{}
#'   \item{retweeted}{}
#'   \item{screen_name}{}
#'   \item{text}{}
#' }
#' @source 
"tweets"



#' Index
#'
#' The raw data behind the story
#' ""
#' \url{}.
#'
#' @format A data frame with 114 rows representing _____ and 3 variables:
#' \describe{
#'   \item{dataset_url}{}
#'   \item{article_url}{}
#'   \item{live}{}
#' }
#' @source 
"index"



#' MLB Elo
#'
#' The raw data behind the stories:
#' "The Complete History Of MLB"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-mlb/}
#' 
#' "MLB Predictions"
#' \url{https://projects.fivethirtyeight.com/2017-mlb-predictions/}.
#'
#' @format A data frame with 215080 rows representing _____ and 26 variables:
#' \describe{
#'   \item{date}{}
#'   \item{season}{}
#'   \item{neutral}{}
#'   \item{playoff}{}
#'   \item{team1}{}
#'   \item{team2}{}
#'   \item{elo1_pre}{}
#'   \item{elo2_pre}{}
#'   \item{elo1_post}{}
#'   \item{elo2_post}{}
#'   \item{rating1_pre}{}
#'   \item{rating2_pre}{}
#'   \item{pitcher1}{}
#'   \item{pitcher2}{}
#'   \item{pitcher1_rating}{}
#'   \item{pitcher2_rating}{}
#'   \item{pitcher1_adj}{}
#'   \item{pitcher2_adj}{}
#'   \item{rating1_post}{}
#'   \item{rating2_post}{}
#'   \item{score1}{}
#'   \item{score2}{}
#' }
#' @source 
"mlb_elo"



#' Match-by-match SPI ratings and forecasts back to 2016
#'
#' The raw data behind the stories
#' "Club Soccer Predictions"
#' \url{https://projects.fivethirtyeight.com/soccer-predictions/}
#' 
#'  "Global Club Soccer Rankings"
#' \url{https://projects.fivethirtyeight.com/global-club-soccer-rankings/}.
#'
#' @format A data frame with 10182 rows representing soccer matches and 13 variables:
#' \describe{
#'   \item{date}{}
#'   \item{league_id}{}
#'   \item{team1}{}
#'   \item{team2}{}
#'   \item{spi1}{}
#'   \item{spi2}{}
#'   \item{prob1}{}
#'   \item{prob2}{}
#'   \item{probtie}{}
#'   \item{proj_score1}{}
#'   \item{proj_score2}{}
#'   \item{score1}{}
#'   \item{score2}{}
#' }
#' @source 
"spi_matches"



#' Current SPI ratings and rankings for men's club teams
#'
#' The raw data behind the stories
#' "Club Soccer Predictions"
#' \url{https://projects.fivethirtyeight.com/soccer-predictions/}
#' 
#' "Global Club Soccer Rankings"
#' \url{https://projects.fivethirtyeight.com/global-club-soccer-rankings/}.
#'
#' @format A data frame with 453 rows representing soccer rankings and 7 variables:
#' \describe{
#'   \item{name}{}
#'   \item{league}{}
#'   \item{rank}{}
#'   \item{prev_rank}{}
#'   \item{off}{}
#'   \item{def}{}
#'   \item{spi}{}
#' }
#' @source 
"spi_global_rankings"




