#' Should Travelers Avoid Flying Airlines That Have Had Crashes in the Past?
#'
#' The raw data behind the story
#' "Should Travelers Avoid Flying Airlines That Have Had Crashes in the Past?"
#' \url{http://fivethirtyeight.com/features/should-travelers-avoid-flying-airlines-that-have-had-crashes-in-the-past/}.
#'
#' @format A data frame with 56 rows representing airlines and 9 variables:
#' \describe{
#'   \item{airline}{airline}
#'   \item{incl_reg_subsidiaries}{indicates that regional subsidiaries are included}
#'   \item{avail_seat_km_per_week}{available seat kilometers flown every week}
#'   \item{incidents_85_99}{Total number of incidents, 1985–1999}
#'   \item{fatal_accidents_85_99}{Total number of fatal accidents, 1985–1999}
#'   \item{fatalities_85_99}{Total number of fatalities, 1985–1999}
#'   \item{incidents_00_14}{Total number of incidents, 2000–2014}
#'   \item{fatal_accidents_00_14}{Total number of fatal accidents, 2000–2014}
#'   \item{fatalities_00_14}{Total number of fatalities, 2000–2014}
#' }
#' @source Aviation Safety Network \url{http://aviation-safety.net}.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' airline_safety_tidy <- airline_safety %>%
#'   gather(type, count, -c(airline, incl_reg_subsidiaries, avail_seat_km_per_week)) %>%
#'   mutate(
#'     period = str_sub(type, start=-5),
#'     period = str_replace_all(period, "_", "-"),
#'     type = str_sub(type, end=-7)
#'   )
"airline_safety"



#' Joining The Avengers Is As Deadly As Jumping Off A Four-Story Building
#'
#' The raw data behind the story
#' "Joining The Avengers Is As Deadly As Jumping Off A Four-Story Building"
#' \url{http://fivethirtyeight.com/features/avengers-death-comics-age-of-ultron/}.
#'
#' @format A data frame with 173 rows representing characters and 21 variables:
#' \describe{
#'   \item{url}{The URL of the comic character on the Marvel Wikia}
#'   \item{name_alias}{The full name or alias of the character}
#'   \item{appearances}{The number of comic books that character appeared in as of April 30 }
#'   \item{current}{Is the member currently active on an avengers affiliated team?}
#'   \item{gender}{The recorded gender of the character}
#'   \item{probationary_intro}{Sometimes the character was given probationary status as an Avenger, this is the date that happened}
#'   \item{full_reserve_avengers_intro}{The month and year the character was introduced as a full or reserve member of the Avnegers}
#'   \item{year}{The year the character was introduced as a full or reserve member of the Avengers}
#'   \item{years_since_joining}{2015 minus the year}
#'   \item{honorary}{The status of the avenger, if they were given "Honorary" Avenger status, if they are simply in the "Academy," or "Full" otherwise}
#'   \item{death1}{TRUE if the Avenger died, FALSE if not.}
#'   \item{return1}{TRUE if the Avenger returned from their first death, FALSE if they did not, blank if not applicable}
#'   \item{death2}{TRUE if the Avenger died a second time after their revival, FALSE if they did not, blank if not applicable}
#'   \item{return2}{TRUE if the Avenger returned from their second death, FALSE if they did not, blank if not applicable}
#'   \item{death3}{TRUE if the Avenger died a third time after their second revival, FALSE if they did not, blank if not applicable}
#'   \item{return3}{TRUE if the Avenger returned from their third death, FALSE if they did not, blank if not applicable}
#'   \item{death4}{TRUE if the Avenger died a fourth time after their third revival, FALSE if they did not, blank if not applicable}
#'   \item{return4}{TRUE if the Avenger returned from their fourth death, FALSE if they did not, blank if not applicable}
#'   \item{death5}{TRUE if the Avenger died a fifth time after their fourth revival, FALSE if they did not, blank if not applicable}
#'   \item{return5}{TRUE if the Avenger returned from their fifth death, FALSE if they did not, blank if not applicable}
#'   \item{notes}{Descriptions of deaths and resurrections.}
#' }
#' @source Deaths of Marvel comic book characters between the time they joined the Avengers and April 30, 2015, the week before Secret Wars #1.
"avengers"



#' Dear Mona, Which State Has The Worst Drivers?
#'
#' The raw data behind the story
#' "Dear Mona, Which State Has The Worst Drivers?"
#' \url{http://fivethirtyeight.com/datalab/which-state-has-the-worst-drivers/}
#'
#' @format A data frame with 51 rows representing the 50 states + D.C. and 8 variables:
#' \describe{
#'   \item{state}{State}
#'   \item{num_drivers}{Number of drivers involved in fatal collisions per billion miles}
#'   \item{perc_speeding}{Percentage of drivers involved in fatal collisions who were speeding}
#'   \item{perc_alcohol}{Percentage of drivers involved in fatal collisions who were alcohol-impaired}
#'   \item{perc_not_distracted}{Percentage of drivers involved in fatal collisions who were not distracted}
#'   \item{perc_no_previous}{Percentage of drivers involved in fatal collisions who had not been involved in any previous accidents}
#'   \item{insurance_premiums}{Car insurance premiums ($)}
#'   \item{losses}{Losses incurred by insurance companies for collisions per insured driver ($)}
#' }
#' @source National Highway Traffic Safety Administration 2012, National Highway
#' Traffic Safety Administration 2009 & 2012, National Association of Insurance
#' Commissioners 2010 & 2011.
"bad_drivers"



#' The Dollar-And-Cents Case Against Hollywood's Exclusion of Women
#'
#' The raw data behind the story
#' "The Dollar-And-Cents Case Against Hollywood's Exclusion of Women"
#' \url{http://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/}.
#'
#' @format A data frame with 1794 rows representing movies and 15 variables:
#' \describe{
#'   \item{year}{Year of release}
#'   \item{imdb}{Text to append \url{http://www.imdb.com/title/} to for IMDB url. E.g. \url{http://www.imdb.com/title/tt1711425}}
#'   \item{title}{Movie test}
#'   \item{test}{bechdel test result (detailed, with discrepancies indicated)}
#'   \item{clean_test}{bechdel test result (detailed)}
#'   \item{binary}{Bechdel Test PASS vs FAIL binary}
#'   \item{budget}{Film budget}
#'   \item{domgross}{Domestic (US) gross}
#'   \item{intgross}{Total International (i.e., worldwide) gross}
#'   \item{code}{Bechdel Code}
#'   \item{budget_2013}{Budget in 2013 inflation adjusted dollars}
#'   \item{domgross_2013}{Domestic gross (US) in 2013 inflation adjusted dollars}
#'   \item{intgross_2013}{Total International (i.e., worldwide) gross in 2013 inflation adjusted dollars}
#'   \item{period_code}{}
#'   \item{decade_code}{}
#' }
#'
#' @details
#' A vignette of an analysis of this dataset using the \code{tidyverse} can be found on \href{https://cran.r-project.org/web/packages/fivethirtyeight/vignettes/bechdel.html}{CRAN} or by running:
#' \code{vignette("bechdel", package = "fivethirtyeight")}
#'
#' @source \url{www.bechdeltest.com} and \url{www.the-numbers.com}. The original data can be found at \url{https://github.com/fivethirtyeight/data/tree/master/bechdel}.
"bechdel"



#' Dear Mona Followup: Where Do People Drink The Most Beer, Wine And Spirits?
#'
#' The raw data behind the story
#' "Dear Mona Followup: Where Do People Drink The Most Beer, Wine And Spirits?"
#' \url{http://fivethirtyeight.com/datalab/dear-mona-followup-where-do-people-drink-the-most-beer-wine-and-spirits/}.
#'
#' @format A data frame with 193 rows representing countries and 5 variables:
#' \describe{
#'   \item{country}{country}
#'   \item{beer_servings}{Servings of beer in average serving sizes per person}
#'   \item{spirit_servings}{Servings of spirits in average serving sizes per person}
#'   \item{wine_servings}{Servings of wine in average serving sizes per person}
#'   \item{total_litres_of_pure_alcohol}{Total number of fatal accidents, 1985–1999}
#' }
#' @source World Health Organisation, Global Information System on Alcohol and Health (GISAH), 2010.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' drinks_tidy <- drinks %>%
#'   gather(type, servings, -c(country, total_litres_of_pure_alcohol)) %>%
#'   mutate(
#'     type = str_sub(type, start=1, end=-10)
#'   ) %>%
#'   arrange(country, type)
"drinks"



#' 'Straight Outta Compton' Is The Rare Biopic Not About White Dudes
#'
#' The raw data behind the story
#' "'Straight Outta Compton' Is The Rare Biopic Not About White Dudes"
#' \url{http://fivethirtyeight.com/features/straight-outta-compton-is-the-rare-biopic-not-about-white-dudes/}.
#'
#' @format A data frame with 761 rows representing movies and 14 variables:
#' \describe{
#'   \item{title}{Title of the film.}
#'   \item{site}{Text to append \url{http://www.imdb.com/title/} to for IMDB url. E.g. \url{http://www.imdb.com/title/tt1711425}}
#'   \item{country}{Country of origin.}
#'   \item{year_release}{Year of release.}
#'   \item{box_office}{Gross earnings at U.S. box office.}
#'   \item{director}{Director of film.}
#'   \item{number_of_subjects}{The number of subjects featured in the film.}
#'   \item{subject}{The actual name of the featured subject.}
#'   \item{type_of_subject}{The occupation of subject or reason for recognition.}
#'   \item{race_known}{Indicates whether the subject's race was discernible based on background of self, parent, or grandparent.}
#'   \item{subject_race}{Race of the subject.}
#'   \item{person_of_color}{Dummy variable that indicates person of color.}
#'   \item{subject_sex}{Sex of subject.}
#'   \item{lead_actor_actress}{The actor or actress who played the subject.}
#' }
#' @source IMDB \url{http://www.imdb.com/}
"biopics"



#' A Statistical Analysis of the Work of Bob Ross
#'
#' The raw data behind the story
#' "A Statistical Analysis of the Work of Bob Ross"
#' \url{http://fivethirtyeight.com/features/a-statistical-analysis-of-the-work-of-bob-ross/}.
#'
#' @format A data frame with 403 rows representing episodes and 71 variables:
#' \describe{
#'   \item{episode}{Episode code}
#'   \item{season}{Season number}
#'   \item{episode_num}{Episode number}
#'   \item{title}{Title of episode}
#'   \item{apple_frame}{Present (1) or not (0)}
#'   \item{aurora_borealis}{Present (1) or not (0)}
#'   \item{barn}{Present (1) or not (0)}
#'   \item{beach}{Present (1) or not (0)}
#'   \item{boat}{Present (1) or not (0)}
#'   \item{bridge}{Present (1) or not (0)}
#'   \item{building}{Present (1) or not (0)}
#'   \item{bushes}{Present (1) or not (0)}
#'   \item{cabin}{Present (1) or not (0)}
#'   \item{cactus}{Present (1) or not (0)}
#'   \item{circle_frame}{Present (1) or not (0)}
#'   \item{cirrus}{Present (1) or not (0)}
#'   \item{cliff}{Present (1) or not (0)}
#'   \item{clouds}{Present (1) or not (0)}
#'   \item{conifer}{Present (1) or not (0)}
#'   \item{cumulus}{Present (1) or not (0)}
#'   \item{deciduous}{Present (1) or not (0)}
#'   \item{diane_andre}{Present (1) or not (0)}
#'   \item{dock}{Present (1) or not (0)}
#'   \item{double_oval_frame}{Present (1) or not (0)}
#'   \item{farm}{Present (1) or not (0)}
#'   \item{fence}{Present (1) or not (0)}
#'   \item{fire}{Present (1) or not (0)}
#'   \item{florida_frame}{Present (1) or not (0)}
#'   \item{flowers}{Present (1) or not (0)}
#'   \item{fog}{Present (1) or not (0)}
#'   \item{framed}{Present (1) or not (0)}
#'   \item{grass}{Present (1) or not (0)}
#'   \item{guest}{Present (1) or not (0)}
#'   \item{half_circle_frame}{Present (1) or not (0)}
#'   \item{half_oval_frame}{Present (1) or not (0)}
#'   \item{hills}{Present (1) or not (0)}
#'   \item{lake}{Present (1) or not (0)}
#'   \item{lakes}{Present (1) or not (0)}
#'   \item{lighthouse}{Present (1) or not (0)}
#'   \item{mill}{Present (1) or not (0)}
#'   \item{moon}{Present (1) or not (0)}
#'   \item{mountain}{Present (1) or not (0)}
#'   \item{mountains}{Present (1) or not (0)}
#'   \item{night}{Present (1) or not (0)}
#'   \item{ocean}{Present (1) or not (0)}
#'   \item{oval_frame}{Present (1) or not (0)}
#'   \item{palm_trees}{Present (1) or not (0)}
#'   \item{path}{Present (1) or not (0)}
#'   \item{person}{Present (1) or not (0)}
#'   \item{portrait}{Present (1) or not (0)}
#'   \item{rectangle_3d_frame}{Present (1) or not (0)}
#'   \item{rectangular_frame}{Present (1) or not (0)}
#'   \item{river}{Present (1) or not (0)}
#'   \item{rocks}{Present (1) or not (0)}
#'   \item{seashell_frame}{Present (1) or not (0)}
#'   \item{snow}{Present (1) or not (0)}
#'   \item{snowy_mountain}{Present (1) or not (0)}
#'   \item{split_frame}{Present (1) or not (0)}
#'   \item{steve_ross}{Present (1) or not (0)}
#'   \item{structure}{Present (1) or not (0)}
#'   \item{sun}{Present (1) or not (0)}
#'   \item{tomb_frame}{Present (1) or not (0)}
#'   \item{tree}{Present (1) or not (0)}
#'   \item{trees}{Present (1) or not (0)}
#'   \item{triple_frame}{Present (1) or not (0)}
#'   \item{waterfall}{Present (1) or not (0)}
#'   \item{waves}{Present (1) or not (0)}
#'   \item{windmill}{Present (1) or not (0)}
#'   \item{window_frame}{Present (1) or not (0)}
#'   \item{winter}{Present (1) or not (0)}
#'   \item{wood_framed}{Present (1) or not (0)}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/bob-ross}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' bob_ross_tidy <- bob_ross %>%
#'   gather(object, present, -c(episode, season, episode_num, title)) %>%
#'   mutate(present = as.logical(present)) %>%
#'   arrange(episode, object)
"bob_ross"



#' Why Classic Rock Isn't What It Used To Be
#'
#' The raw data behind the story
#' "Why Classic Rock Isn't What It Used To Be"
#' \url{http://fivethirtyeight.com/features/why-classic-rock-isnt-what-it-used-to-be/}.
#'
#' @format A data frame with 37,673 rows representing song plays and 8 variables:
#' \describe{
#'   \item{song}{Song name}
#'   \item{artist}{Artist name}
#'   \item{callsign}{Station callsign}
#'   \item{time}{Time of song play in seconds elapsed since January 1, 1970}
#'   \item{date_time}{Time of song play in date/time format}
#'   \item{unique_id}{Unique ID for each song play}
#'   \item{combined}{Song and artist name combined}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/classic-rock}
#' @seealso \code{\link{classic_rock_song_list}}
"classic_rock_raw_data"



#' Why Classic Rock Isn't What It Used To Be
#'
#' The raw data behind the story
#' "Why Classic Rock Isn't What It Used To Be"
#' \url{http://fivethirtyeight.com/features/why-classic-rock-isnt-what-it-used-to-be/}.
#'
#' @format A data frame with 2230 rows representing unique songs and 7 variables:
#' \describe{
#'   \item{song}{Song name}
#'   \item{artist}{Artist name}
#'   \item{release_year}{Release year as listed in SongFacts}
#'   \item{combined}{Song and artist name combined}
#'   \item{has_year}{Logical variable of whether release year is included}
#'   \item{playcount}{Number of plays across all stations}
#'   \item{playcount_has_year}{Number of plays across all stations if a year was found}
#' }
#' @source SongFacts and \url{https://github.com/fivethirtyeight/data/tree/master/classic-rock}
#' @seealso \code{\link{classic_rock_raw_data}}
"classic_rock_song_list"



#' The Economic Guide To Picking A College Major
#'
#' The raw data behind the story
#' "The Economic Guide To Picking A College Major"
#' \url{http://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/}.
#'
#' @format A data frame with 173 rows representing majors (all ages) and 11 variables:
#' \describe{
#'   \item{major_code}{Major code, FO1DP in ACS PUMS}
#'   \item{major}{Major description}
#'   \item{major_category}{Category of major from Carnevale et al}
#'   \item{total}{Total number of people with major}
#'   \item{employed}{Number employed (ESR == 1 or 2)}
#'   \item{employed_fulltime_yearround}{Employed at least 50 weeks (WKW == 1) and at least 35 hours (WKHP >= 35)}
#'   \item{unemployed}{Number unemployed (ESR == 3)}
#'   \item{unemployment_rate}{Unemployed / (Unemployed + Employed)}
#'   \item{p25th}{25th percentile of earnigns}
#'   \item{median}{Median earnings of full-time, year-round workers}
#'   \item{p75th}{75th percentile of earnings}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/college-majors/readme.md}.
#' @seealso \code{\link{college_grad_students}}, \code{\link{college_recent_grads}}
"college_all_ages"



#' The Economic Guide To Picking A College Major
#'
#' The raw data behind the story
#' "The Economic Guide To Picking A College Major"
#' \url{http://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/}.
#'
#' @format A data frame with 173 rows representing majors (graduate vs nongraduate students) and 22 variables:
#' \describe{
#'   \item{major_code}{Major code, FO1DP in ACS PUMS}
#'   \item{major}{Major description}
#'   \item{major_category}{Category of major from Carnevale et al}
#'   \item{grad_total}{Total number of people with major}
#'   \item{grad_sample_size}{Sample size (unweighted) of full-time, year-round ONLY (used for earnings)}
#'   \item{grad_employed}{Number employed (ESR == 1 or 2)}
#'   \item{grad_employed_fulltime_yearround}{Employed at least 50 weeks (WKW == 1) and at least 35 hours (WKHP >= 35)}
#'   \item{grad_unemployed}{Number unemployed (ESR == 3)}
#'   \item{grad_unemployment_rate}{Unemployed / (Unemployed + Employed)}
#'   \item{grad_p25th}{25th percentile of earnigns}
#'   \item{grad_median}{Median earnings of full-time, year-round workers}
#'   \item{grad_p75th}{75th percentile of earnings}
#'   \item{nongrad_total}{Total number of people with major}
#'   \item{nongrad_employed}{Number employed (ESR == 1 or 2)}
#'   \item{nongrad_employed_fulltime_yearround}{Employed at least 50 weeks (WKW == 1) and at least 35 hours (WKHP >= 35)}
#'   \item{nongrad_unemployed}{Number unemployed (ESR == 3)}
#'   \item{nongrad_unemployment_rate}{Unemployed / (Unemployed + Employed)}
#'   \item{nongrad_p25th}{25th percentile of earnigns}
#'   \item{nongrad_median}{Median earnings of full-time, year-round workers}
#'   \item{nongrad_p75th}{75th percentile of earnings}
#'   \item{grad_share}{grad_total / (grad_total + nongrad_total)}
#'   \item{grad_premium}{(grad_median-nongrad_median)/nongrad_median}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/college-majors/readme.md}.
#' @seealso \code{\link{college_all_ages}}, \code{\link{college_recent_grads}}
"college_grad_students"



#' The Economic Guide To Picking A College Major
#'
#' The raw data behind the story
#' "The Economic Guide To Picking A College Major"
#' \url{http://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/}.
#'
#' @format A data frame with 173 rows representing majors (recent graduates) and 21 variables:
#' \describe{
#'   \item{rank}{Rank by median earnings}
#'   \item{major_code}{Major code, FO1DP in ACS PUMS}
#'   \item{major}{Major description}
#'   \item{major_category}{Category of major from Carnevale et al}
#'   \item{total}{Total number of people with major}
#'   \item{sample_size}{Sample size (unweighted) of full-time, year-round ONLY (used for earnings)}
#'   \item{men}{Men with major}
#'   \item{women}{Women with major}
#'   \item{sharewomen}{Proportion women}
#'   \item{employed}{Number employed (ESR == 1 or 2)}
#'   \item{employed_fulltime}{Employed 35 hours or more}
#'   \item{employed_parttime}{Employed less than 35 hours}
#'   \item{employed_fulltime_yearround}{Employed at least 50 weeks (WKW == 1) and at least 35 hours (WKHP >= 35)}
#'   \item{unemployed}{Number unemployed (ESR == 3)}
#'   \item{unemployment_rate}{Unemployed / (Unemployed + Employed)}
#'   \item{p25th}{25th percentile of earnigns}
#'   \item{median}{Median earnings of full-time, year-round workers}
#'   \item{p75th}{75th percentile of earnings}
#'   \item{college_jobs}{Number with job requiring a college degree}
#'   \item{non_college_jobs}{Number with job not requiring a college degree}
#'   \item{low_wage_jobs}{Number in low-wage service jobs}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/college-majors/readme.md}.
#' @seealso \code{\link{college_grad_students}}, \code{\link{college_all_ages}}
"college_recent_grads"



#' Comic Books Are Still Made By Men, For Men And About Men
#'
#' The raw data behind the story
#' "Comic Books Are Still Made By Men, For Men And About Men"
#' \url{http://fivethirtyeight.com/features/women-in-comic-books/}.
#'
#' @format A data frame with 23272 rows representing characters and 16 variables:
#' \describe{
#'   \item{publisher}{Comic publisher: DC Comics or Marvel}
#'   \item{page_id}{The unique identifier for that characters page within the wikia}
#'   \item{name}{The name of the character}
#'   \item{urlslug}{The unique url within the wikia that takes you to the character}
#'   \item{id}{The identity status of the character (Secret Identity, Public identity, [on marvel only: No Dual Identity])}
#'   \item{align}{If the character is Good, Bad or Neutral}
#'   \item{eye}{Eye color of the character}
#'   \item{hair}{Hair color of the character}
#'   \item{sex}{Sex of the character (e.g. Male, Female, etc.)}
#'   \item{gsm}{If the character is a gender or sexual minority (e.g. Homosexual characters, bisexual characters)}
#'   \item{alive}{If the character is alive or deceased}
#'   \item{appearances}{The number of appareances of the character in comic books (as of Sep. 2, 2014. Number will become increasingly out of date as time goes on.)}
#'   \item{first_appearance}{The month and year of the character's first appearance in a comic book, if available}
#'   \item{month}{The month of the character's first appearance in a comic book, if available}
#'   \item{year}{The year of the character's first appearance in a comic book, if available}
#'   \item{date}{The date of the character's first appearance in a comic book, if available}
#' }
#' @source DC Wikia \url{http://dc.wikia.com/wiki/Main_Page} and Marvel Wikia
#' \url{http://marvel.wikia.com/Main_Page}. Characters were scraped on August 24,
#' 2014. Appearance counts were scraped on September 2, 2014. The
#' month and year of the first issue each character appeared in was pulled on
#' October 6, 2014.
"comic_characters"




#' Elitist, Superfluous, Or Popular? We Polled Americans on the Oxford Comma
#'
#' The raw data behind the story
#' "Elitist, Superfluous, Or Popular? We Polled Americans on the Oxford Comma"
#' \url{http://fivethirtyeight.com/datalab/elitist-superfluous-or-popular-we-polled-americans-on-the-oxford-comma/}.
#'
#' @format A data frame with 1129 rows representing respondents and 13 variables:
#' \describe{
#'   \item{respondent_id}{Respondent ID}
#'   \item{gender}{Gender}
#'   \item{age}{Age}
#'   \item{household_income}{Household income bracket}
#'   \item{education}{Education level}
#'   \item{location}{Location (census region)}
#'   \item{more_grammar_correct}{In your opinion, which sentence is more gramatically correct?}
#'   \item{heard_oxford_comma}{Prior to reading about it above, had you heard of the serial (or Oxford) comma?}
#'   \item{care_oxford_comma}{How much, if at all, do you care about the use (or lack thereof) of the serial (or Oxford) comma in grammar?}
#'   \item{write_following}{How would you write the following sentence?}
#'   \item{data_singular_plural}{When faced with using the word "data", have you ever spent time considering if the word was a singular or plural noun?}
#'   \item{care_data}{How much, if at all, do you care about the debate over the use of the word "data" as a singluar or plural noun?}
#'   \item{care_proper_grammar}{In your opinion, how important or unimportant is proper use of grammar?}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/comma-survey-data}.
"comma_survey"



#' Both Republicans And Democrats Have an Age Problem
#'
#' The raw data behind the story
#' "Both Republicans And Democrats Have an Age Problem"
#' \url{http://fivethirtyeight.com/features/both-republicans-and-democrats-have-an-age-problem/}.
#'
#' @format A data frame with 18,635 rows representing members of Congress
#' (House and Senate) and 13 variables:
#' \describe{
#'   \item{congress}{Congress number.}
#'   \item{chamber}{Chamber of congress: House of Representatives or Senate.}
#'   \item{bioguide}{bioguide}
#'   \item{firstname}{First name}
#'   \item{middlename}{Middle name}
#'   \item{lastname}{Last name}
#'   \item{suffix}{Suffix}
#'   \item{birthday}{Birthday}
#'   \item{state}{State abbreviation}
#'   \item{party}{Party abbreviation}
#'   \item{incumbent}{Boolean variable of whether member was an incumbent.}
#'   \item{termstart}{Start date of session.}
#'   \item{age}{Age at start of session.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/congress-age}
"congress_age"



#' How Many Americans Are Married To Their Cousins?
#'
#' The raw data behind the story
#' "How Many Americans Are Married To Their Cousins?"
#' \url{https://fivethirtyeight.com/features/how-many-americans-are-married-to-their-cousins/}.
#'
#' @format A data frame with 70 rows representing countries and 2 variables:
#' \describe{
#'   \item{country}{Country}
#'   \item{percent}{Percent of marriages that are consanguineous}
#' }
#' @source \url{http://www.consang.net/index.php/Main_Page}
"cousin_marriage"



#' Every Guest Jon Stewart Ever Had On 'The Daily Show'
#'
#' The raw data behind the story
#' "Every Guest Jon Stewart Ever Had On 'The Daily Show'"
#' \url{http://fivethirtyeight.com/datalab/every-guest-jon-stewart-ever-had-on-the-daily-show/}.
#'
#' @format A data frame with 2693 rows representing guests and 5 variables:
#' \describe{
#'   \item{year}{The year the episode aired}
#'   \item{google_knowledge_occupation}{Their occupation or office, according to Google's Knowledge Graph or, if they're not in there, how Stewart introduced them on the program.}
#'   \item{show}{Air date of episode. Not unique, as some shows had more than one guest}
#'   \item{group}{A larger group designation for the occupation. For instance, us senators, us presidents, and former presidents are all under "politicians"}
#'   \item{raw_guest_list}{The person or list of people who appeared on the show, according to Wikipedia. The GoogleKnowlege_Occupation only refers to one of them in a given row.}
#' }
#' @source Google Knowlege Graph, The Daily Show clip library, Wikipedia.
"daily_show_guests"



#' Some Democrats Who Could Step Up If Hillary Isn't Ready For Hillary
#'
#' The raw data behind the story
#' "Some Democrats Who Could Step Up If Hillary Isn't Ready For Hillary"
#' \url{http://fivethirtyeight.com/datalab/some-democrats-who-could-step-up-if-hillary-isnt-ready-for-hillary/}.
#'
#' @format A data frame with 67 rows representing members of the Democratic Party and 3 variables:
#' \describe{
#'   \item{candidate}{Candidate}
#'   \item{raised_exp}{Amount the candidate was expected to raise}
#'   \item{raised_act}{Amount the candidate actually raised}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/democratic-bench}.
"democratic_bench"



#' How Baby Boomers Get High
#'
#' The raw data behind the story
#' "How Baby Boomers Get High"
#' \url{http://fivethirtyeight.com/datalab/how-baby-boomers-get-high/}.
#' It covers usage of 13 drugs in the past 12 months across 17 age groups.
#'
#' @format A data frame with 17 rows representing age groups and 28 variables:
#' \describe{
#'   \item{age}{Age group}
#'   \item{n}{Number of people surveyed}
#'   \item{alcohol_use}{Percentage who used alcohol}
#'   \item{alcohol_freq}{Median number of times a user used alcohol}
#'   \item{marijuana_use}{Percentage who used marijuana}
#'   \item{marijuana_freq}{Median number of times a user used marijuana}
#'   \item{cocaine_use}{Percentage who used cocaine}
#'   \item{cocaine_freq}{Median number of times a user used cocaine}
#'   \item{crack_use}{Percentage who used crack}
#'   \item{crack_freq}{Median number of times a user used crack}
#'   \item{heroin_use}{Percentage who used heroin}
#'   \item{heroin_freq}{Median number of times a user used heroin}
#'   \item{hallucinogen_use}{Percentage who used hallucinogens}
#'   \item{hallucinogen_freq}{Median number of times a user used hallucinogens}
#'   \item{inhalant_use}{Percentage who used inhalants}
#'   \item{inhalant_freq}{Median number of times a user used inhalants}
#'   \item{pain_releiver_use}{Percentage who used pain relievers}
#'   \item{pain_releiver_freq}{Median number of times a user used pain relievers}
#'   \item{oxycontin_use}{Percentage who used oxycontin}
#'   \item{oxycontin_freq}{Median number of times a user used oxycontin}
#'   \item{tranquilizer_use}{Percentage who used tranquilizer}
#'   \item{tranquilizer_freq}{Median number of times a user used tranquilizer}
#'   \item{stimulant_use}{Percentage who used stimulants}
#'   \item{stimulant_freq}{Median number of times a user used stimulants}
#'   \item{meth_use}{Percentage who used meth}
#'   \item{meth_freq}{Median number of times a user used meth}
#'   \item{sedative_use}{Percentage who used sedatives}
#'   \item{sedative_freq}{Median number of times a user used sedatives}
#' }
#' @source National Survey on Drug Use and Health from the Substance Abuse and
#' Mental Health Data Archive \url{http://www.icpsr.umich.edu/icpsrweb/content/SAMHDA/index.html}.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' use <- drug_use %>%
#'   select(age, n, ends_with("_use")) %>%
#'   gather(drug, use, -c(age, n)) %>%
#'   mutate(drug = str_sub(drug, start=1, end=-5))
#' freq <- drug_use %>%
#'   select(age, n, ends_with("_freq")) %>%
#'   gather(drug, freq, -c(age, n)) %>%
#'   mutate(drug = str_sub(drug, start=1, end=-6))
#' drug_use_tidy <- left_join(x=use, y=freq, by = c("age", "n", "drug")) %>%
#'   arrange(age)
"drug_use"



#' Early Senate Polls Have Plenty to Tell Us About November
#'
#' The raw data behind the story
#' "Early Senate Polls Have Plenty to Tell Us About November"
#' \url{http://fivethirtyeight.com/features/early-senate-polls-have-plenty-to-tell-us-about-november/}.
#'
#' @format A data frame with 107 rows representing a poll and 4 variables:
#' \describe{
#'   \item{year}{Year}
#'   \item{election_result}{Final poll margin}
#'   \item{presidential_approval}{Early presidential approval rating}
#'   \item{poll_average}{Early poll margin}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/early-senate-polls}
"senate_polls"



#' Some People Are Too Superstitious To Have A Baby On Friday The 13th
#'
#' The raw data behind the story
#' "Some People Are Too Superstitious To Have A Baby On Friday The 13th"
#' \url{http://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/}.
#'
#'
#' @format A data frame with 5479 rows representing dates and 6 variables:
#' \describe{
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{date_of_month}{Day}
#'   \item{date}{POSIX date}
#'   \item{day_of_week}{Abbreviation of day of week}
#'   \item{births}{Number of births}
#' }
#' @seealso \code{\link{US_births_1994_2003}}.
#' @source Social Security Administration
"US_births_2000_2014"



#' Some People Are Too Superstitious To Have A Baby On Friday The 13th
#'
#' The raw data behind the story
#' "Some People Are Too Superstitious To Have A Baby On Friday The 13th"
#' \url{http://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/}.
#'
#'
#' @format A data frame with 3652 rows representing dates and 6 variables:
#' \describe{
#'   \item{year}{Year}
#'   \item{month}{Month}
#'   \item{date_of_month}{Day}
#'   \item{date}{POSIX date}
#'   \item{day_of_week}{Abbreviation of day of week}
#'   \item{births}{Number of births}
#' }
#' @seealso \code{\link{US_births_2000_2014}}
#' @source Centers for Disease Control and Prevention's National Center for Health Statistics
"US_births_1994_2003"



#' Blatter's Reign At FIFA Hasn't Helped Soccer's Poor
#'
#' The raw data behind the story
#' "Blatter's Reign At FIFA Hasn't Helped Soccer's Poor"
#' \url{http://fivethirtyeight.com/features/blatters-reign-at-fifa-hasnt-helped-soccers-poor/}.
#'
#' @format A data frame with 191 rows representing countries and 5 variables:
#' \describe{
#'   \item{country}{FIFA member country}
#'   \item{elo98}{The team's Elo in 1998}
#'   \item{elo15}{The team's Elo in 2015}
#'   \item{confederation}{Confederation to which country belongs}
#'   \item{gdp06}{The country's purchasing power parity GDP as of 2006}
#'   \item{popu06}{The country's 2006 population}
#'   \item{gdp_source}{Source for gdp06}
#'   \item{popu_source}{Source for popu06}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/elo-blatter}.
"elo_blatter"



#' Pols And Polls Say The Same Thing: Jeb Bush Is A Weak Front-Runner
#'
#' The raw data behind the story
#' "Pols And Polls Say The Same Thing: Jeb Bush Is A Weak Front-Runner"
#' \url{http://fivethirtyeight.com/features/pols-and-polls-say-the-same-thing-jeb-bush-is-a-weak-front-runner/}.
#' This data includes something we call "endorsement points," an attempt to quantify the importance of endorsements
#' by weighting each one according to the position held by the endorser:
#' 10 points for each governor, 5 points for each senator and 1 point for each
#' representative
#'
#' @format A data frame with 109 rows representing candidates and 9 variables:
#' \describe{
#'   \item{year}{Election year}
#'   \item{party}{Political party}
#'   \item{candidate}{Candidate running in primary}
#'   \item{endorsement_points}{Weighted endorsements through June 30th of the year before the primary}
#'   \item{percentage_endorsement_points}{Percentage of total weighted endorsement points for the candidate's political party through June 30th of the year before the primary}
#'   \item{money_raised}{Money raised through June 30th of the year before the primary}
#'   \item{percentage_of_money}{Percentage of total money raised by the candidate's political party through June 30th of the year before the primary}
#'   \item{primary_vote_percentage}{Percentage of votes won in the primary}
#'   \item{won_primary}{Did the candidate win the primary?}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/endorsements-june-30}
"endorsements"



#' Be Suspicious Of Online Movie Ratings, Especially Fandango's
#'
#' The raw data behind the story
#' "Be Suspicious Of Online Movie Ratings, Especially Fandango's"
#' \url{http://fivethirtyeight.com/features/fandango-movies-ratings/}.
#' contains every film that has a Rotten Tomatoes rating, a RT User rating, a
#' Metacritic score, a Metacritic User score, and IMDb score, and at least 30
#' fan reviews on Fandango.
#'
#' @format A data frame with 146 rows representing movies and 23 variables:
#' \describe{
#'   \item{film}{The film in question}
#'   \item{year}{Year of film}
#'   \item{rottentomatoes}{The Rotten Tomatoes Tomatometer score  for the film }
#'   \item{rottentomatoes_user}{The Rotten Tomatoes user score for the film }
#'   \item{metacritic}{The Metacritic critic score for the film}
#'   \item{metacritic_user}{The Metacritic user score for the film}
#'   \item{imdb}{The IMDb user score for the film}
#'   \item{fandango_stars}{The number of stars the film had on its Fandango movie page}
#'   \item{fandango_ratingvalue}{The Fandango ratingValue for the film, as pulled from the HTML of each page. This is the actual average score the movie obtained. }
#'   \item{rt_norm}{The Rotten Tomatoes Tomatometer score  for the film , normalized to a 0 to 5 point system}
#'   \item{rt_user_norm}{The Rotten Tomatoes user score for the film , normalized to a 0 to 5 point system}
#'   \item{metacritic_norm}{The Metacritic critic score for the film, normalized to a 0 to 5 point system}
#'   \item{metacritic_user_nom}{The Metacritic user score for the film, normalized to a 0 to 5 point system}
#'   \item{imdb_norm}{The IMDb user score for the film, normalized to a 0 to 5 point system}
#'   \item{rt_norm_round}{The Rotten Tomatoes Tomatometer score  for the film , normalized to a 0 to 5 point system and rounded to the nearest half-star}
#'   \item{rt_user_norm_round}{The Rotten Tomatoes user score for the film , normalized to a 0 to 5 point system and rounded to the nearest half-star}
#'   \item{metacritic_norm_round}{The Metacritic critic score for the film, normalized to a 0 to 5 point system and rounded to the nearest half-star}
#'   \item{metacritic_user_norm_round}{The Metacritic user score for the film, normalized to a 0 to 5 point system and rounded to the nearest half-star}
#'   \item{imdb_norm_round}{The IMDb user score for the film, normalized to a 0 to 5 point system and rounded to the nearest half-star}
#'   \item{metacritic_user_vote_count}{The number of user votes the film had on Metacritic}
#'   \item{imdb_user_vote_count}{The number of user votes the film had on IMDb}
#'   \item{fandango_votes}{The number of user votes the film had on Fandango}
#'   \item{fandango_difference}{The difference between the presented Fandango_Stars and the actual Fandango_Ratingvalue}
#' }
#' @source The data from Fandango was pulled on Aug. 24, 2015.
"fandango"



#' How To Break FIFA
#'
#' The raw data behind the story
#' "How To Break FIFA"
#' \url{http://fivethirtyeight.com/features/how-to-break-fifa/}.
#'
#'
#' @format A data frame with 3652 rows representing guests and 6 variables:
#' \describe{
#'   \item{country}{FIFA member country}
#'   \item{confederation}{Confederation to which country belongs}
#'   \item{population_share}{Country's share of global population (percentage)}
#'   \item{tv_audience_share}{Country's share of global world cup TV Audience (percentage)}
#'   \item{gdp_weighted_share}{Country's GDP-weighted audience share (percentage)}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/fifa}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' fifa_audience_tidy <- fifa_audience %>%
#'   gather(type, share, -c(country, confederation)) %>%
#'   mutate(type = str_sub(type, start=1, end=-7)) %>%
#'   arrange(country)
"fifa_audience"




#' 41 Percent Of Fliers Think You're Rude If You Recline Your Seat
#'
#' The raw data behind the story
#' "41 Percent Of Fliers Think You're Rude If You Recline Your Seat"
#' \url{http://fivethirtyeight.com/datalab/airplane-etiquette-recline-seat}.
#'
#' @format A data frame with 1040 rows representing respondents and 27 variables:
#' \describe{
#'   \item{respondent_id}{RespondentID}
#'   \item{gender}{Gender}
#'   \item{age}{Age}
#'   \item{height}{Height}
#'   \item{children_under_18}{Do you have any children under 18?}
#'   \item{household_income}{Household income bracket}
#'   \item{education}{Education Level}
#'   \item{location}{Location (census region)}
#'   \item{frequency}{How often do you travel by plane?}
#'   \item{recline_frequency}{Do you ever recline your seat when you fly?}
#'   \item{recline_obligation}{Under normal circumstances, does a person who reclines their seat during a flight have any obligation to the person sitting behind them?}
#'   \item{recline_rude}{Is it rude to recline your seat on a plane?}
#'   \item{recline_eliminate}{Given the opportunity, would you eliminate the possibility of reclining seats on planes entirely?}
#'   \item{switch_seats_friends}{Is it rude to ask someone to switch seats with you in order to be closer to friends?}
#'   \item{switch_seats_family}{Is it rude to ask someone to switch seats with you in order to be closer to family?}
#'   \item{wake_up_bathroom}{Is it rude to wake a passenger up if you are trying to go to the bathroom?}
#'   \item{wake_up_walk}{Is it rude to wake a passenger up if you are trying to walk around?}
#'   \item{baby}{In general, is it rude to bring a baby on a plane?}
#'   \item{unruly_child}{In general, is it rude to knowingly bring unruly children on a plane?}
#'   \item{two_arm_rests}{In a row of three seats, who should get to use the two arm rests?}
#'   \item{middle_arm_rest}{In a row of two seats, who should get to use the middle arm rest?}
#'   \item{shade}{Who should have control over the window shade?}
#'   \item{unsold_seat}{Is it rude to move to an unsold seat on a plane?}
#'   \item{talk_stranger}{Generally speaking, is it rude to say more than a few words tothe stranger sitting next to you on a plane?}
#'   \item{get_up}{On a 6 hour flight from NYC to LA, how many times is it acceptable to get up if you're not in an aisle seat?}
#'   \item{electronics}{Have you ever used personal electronics during take off or landing in violation of a flight attendant's direction?}
#'   \item{smoked}{Have you ever smoked a cigarette in an airplane bathroom when it was against the rules?}
#' }
#' @source SurveyMonkey survey
"flying"



#' The FiveThirtyEight International Food Association's 2014 World Cup
#'
#' The raw data behind the story
#' "The FiveThirtyEight International Food Association's 2014 World Cup"
#' \url{http://fivethirtyeight.com/features/the-fivethirtyeight-international-food-associations-2014-world-cup/}.
#' For all the countries below, the response to the following question is presented:
#' "Please rate how much you like the traditional cuisine of X"
#' \itemize{
#'  \item{5: }{I love this country's traditional cuisine. I think it's one of the best in the world.}
#'  \item{4: }{I like this country's traditional cuisine. I think it's considerably above average.}
#'  \item{3: }{I'm OK with this county's traditional cuisine. I think it's about average.}
#'  \item{2: }{I dislike this country's traditional cuisine. I think it's considerably below average.}
#'  \item{1: }{I hate this country's traditional cuisine. I think it's one of the worst in the world.}
#'  \item{N/A: }{I'm unfamiliar with this country's traditional cuisine.}
#' }
#'
#' @format A data frame with 1373 rows representing respondents and 48 variables:
#' \describe{
#'   \item{respondent_id}{Respondent ID}
#'   \item{knowledge}{Generally speaking, how would you rate your level of knowledge of cuisines from different parts of the world?}
#'   \item{interest}{How much, if at all, are you interested in cuisines from different parts of the world?}
#'   \item{gender}{Gender}
#'   \item{age}{Age}
#'   \item{household_income}{Household income bracket}
#'   \item{education}{Education Level}
#'   \item{location}{Location (census region)}
#'   \item{algeria}{Cuisine of Algeria}
#'   \item{argentina}{Cuisine of Argentina}
#'   \item{australia}{Cuisine of Australia}
#'   \item{belgium}{Cuisine of Belgium}
#'   \item{bosnia_and_herzegovina}{Cuisine of Bosnia & Herzegovina}
#'   \item{brazil}{Cuisine of Brazil}
#'   \item{cameroon}{Cuisine of Cameroon}
#'   \item{chile}{Cuisine of Chile}
#'   \item{china}{Cuisine of China}
#'   \item{colombia}{Cuisine of Colombia}
#'   \item{costa_rica}{Cuisine of Costa Rica}
#'   \item{croatia}{Cuisine of Croatia}
#'   \item{cuba}{Cuisine of Cuba}
#'   \item{ecuador}{Cuisine of Ecuador}
#'   \item{england}{Cuisine of England}
#'   \item{ethiopia}{Cuisine of Ethiopia}
#'   \item{france}{Cuisine of France}
#'   \item{germany}{Cuisine of Germany}
#'   \item{ghana}{Cuisine of Ghana}
#'   \item{greece}{Cuisine of Greece}
#'   \item{honduras}{Cuisine of Honduras}
#'   \item{india}{Cuisine of India}
#'   \item{iran}{Cuisine of Iran}
#'   \item{ireland}{Cuisine of Ireland}
#'   \item{italy}{Cuisine of Italy}
#'   \item{ivory_coast}{Cuisine of Ivory Coast}
#'   \item{japan}{Cuisine of Japan}
#'   \item{mexico}{Cuisine of Mexico}
#'   \item{nigeria}{Cuisine of Nigeria}
#'   \item{portugal}{Cuisine of Portugal}
#'   \item{russia}{Cuisine of Russia}
#'   \item{south_korea}{Cuisine of South Korea}
#'   \item{spain}{Cuisine of Spain}
#'   \item{switzerland}{Cuisine of Switzerland}
#'   \item{thailand}{Cuisine of Thailand}
#'   \item{the_netherlands}{Cuisine of the Netherlands}
#'   \item{turkey}{Cuisine of Turkey}
#'   \item{united_states}{Cuisine of the United States}
#'   \item{uruguay}{Cuisine of Uruguay}
#'   \item{vietnam}{Cuisine of Vietnam}
#' }
#' @seealso See \url{https://github.com/fivethirtyeight/data/tree/master/food-world-cup}
"food_world_cup"



#' The Definitive Analysis Of 'Love Actually,' The Greatest Christmas Movie Of Our Time
#'
#' The raw data behind the story
#' "The Definitive Analysis Of 'Love Actually,' The Greatest Christmas Movie Of Our Time"
#' \url{http://fivethirtyeight.com/features/the-definitive-analysis-of-love-actually-the-greatest-christmas-movie-of-our-time/}.
#' A table of the central actors in "Love Actually" and which scenes they appear in.
#'
#' @format A data frame with 71 rows representing scenes and 15 variables:
#' \describe{
#'   \item{scenes}{}
#'   \item{bill_nighy}{}
#'   \item{keira_knightley}{}
#'   \item{andrew_lincoln}{}
#'   \item{hugh_grant}{}
#'   \item{colin_firth}{}
#'   \item{alan_rickman}{}
#'   \item{heike_makatsch}{}
#'   \item{laura_linney}{}
#'   \item{emma_thompson}{}
#'   \item{liam_neeson}{}
#'   \item{kris_marshall}{}
#'   \item{abdul_salis}{}
#'   \item{martin_freeman}{}
#'   \item{rowan_atkinson}{}
#' }
#' @seealso \code{\link{love_actually_adj}}.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(tidyverse)
#' library(stringr)
#' love_actually_appearance_tidy <- love_actually_appearance %>%
#'   gather(actor, appears, -c(scenes)) %>%
#'   arrange(scenes)
"love_actually_appearance"



#' The Definitive Analysis Of 'Love Actually,' The Greatest Christmas Movie Of Our Time
#'
#' The raw data behind the story
#' "The Definitive Analysis Of 'Love Actually,' The Greatest Christmas Movie Of Our Time"
#' \url{http://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/}.
#' The adjacency matrix of which actors appear in the same scene together.
#'
#' @format A data frame with 14 rows representing actors and 15 variables:
#' \describe{
#'   \item{actors}{}
#'   \item{bill_nighy}{}
#'   \item{keira_knightley}{}
#'   \item{andrew_lincoln}{}
#'   \item{hugh_grant}{}
#'   \item{colin_firth}{}
#'   \item{alan_rickman}{}
#'   \item{heike_makatsch}{}
#'   \item{laura_linney}{}
#'   \item{emma_thompson}{}
#'   \item{liam_neeson}{}
#'   \item{kris_marshall}{}
#'   \item{abdul_salis}{}
#'   \item{martin_freeman}{}
#'   \item{rowan_atkinson}{}
#' }
#' @seealso \code{\link{love_actually_appearance}}.
"love_actually_adj"

