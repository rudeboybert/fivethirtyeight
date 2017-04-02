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



#' Higher Rates Of Hate Crimes Are Tied To Income Inequality
#'
#' The raw data behind the story
#' "Higher Rates Of Hate Crimes Are Tied To Income Inequality"
#' \url{https://fivethirtyeight.com/features/higher-rates-of-hate-crimes-are-tied-to-income-inequality/}.
#'
#' @format A data frame with 51 rows representing US states and DC and 12 variables:
#' \describe{
#'   \item{state}{State name} 
#'   \item{median_house_inc}{Median household income, 2016} 
#'   \item{share_unemp_seas}{Share of the population that is unemployed (seasonally adjusted), Sept. 2016} 
#'   \item{share_pop_metro}{Share of the population that lives in metropolitan areas, 2015} 
#'   \item{share_pop_hs}{Share of adults 25 and older with a high-school degree, 2009} 
#'   \item{share_non_citizen}{Share of the population that are not U.S. citizens, 2015} 
#'   \item{share_white_poverty}{Share of white residents who are living in poverty, 2015} 
#'   \item{gini_index}{Gini Index, 2015} 
#'   \item{share_non_white}{Share of the population that is not white, 2015} 
#'   \item{share_vote_trump}{Share of 2016 U.S. presidential voters who voted for Donald Trump} 
#'   \item{hate_crimes_per_100k_splc}{Hate crimes per 100,000 population, Southern Poverty Law Center, Nov. 9-18, 2016} 
#'   \item{avg_hatecrimes_per_100k_fbi}{Average annual hate crimes per 100,000 population, FBI, 2010-2015} 
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/hate-crimes}
"hate_crimes"



#' Hip-Hop Is Turning On Donald Trump
#'
#' The raw data behind the story
#' "Hip-Hop Is Turning On Donald Trump"
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
#'   \item{show_end}{The year the television show ended, "PRESENT" if the show remains on the air as of May 10.} 
#'   \item{status}{Why the actor is no longer on the program: "END" if the show has concluded, "LEFT" if the show remains on the air.} 
#'   \item{charend}{The year the character left the show. Equal to "Show End" if the performer stayed on until the final season.} 
#'   \item{years_since}{2015 minus CharEnd} 
#'   \item{num_lead}{The number of leading roles in films the performer has appeared in since and including "CharEnd", according to OpusData} 
#'   \item{num_support}{The number of leading roles in films the performer has appeared in since and including "CharEnd", according to OpusData} 
#'   \item{num_shows}{The number of seasons of television of which the performer appeared in at least half the episodes since and including "CharEnd", according to OpusData} 
#'   \item{score}{#LEAD + #Shows + 0.25*(#SUPPORT)} 
#'   \item{score_div_y}{"Score" divided by "Years Since"} 
#'   \item{lead_notes}{The list of films counted in #LEAD} 
#'   \item{support_notes}{The list of films counted in #SUPPORT} 
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
#'   \item{percentage_male}{Percentage of workforce that are male} 
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
#'   \item{yearid}{The season in question} 
#'   \item{gamenum}{Order of All-Star Game for the season (in years w/ multiple ASGs; set to 0 when only 1 per year)} 
#'   \item{gameid}{Game ID at Baseball-Reference.com} 
#'   \item{lgid}{League of All-Star team} 
#'   \item{tm_off_talent}{Total runs of offensive talent above average per game (36 plate appearances)} 
#'   \item{tm_def_talent}{Total runs of fielding talent above average per game (36 plate appearances)} 
#'   \item{tm_pit_talent}{Total runs of pitching talent above average per game (9 innings)} 
#'   \item{mlb_avg_rpg}{MLB average runs scored/game that season} 
#'   \item{talent_rspg}{Expected runs scored per game based on talent (MLB R/G + team OFF talent)} 
#'   \item{talent_rapg}{Expected runs allowed per game based on talent (MLB R/G - team DEF talent- team PIT talent)} 
#'   \item{unadj_pyth}{Unadjusted pythagorean talent rating; PYTH =(RSPG^1.83)/(RSPG^1.83+RAPG^1.83)} 
#'   \item{timeline_adj}{Estimate of relative league quality where 2015 MLB = 1.00} 
#'   \item{sos}{Strength of schedule faced; adjusts an assumed .500 SOS downward based on timeline adjustment} 
#'   \item{adj_pyth}{Adjusted pythagorean record; =(SOS*unadj_Pyth)/((2*unadj_Pyth*SOS)-SOS-unadj_Pyth+1)} 
#'   \item{no_1_player}{Best player according to combo of actual PA/IP and talent} 
#'   \item{no_2_player}{2nd-best player according to combo of actual PA/IP and talent} 
#' }
#' @source \url{http://baseball-reference.com} , \url{http://chadwick-bureau.com}, Fangraphs 
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
#' @source \url{http://baseball-reference.com} , \url{http://chadwick-bureau.com}, Fangraphs 
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
#'   \item{murders_2015}{Number of murders in 2015} 
#'   \item{murders_2016}{Number of murder in 2016 (as of \code{as_of} date)} 
#'   \item{change}{2016 - 2015} 
#'   \item{source}{Source of data} 
#'   \item{as_of}{2016 murders up to this date} 
#' }
#' @source Listed as \code{source} variable in dataset 
"murder_2016_prelim"



#' A Handful Of Cities Are Driving 2016's Rise In Murder
#'
#' The raw data behind the story
#' "A Handful Of Cities Are Driving 2016's Rise In Murder"
#' \url{http://fivethirtyeight.com/features/a-handful-of-cities-are-driving-2016s-rise-in-murders/}.
#'
#' @format A data frame with 83 rows representing large US cities and 5 variables:
#' \describe{
#'   \item{city}{Name of city} 
#'   \item{state}{Name of state} 
#'   \item{murders_2014}{Total murders in 2014} 
#'   \item{murders_2015}{Total murders in 2015} 
#'   \item{change}{2015 - 2014} 
#' }
#' @source Unknown 
"murder_2015_final"



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



#' Accurately Counting NBA Tattoos Isn't Easy, Even If You're Up Close
#'
#' The raw data behind the story
#' "Accurately Counting NBA Tattoos Isn't Easy, Even If You're Up Close"
#' \url{http://fivethirtyeight.com/datalab/accurately-counting-nba-tattoos-isnt-easy-even-if-youre-up-close/}.
#'
#' @format A data frame with 636 rows representing National Basketball Association players and 2 variables:
#' \describe{
#'   \item{player_name}{Name of player} 
#'   \item{tattoos}{TRUE corresponds to player having tattoos, FALSE corresponds to not} 
#' }
#' @source Ethan Swan \url{http://nbatattoos.tumblr.com/}
"nba_tattoos"



#' The Rams Are Dead To Me, So I Answered 3,352 Questions To Find A New NFL Team
#'
#' The raw data behind the story
#' "The Rams Are Dead To Me, So I Answered 3,352 Questions To Find A New NFL Team"
#' \url{http://fivethirtyeight.com/features/the-rams-are-dead-to-me-so-i-answered-3352-questions-to-find-a-new-team/}.
#'
#' @format A data frame with 32 rows representing National Football League teams and 17 variables:
#' \describe{
#'   \item{team}{Name of NFL team} 
#'   \item{fan_relations}{Fan relations - Courtesy by players, coaches and front offices toward fans, and how well a team uses technology to reach them} 
#'   \item{ownership}{Ownership - Honesty; loyalty to core players and the community} 
#'   \item{players}{Players - Effort on the field, likability off it} 
#'   \item{future_wins}{Future wins - Projected wins over next 5 seasons} 
#'   \item{bandwagon}{Bandwagon Factor - Are the team's next 5 years likely to be better than their previous 5?} 
#'   \item{tradition}{Tradition - Championships/division titles/wins in team's entire history} 
#'   \item{bang_buck}{Bang for the buck - Wins per fan dollars spent} 
#'   \item{behavior}{Behavior - Suspensions by players on team since 2007, with extra weight to transgressions vs. women} 
#'   \item{nyc_prox}{Proximity to New York City} 
#'   \item{stlouis_prox}{Proximity to St. Louis} 
#'   \item{afford}{Affordability - Price of tickets, parking and concessions} 
#'   \item{small_market}{Small Market - Size of market in terms of population, where smaller is better} 
#'   \item{stadium_exp}{Stadium experience - Quality of venue; fan-friendliness of environment; frequency of game-day promotions} 
#'   \item{coaching}{Coaching - Strength of on-field leadership} 
#'   \item{uniform}{Uniform - Stylishness of uniform design, according to Uni Watch's Paul Lukas} 
#'   \item{big_market}{Big Market - Size of market in terms of population, where bigger is better} 
#' }
#' @source \url{http://www.espn.com/sportsnation/teamrankings}, \url{http://www.allourideas.org/nflteampickingsample} 
"nfl_fav_team"



#' The NFL's Uneven History Of Punishing Domestic Violence
#'
#' The raw data behind the story
#' "The NFL's Uneven History Of Punishing Domestic Violence"
#' \url{http://fivethirtyeight.com/features/nfl-domestic-violence-policy-suspensions/}.
#'
#' @format A data frame with 269 rows representing National Football League players and 7 variables:
#' \describe{
#'   \item{name}{first initial.last name} 
#'   \item{team}{team at time of suspension} 
#'   \item{games}{number of games suspended (one regular season = 16 games)} 
#'   \item{category}{personal conduct, substance abuse, peformance enhancing drugs or in-game violence} 
#'   \item{description}{description of suspension} 
#'   \item{year}{year of suspension} 
#'   \item{source}{news source} 
#' }
#' @source \url{http://en.wikipedia.org/wiki/List_of_players_and_coaches_suspended_by_the_NFL}, \url{http://www.spotrac.com/fines-tracker/nfl/suspensions/} 
"nfl_suspensions"



#' Who Goes To Meaningless NFL Games And Why?
#'
#' The raw data behind the story
#' "Who Goes To Meaningless NFL Games And Why?"
#' \url{http://fivethirtyeight.com/datalab/who-goes-to-meaningless-nfl-games-and-why/}.
#'
#' @format A data frame with 108 rows representing National Football League games and 3 variables:
#' \describe{
#'   \item{event}{NFL divisional game info} 
#'   \item{division}{NFL division} 
#'   \item{avg_tix_price}{Average ticket price} 
#' }
#' @source StubHub
"nfltix_div_avgprice"



#' Who Goes To Meaningless NFL Games And Why?
#'
#' The raw data behind the story
#' "Who Goes To Meaningless NFL Games And Why?"
#' \url{http://fivethirtyeight.com/datalab/who-goes-to-meaningless-nfl-games-and-why/}.
#'
#' @format A data frame with 32 rows representing National Football League teams and 2 variables:
#' \describe{
#'   \item{team}{Name of NFL team} 
#'   \item{avg_tix_price}{Average ticket price} 
#' }
#' @source StubHub
"nfltix_usa_avg"



#' The Football Hall Of Fame Has A Receiver Problem
#'
#' The raw data behind the story
#' "The Football Hall Of Fame Has A Receiver Problem"
#' \url{http://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/}.
#'
#' @format A data frame with 6496 rows representing National Football League wide receivers and 6 variables:
#' \describe{
#'   \item{pfr_player_id}{Player identification code at \url{Pro-Football-Reference.com}} 
#'   \item{player_name}{The player's name} 
#'   \item{career_try}{Career True Receiving Yards} 
#'   \item{career_ranypa}{Adjusted Net Yards Per Attempt (relative to average) of player's career teams, weighted by TRY w/ each team} 
#'   \item{career_wowy}{The amount by which \code{career_ranypa} exceeds what would be expected from his QBs' (age-adjusted) performance without the receiver} 
#'   \item{bcs_rating}{The number of yards per game by which a player would outgain an average receiver on the same team, after adjusting for teammate quality and age (update of \url{http://www.sabernomics.com/sabernomics/index.php/2005/02/ranking-the-all-time-great-wide-receivers/})} 
#' }
#' @source See \url{http://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/}
"nflwr_hist"



#' The Football Hall Of Fame Has A Receiver Problem
#'
#' The raw data behind the story
#' "The Football Hall Of Fame Has A Receiver Problem"
#' \url{http://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/}.
#'
#' @format A data frame with 24 rows representing National Football League wide receiver ages and 3 variables:
#' \describe{
#'   \item{age_from}{Beginning age} 
#'   \item{age_to}{Ending age} 
#'   \item{trypg_change}{Change in TRY per game from one age-year to next} 
#' }
#' @source Unknown 
"nflwr_aging_curve"



#' You Can't Trust What You Read About Nutrition
#'
#' The raw data behind the story
#' "You Can't Trust What You Read About Nutrition"
#' \url{http://fivethirtyeight.com/features/you-cant-trust-what-you-read-about-nutrition}.
#'
#' @format A data frame with 27716 rows representing Regression fits for p-hacking and 3 variables:
#' \describe{
#'   \item{food}{Name of food (response/dependent variable)} 
#'   \item{characteristic}{Name of characteristic (predictor/independent variable)} 
#'   \item{p_values}{P-value from regression fit} 
#' }
#' @source See \url{http://fivethirtyeight.com/features/you-cant-trust-what-you-read-about-nutrition}
"nutrition_pvalues"



#' The Dallas Shooting Was Among The Deadliest For Police In U.S. History
#'
#' The raw data behind the story
#' "The Dallas Shooting Was Among The Deadliest For Police In U.S. History"
#' \url{https://fivethirtyeight.com/features/the-dallas-shooting-was-among-the-deadliest-for-police-in-u-s-history/}.
#'
#' @format A data frame with 22800 rows representing Police officers/dogs who lost their lives and 7 variables:
#' \describe{
#'   \item{person}{Name of person/canine who died} 
#'   \item{cause_of_death}{Cause of death} 
#'   \item{date}{Date of event} 
#'   \item{year}{Year of event} 
#'   \item{canine}{TRUE if canine, FALSE if human} 
#'   \item{dept_name}{Name of police department} 
#'   \item{state}{State of police department} 
#' }
#' @source Officer Down Memorial Page \url{https://www.odmp.org/}
"police_deaths"



#' Where Police Have Killed Americans In 2015
#'
#' The raw data behind the story
#' "Where Police Have Killed Americans In 2015"
#' \url{http://fivethirtyeight.com/features/where-police-have-killed-americans-in-2015}.
#'
#' @format A data frame with 467 rows representing People who died from interactions with police and 34 variables:
#' \describe{
#'   \item{name}{Name of deceased} 
#'   \item{age}{Age of deceased} 
#'   \item{gender}{Gender of deceased} 
#'   \item{raceethnicity}{Race/ethnicity of deceased} 
#'   \item{month}{Month of killing} 
#'   \item{day}{Day of incident} 
#'   \item{year}{Year of incident} 
#'   \item{streetaddress}{Address/intersection where incident occurred} 
#'   \item{city}{City where incident occurred} 
#'   \item{state}{State where incident occurred} 
#'   \item{latitude}{Latitude, geocoded from address} 
#'   \item{longitude}{Longitude, geocoded from address} 
#'   \item{state_fp}{State FIPS code} 
#'   \item{county_fp}{County FIPS code} 
#'   \item{tract_ce}{Tract ID code} 
#'   \item{geo_id}{Combined tract ID code} 
#'   \item{county_id}{Combined county ID code} 
#'   \item{namelsad}{Tract description} 
#'   \item{lawenforcementagency}{Agency involved in incident} 
#'   \item{cause}{Cause of death} 
#'   \item{armed}{How/whether deceased was armed} 
#'   \item{pop}{Tract population} 
#'   \item{share_white}{Share of pop that is non-Hispanic white} 
#'   \item{share_black}{Share of pop that is black (alone, not in combination)} 
#'   \item{share_hispanic}{Share of pop that is Hispanic/Latino (any race)} 
#'   \item{p_income}{Tract-level median personal income} 
#'   \item{h_income}{Tract-level median household income} 
#'   \item{county_income}{County-level median household income} 
#'   \item{comp_income}{`h_income` / `county_income`} 
#'   \item{county_bucket}{Household income, quintile within county} 
#'   \item{nat_bucket}{Household income, quintile nationally} 
#'   \item{pov}{Tract-level poverty rate (official)} 
#'   \item{urate}{Tract-level unemployment rate} 
#'   \item{college}{Share of 25+ pop with BA or higher} 
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/police-killings}
"police_killings"



#' The Last 10 Weeks Of 2016 Campaign Stops In One Handy Gif
#'
#' The raw data behind the story
#' "The Last 10 Weeks Of 2016 Campaign Stops In One Handy Gif"
#' \url{https://fivethirtyeight.com/features/the-last-10-weeks-of-2016-campaign-stops-in-one-handy-gif/}.
#'
#' @format A data frame with 177 rows representing 2016 Republican and Democratic candidate campaign trail stops and 5 variables:
#' \describe{
#'   \item{candidate}{Clinton or Trump} 
#'   \item{date}{The date of the event} 
#'   \item{location}{The location of the event} 
#'   \item{lat}{Latitude of the event location} 
#'   \item{lng}{Longitude of the event location} 
#' }
#' @source \url{https://hillaryspeeches.com/}, \url{http://www.conservativedailynews.com/} 
"pres_2016_trail"



