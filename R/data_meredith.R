#' American Health Care Act Polls
#'
#' The raw data behind the story
#' "Why The GOP Is So Hell-Bent On Passing An Unpopular Health Care Bill"
#' \url{https://fivethirtyeight.com/features/why-the-gop-is-so-hell-bent-on-passing-an-unpopular-health-care-bill}.
#'
#' @format A data frame with 15 rows representing polls and 7 variables:
#' \describe{
#'   \item{start}{Start date of the poll.}
#'   \item{end}{End date of the poll.}
#'   \item{pollster}{The entity that conducts and collects information from the poll.}
#'   \item{favor}{The number of affirmative responses to the question at the pollster.}
#'   \item{oppose}{The number of negative reponses to the question at the pollster.}
#'   \item{url}{The website associated with the polling question.}
#'   \item{text}{The polling question asked at the pollster.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/ahca-polls/README.md}
#'  @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' ahca_polls_tidy <- ahca_polls %>%
#'   gather(opinion, count, -c(start, end, pollster, text, url))
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
#' @format A data frame with 887 rows representing the Bachelorette and Bachelor contestants and 23 variables:
#' \describe{
#'   \item{show}{Bachelor or Bachelorette.}
#'   \item{season}{Which season?}
#'   \item{contestant}{An identifier for the contestant in a given season.}
#'   \item{elimination_1}{Who was eliminated in week 1.}
#'   \item{elimination_2}{Who was eliminated in week 2.}
#'   \item{elimination_3}{Who was eliminated in week 3.}
#'   \item{elimination_4}{Who was eliminated in week 4.}
#'   \item{elimination_5}{Who was eliminated in week 5.}
#'   \item{elimination_6}{Who was eliminated in week 6.}
#'   \item{elimination_7}{Who was eliminated in week 7.}
#'   \item{elimination_8}{Who was eliminated in week 8.}
#'   \item{elimination_9}{Who was eliminated in week 9.}
#'   \item{elimination_10}{Who was eliminated in week 10.}
#'   \item{dates_1}{Who was on which date in week 1.}
#'   \item{dates_2}{Who was on which date in week 2.}
#'   \item{dates_3}{Who was on which date in week 3.}
#'   \item{dates_4}{Who was on which date in week 4.}
#'   \item{dates_5}{Who was on which date in week 5.}
#'   \item{dates_6}{Who was on which date in week 6.}
#'   \item{dates_7}{Who was on which date in week 7.}
#'   \item{dates_8}{Who was on which date in week 8.}
#'   \item{dates_9}{Who was on which date in week 9.}
#'   \item{dates_10}{Who was on which date in week 10.}
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
#' @format A data frame with 85 rows representing Halloween candy and 13 variables:
#' \describe{
#'   \item{competitorname}{The name of the Halloween candy.}
#'   \item{chocolate}{Does it contain chocolate?}
#'   \item{fruity}{Is it fruit flavored?}
#'   \item{caramel}{Is there caramel in the candy?}
#'   \item{peanutyalmondy}{Does it contain peanuts, peanut butter or almonds?}
#'   \item{nougat}{Does it contain nougat?}
#'   \item{crispedricewafer}{Does it contain crisped rice, wafers, or a cookie component?}
#'   \item{hard}{Is it a hard candy?}
#'   \item{bar}{Is it a candy bar?}
#'   \item{pluribus}{Is it one of many candies in a bag or box?}
#'   \item{surgarpercent}{The percentile of sugar it falls under within the data set.}
#'   \item{pricepercent}{The unit price percentile compared to the rest of the set.}
#'   \item{winpercent}{The overall win percentage according to 269,000 matchups.}
#' }
#' @source See \url {https://github.com/fivethirtyeight/data/tree/master/candy-power-ranking}
#'  @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' candy_rankings_tidy <- candy_rankings %>%
#'   gather(characteristics, present, -c(competitorname, sugarpercent, pricepercent, winpercent)) %>%
#'   mutate(present = as.logical(present)) %>%
#'   arrange(competitorname)
"candy_rankings"



#' Chess Transfers
#'
#' The raw data behind the story
#' "American Chess Is Great Again"
#' \url{https://fivethirtyeight.com/features/american-chess-is-great-again/}.
#'
#' @format A data frame with 932 rows representing international player transfers and 5 variables:
#' \describe{
#'   \item{url}{The corresponding website on the World Chess Federation page which details the transfers of a given year.}
#'   \item{id}{An numeric identifier for the chess player who transfered.}
#'   \item{federation}{The current national federation of the chess player}
#'   \item{former_fed}{The national federation from which the chress player has transfered.}
#'   \item{transfer}{The date at which the transfer took place.}
#' }
#' @source World Chess Federation \url{https://ratings.fide.com/fedchange.phtml}
"chess_transfers"



#' Congress Generic Ballot Polls 
#'
#' The raw data behind the story
#' "Are Democrats Winning The Race For Congress?"
#' \url{https://projects.fivethirtyeight.com/congress-generic-ballot-polls/}.
#'
#' @format A data frame with 934 rows representing polls and 21 variables:
#' \describe{
#'   \item{subgroup}{}
#'   \item{modeldate}{}
#'   \item{startdate}{Start date of the poll.}
#'   \item{enddate}{End date of the poll.}
#'   \item{pollster}{The organization that conducted the poll (rather than the organization that paid for or sponsored it)}
#'   \item{grade}{}
#'   \item{samplesize}{}
#'   \item{population}{}
#'   \item{weight}{}
#'   \item{influence}{}
#'   \item{dem}{}
#'   \item{rep}{}
#'   \item{adjusted_dem}{}
#'   \item{adjusted_rep}{}
#'   \item{multiversions}{}
#'   \item{tracking}{}
#'   \item{url}{}
#'   \item{poll_id}{}
#'   \item{question_id}{}
#'   \item{created_date}{}
#'   \item{timestamp}{}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/congress-generic-ballot/README.md}
"generic_polllist"



#' Congress Generic Ballot Polls 
#'
#' The raw data behind the story
#' "Are Democrats Winning The Race For Congress?"
#' \url{https://projects.fivethirtyeight.com/congress-generic-ballot-polls/}.
#'
#' @format A data frame with 751 rows representing polls and 9 variables:
#' \describe{
#'   \item{model_date}{}
#'   \item{dem_estimate}{}
#'   \item{dem_hi}{}
#'   \item{dem_lo}{}
#'   \item{rep_estimate}{}
#'   \item{rep_hi}{}
#'   \item{rep_lo}{}
#'   \item{timestamp}{}
#'  
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/congress-generic-ballot/README.md}
"generic_topline"



#' An Inconvenient Sequel
#'
#' The raw data behind the story
#' "Al Gore’s New Movie Exposes The Big Flaw In Online Movie Ratings"
#' \url{https://fivethirtyeight.com/features/al-gores-new-movie-exposes-the-big-flaw-in-online-movie-ratings/}.
#'
#' @format A data frame with 80053 rows representing movie ratings and 27 variables:
#' \describe{
#'   \item{timestamp}{The date at which the rating was recorded.}
#'   \item{respondents}{The number of respondents in a category associated with a given timestamp.}
#'   \item{category}{The subgroups of respondents differentiated by demographics like gender, age, and nationality.}
#'   \item{link}{The website associated with a given category's responses.}
#'   \item{average}{The average rating reported by a given category.}
#'   \item{mean}{The mean rating reported by a given category.}
#'   \item{median}{The median rating reported by a given category.}
#'   \item{votes_!}{The count of votes denoting a rating of one that respondents gave.}
#'   \item{votes_2}{The count of votes denoting a rating of two that respondents gave.}
#'   \item{votes_3}{The count of votes denoting a rating of three that respondents gave.}
#'   \item{votes_4}{The count of votes denoting a rating of four that respondents gave.}
#'   \item{votes_5}{The count of votes denoting a rating of five that respondents gave.}
#'   \item{votes_6}{The count of votes denoting a rating of six that respondents gave.}
#'   \item{votes_7}{The count of votes denoting a rating of seven that respondents gave.}
#'   \item{votes_8}{The count of votes denoting a rating of eight that respondents gave.}
#'   \item{votes_9}{The count of votes denoting a rating of nine that respondents gave.}
#'   \item{votes_10}{The count of votes denoting a rating of ten that respondents gave.}
#'   \item{pct_1}{The percentage of votes denoting a rating of one that respondents gave.}
#'   \item{pct_2}{The percentage of votes denoting a rating of two that respondents gave.}
#'   \item{pct_3}{The percentage of votes denoting a rating of three that respondents gave.}
#'   \item{pct_4}{The percentage of votes denoting a rating of four that respondents gave.}
#'   \item{pct_5}{The percentage of votes denoting a rating of five that respondents gave.}
#'   \item{pct_6}{The percentage of votes denoting a rating of six that respondents gave.}
#'   \item{pct_7}{The percentage of votes denoting a rating of seven that respondents gave.}
#'   \item{pct_8}{The percentage of votes denoting a rating of eight that respondents gave.}
#'   \item{pct_9}{The percentage of votes denoting a rating of nine that respondents gave.}
#'   \item{pct_10}{The percentage of votes denoting a rating of ten that respondents gave.}
#' }
#' @source IMBD \url{http://www.imdb.com/title/tt6322922/ratings} and 
#' see \url{https://github.com/fivethirtyeight/data/tree/master/inconvenient-sequel}
#' #'  @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' ratings_tidy <- ratings %>%
#'   gather(votes, count, -c(timestamp, respondents, category, link, average, mean, median)) %>%
#'   arrange(timestamp)
"ratings"



#' Mayweather Vs McGregor
#'
#' The raw data behind the story
#' "The Mayweather-McGregor Fight As Told Through Emojis"
#' \url{https://fivethirtyeight.com/?post_type=fte_features&p=161615}.
#'
#' @format A data frame with 12118 rows representing tweets and 7 variables:
#' \describe{
#'   \item{created_at}{Time and date at which the tweet associated with the Mayweather vs. McGregor fight was sent.}
#'   \item{emojis}{Whether or not emojis were used in the tweet about the fight.}
#'   \item{id}{A numerical identifier for each individual tweet about the fight.}
#'   \item{link}{The link to the tweet about the fight on Twitter.}
#'   \item{retweeted}{Whether or not the tweet about the fight was retweeted.}
#'   \item{screen_name}{The screen name under which the tweet about the fight was posted.}
#'   \item{text}{The text contained in the tweet about the fight.}
#' }
#' @source Twitter and see \url{https://github.com/fivethirtyeight/data/tree/master/mayweather-mcgregor}
"tweets"



#' MLB Elo
#'
#' The raw data behind the stories:
#' "The Complete History Of MLB"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-mlb/}
#' 
#' "MLB Predictions"
#' \url{https://projects.fivethirtyeight.com/2017-mlb-predictions/}.
#'
#' @format A data frame with 215080 rows representing Elo ratings and 26 variables:
#' \describe{
#'   \item{date}{The date of the game.}
#'   \item{season}{The season within which the game was played.}
#'   \item{neutral}{}
#'   \item{playoff}{}
#'   \item{team1}{One team that participated in the game.}
#'   \item{team2}{The other team that participated in the match.}
#'   \item{elo1_pre}{The Elo rating for team1 prior to the game.}
#'   \item{elo2_pre}{The Elo rating for team2 prior to the game.}
#'   \item{elo_prob1}{}
#'   \item{elo_prob2}{}
#'   \item{elo1_post}{The Elo rating for team1 after the game.}
#'   \item{elo2_post}{The Elo rating for team2 after the game.}
#'   \item{rating1_pre}{}
#'   \item{rating2_pre}{}
#'   \item{pitcher1}{An identifier of the pitcher}
#'   \item{pitcher2}{}
#'   \item{pitcher1_rating}{}
#'   \item{pitcher2_rating}{}
#'   \item{pitcher1_adj}{}
#'   \item{pitcher2_adj}{}
#'   \item{rating1_post}{}
#'   \item{rating2_post}{}
#'   \item{score1}{The number of runs scored by team1.}
#'   \item{score2}{The number of runs scored by team2.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/mlb-elo/README.md}
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
#'   \item{date}{The date that the match took place.}
#'   \item{league_id}{A numerical identifier of the league within which the match was played.}
#'   \item{team1}{One team that participated in the match.}
#'   \item{team2}{The other team that participated in the match.}
#'   \item{spi1}{The SPI score of team1.}
#'   \item{spi2}{The SPI score of team2.}
#'   \item{prob1}{The probability that team1 would have won the match.}
#'   \item{prob2}{The probability that team2 would have won the match.}
#'   \item{probtie}{The probability that the match would have resulted in a tie.}
#'   \item{proj_score1}{The predicted number of goals that team1 would have scored.}
#'   \item{proj_score2}{The predicted number of goals that team2 would have scored.}
#'   \item{score1}{The number of goals that team1 scored.}
#'   \item{score2}{The number of goals that team2 scored.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/soccer-spi/README.md}
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
#'   \item{name}{The name of the soccer club.}
#'   \item{league}{The name of the league to which the club belongs.}
#'   \item{rank}{A club's current global ranking.}
#'   \item{prev_rank}{A club's previous global ranking}
#'   \item{off}{Offensive rating for a given team (the higher the value the stronger the team's offense).}
#'   \item{def}{Defensive rating for a given team (the lower the value the stronger the team's defense).}
#'   \item{spi}{A club's SPI score.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/soccer-spi/README.md}
"spi_global_rankings"




