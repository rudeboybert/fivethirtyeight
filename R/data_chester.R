#' How The FiveThirtyEight Senate Forecast Model Works
#'
#' The raw data behind the story
#' "How The FiveThirtyEight Senate Forecast Model Works"
#' \url{http://fivethirtyeight.com/features/how-the-fivethirtyeight-senate-forecast-model-works/}.
#'
#' @format A data frame with 207 rows representing US state elections and 5 variables:
#' \describe{
#'   \item{state}{Election} 
#'   \item{year}{Year of election} 
#'   \item{candidate}{Last name} 
#'   \item{forecast_prob}{Probability of winning election per FiveThirtyEight Election Day forecast} 
#'   \item{result}{`Win` or `Loss`} 
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/forecast-methodology}
"hist_senate_preds"



#' Every mention of the 2016 primary candidates in hip-hop songs
#'
#' The raw data behind the story
#' "Every mention of the 2016 primary candidates in hip-hop songs"
#' \url{http://projects.fivethirtyeight.com/clinton-trump-hip-hop-lyrics/}.
#'
#' @format A data frame with 377 rows representing hip-hop songs referencing POTUS candidates in 2016 and 8 variables:
#' \describe{
#'   \item{candidate}{Candidate referenced} 
#'   \item{song}{Song name} 
#'   \item{artist}{Artist name} 
#'   \item{sentiment}{Positive, negative or neutral} 
#'   \item{theme}{Theme of lyric} 
#'   \item{album_release_date}{Date of album release} 
#'   \item{line}{Lyrics} 
#'   \item{url}{Genius link} 
#' }
#' @source Genius \url{http://genius.com/}
"hiphop_cand_lyrics"



#' The NCAA Bracket: Checking Our Work
#'
#' The raw data behind the story
#' "The NCAA Bracket: Checking Our Work"
#' \url{http://fivethirtyeight.com/datalab/the-ncaa-bracket-checking-our-work}.
#'
#' @format A data frame with 253 rows representing NCAA men's basketball tournament games and 6 variables:
#' \describe{
#'   \item{year}{} 
#'   \item{round}{} 
#'   \item{favorite}{} 
#'   \item{underdog}{} 
#'   \item{favorite_prob}{} 
#'   \item{favorite_win}{} 
#' }
#' @source See \url{http://fivethirtyeight.com/datalab/the-ncaa-bracket-checking-our-work/}
"hist_ncaa_bball_casts"



#' Where Are America's Librarians?
#'
#' The raw data behind the story
#' "Where Are America's Librarians?"
#' \url{http://fivethirtyeight.com/datalab/where-are-americas-librarians}.
#'
#' @format A data frame with 371 rows representing areas in the US and 9 variables:
#' \describe{
#'   \item{prim_state}{} 
#'   \item{area_name}{} 
#'   \item{tot_emp}{} 
#'   \item{emp_prse}{} 
#'   \item{jobs_1000}{} 
#'   \item{loc_quotient}{} 
#'   \item{mor}{} 
#'   \item{high_emp}{} 
#'   \item{low_emp}{} 
#' }
#' @source Bureau of Labor Statistics \url{http://www.bls.gov/oes/current/oes254021.htm#(1)}
"librarians"



#' "Mad Men" Is Ending. What's Next For The Cast?
#'
#' The raw data behind the story
#' ""Mad Men" Is Ending. What's Next For The Cast?"
#' \url{http://fivethirtyeight.com/datalab/mad-men-is-ending-whats-next-for-the-cast/}.
#'
#' @format A data frame with 248 rows representing performers on TV shows and 15 variables:
#' \describe{
#'   \item{performer}{The name of the actor, according to IMDb. This is not a unique identifier - two performers appeared in more than one program} 
#'   \item{show}{The television show where this actor appeared in more than half the episodes} 
#'   \item{show_start}{The year the television show began} 
#'   \item{show_end}{The year the television show ended, "PRESENT" if the show remains on the air as of May 10. } 
#'   \item{status}{Why the actor is no longer on the program:  "END" if the show has concluded, "LEFT" if the show remains on the air.} 
#'   \item{charend}{The year the character left the show. Equal to "Show End" if the performer stayed on until the final season. } 
#'   \item{years_since}{2015 minus CharEnd} 
#'   \item{num_lead}{The number of leading roles in films the performer has appeared in since and including "CharEnd", according to OpusData} 
#'   \item{num_support}{The number of leading roles in films the performer has appeared in since and including "CharEnd", according to OpusData} 
#'   \item{num_shows}{The number of seasons of television of which the performer appeared in at least half the episodes since and including "CharEnd", according to OpusData} 
#'   \item{score}{#LEAD + #Shows + 0.25*(#SUPPORT)} 
#'   \item{score_div_y}{"Score" divided by "Years Since"} 
#'   \item{lead_notes}{The list of films  counted in #LEAD} 
#'   \item{support_notes}{The list of films  counted in #SUPPORT} 
#'   \item{show_notes}{The seasons of shows counted in #Shows} 
#' }
#' @source IMDB \url{http://imdb.com}
"mad_men"



#' Dear Mona, How Many Flight Attendants Are Men?
#'
#' The raw data behind the story
#' "Dear Mona, How Many Flight Attendants Are Men?"
#' \url{http://fivethirtyeight.com/datalab/dear-mona-how-many-flight-attendants-are-men/}.
#'
#' @format A data frame with 320 rows representing job categories and 2 variables:
#' \describe{
#'   \item{job_category}{Category of job} 
#'   \item{percentage_male}{Percentage of US employees that are male} 
#' }
#' @source IPUMS 2012 \url{https://usa.ipums.org/usa/}
"male_flight_attend"



#' The Best MLB All-Star Teams Ever
#'
#' The raw data behind the story
#' "The Best MLB All-Star Teams Ever"
#' \url{http://fivethirtyeight.com/features/the-best-mlb-all-star-teams-ever/}.
#'
#' @format A data frame with 172 rows representing Major League Baseball seasons and 16 variables:
#' \describe{
#'   \item{yearID}{The season in question} 
#'   \item{gameNum}{Order of All-Star Game for the season (in years w/ multiple ASGs; set to 0 when only 1 per year)} 
#'   \item{gameID}{Game ID at Baseball-Reference.com} 
#'   \item{lgID}{League of All-Star team} 
#'   \item{tm_OFF_talent}{Total runs of offensive talent above average per game (36 plate appearances)} 
#'   \item{tm_DEF_talent}{Total runs of fielding talent above average per game (36 plate appearances)} 
#'   \item{tm_PIT_talent}{Total runs of pitching talent above average per game (9 innings)} 
#'   \item{MLB_avg_RPG}{MLB average runs scored/game that season} 
#'   \item{talent_RSPG}{Expected runs scored per game based on talent (MLB R/G + team OFF talent)} 
#'   \item{talent_RAPG}{Expected runs allowed per game based on talent (MLB R/G - team DEF talent- team PIT talent)} 
#'   \item{unadj_PYTH}{Unadjusted pythagorean talent rating; PYTH =(RSPG^1.83)/(RSPG^1.83+RAPG^1.83)} 
#'   \item{timeline_adj}{Estimate of relative league quality where 2015 MLB = 1.00} 
#'   \item{SOS}{Strength of schedule faced; adjusts an assumed .500 SOS downward based on timeline adjustment} 
#'   \item{adj_PYTH}{Adjusted pythagorean record; =(SOS*unadj_Pyth)/((2*unadj_Pyth*SOS)-SOS-unadj_Pyth+1)} 
#'   \item{no_1_player}{Best player according to combo of actual PA/IP and talent} 
#'   \item{no_2_player}{2nd-best player according to combo of actual PA/IP and talent} 
#' }
#' @source http://baseball-reference.com , http://chadwick-bureau.com, Fangraphs 
"mlb_as_team_talent"



#' The Best MLB All-Star Teams Ever
#'
#' The raw data behind the story
#' "The Best MLB All-Star Teams Ever"
#' \url{http://fivethirtyeight.com/features/the-best-mlb-all-star-teams-ever/}.
#'
#' @format A data frame with 3930 rows representing Major League Baseball players in given seasons and 15 variables:
#' \describe{
#'   \item{bbref_id}{Player's ID at Baseball-Reference.com} 
#'   \item{yearid}{The season in question} 
#'   \item{gamenum}{Order of All-Star Game for the season (in years w/ multiple ASGs; set to 0 when only 1 per year)} 
#'   \item{gameid}{Game ID at Baseball-Reference.com} 
#'   \item{lgid}{League of All-Star team} 
#'   \item{startingpos}{Postion (according to baseball convention; 1=pitcher, 2=catcher, etc.) if starter} 
#'   \item{off600}{Estimate of offensive talent, in runs above league average per 600 plate appearances} 
#'   \item{def600}{Estimate of fielding talent, in runs above league average per 600 plate appearances} 
#'   \item{pitch200}{Estimate of pitching talent, in runs above league average per 200 innings pitched} 
#'   \item{asg_pa}{Number of plate appearances in the All-Star Game itself} 
#'   \item{asg_ip}{Number of innings pitched in the All-Star Game itself} 
#'   \item{offper9innasg}{Expected offensive runs added above average (from talent) based on PA in ASG, scaled to a 9-inning game} 
#'   \item{defper9innasg}{Expected defensive runs added above average (from talent) based on PA in ASG, scaled to a 9-inning game} 
#'   \item{pitper9innasg}{Expected pitching runs added above average (from talent) based on IP in ASG, scaled to a 9-inning game} 
#'   \item{totper9innasg}{Expected runs added above average (from talent) based on PA/IP in ASG, scaled to a 9-inning game} 
#' }
#' @source http://baseball-reference.com , http://chadwick-bureau.com, Fangraphs 
"mlb_as_play_talent"



#' A Handful Of Cities Are Driving 2016's Rise In Murder
#'
#' The raw data behind the story
#' "A Handful Of Cities Are Driving 2016's Rise In Murder"
#' \url{http://fivethirtyeight.com/features/a-handful-of-cities-are-driving-2016s-rise-in-murders/}.
#'
#' @format A data frame with 79 rows representing large US cities and 7 variables:
#' \describe{
#'   \item{city}{Name of city} 
#'   \item{state}{Name of state} 
#'   \item{murders_2015}{Total murders in 2015} 
#'   \item{murders_2016}{Total murders in 2016 (as of \code{as_of} date)} 
#'   \item{change}{2016 - 2015} 
#'   \item{source}{Data source for row} 
#'   \item{as_of}{2016 collection date} 
#' }
#' @source Listed as \code{source} variable in dataset 
"murder_2016_prelim"



#' Projecting The Top 50 Players In The 2015 NBA Draft Class
#'
#' The raw data behind the story
#' "Projecting The Top 50 Players In The 2015 NBA Draft Class"
#' \url{http://fivethirtyeight.com/features/projecting-the-top-50-players-in-the-2015-nba-draft-class/}.
#'
#' @format A data frame with 1090 rows representing National Basketball Association players/prospects and 9 variables:
#' \describe{
#'   \item{player}{Player name} 
#'   \item{position}{The player's position going into the draft} 
#'   \item{id}{The player's identification code} 
#'   \item{draft_year}{The year the player was eligible for the NBA draft} 
#'   \item{projected_spm}{The model's projected statistical plus/minus over years 2-5 of the player's NBA career} 
#'   \item{superstar}{Probability of becoming a superstar player (1 per draft, SPM >= +3.3)} 
#'   \item{starter}{Probability of becoming a starting-caliber player (10 per draft, SPM >= +0.5)} 
#'   \item{role_player}{Probability of becoming a role player (25 per draft, SPM >= -1.4)} 
#'   \item{bust}{Probability of becoming a bust (everyone else, SPM < -1.4)} 
#' }
#' @source See \url{http://fivethirtyeight.com/features/projecting-the-top-50-players-in-the-2015-nba-draft-class/}
"nba_draft_2015"



