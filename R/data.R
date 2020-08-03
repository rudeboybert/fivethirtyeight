# Datasets documented by Albert Y. Kim

#' Should Travelers Avoid Flying Airlines That Have Had Crashes in the Past?
#'
#' The raw data behind the story
#' "Should Travelers Avoid Flying Airlines That Have Had Crashes in the Past?"
#' \url{https://fivethirtyeight.com/features/should-travelers-avoid-flying-airlines-that-have-had-crashes-in-the-past/}.
#'
#' @format A data frame with 56 rows representing airlines and 9 variables:
#' \describe{
#'   \item{airline}{airline}
#'   \item{incl_reg_subsidiaries}{indicates that regional subsidiaries are included}
#'   \item{avail_seat_km_per_week}{available seat kilometers flown every week}
#'   \item{incidents_85_99}{Total number of incidents, 1985-1999}
#'   \item{fatal_accidents_85_99}{Total number of fatal accidents, 1985-1999}
#'   \item{fatalities_85_99}{Total number of fatalities, 1985-1999}
#'   \item{incidents_00_14}{Total number of incidents, 2000-2014}
#'   \item{fatal_accidents_00_14}{Total number of fatal accidents, 2000-2014}
#'   \item{fatalities_00_14}{Total number of fatalities, 2000-2014}
#' }
#' @source Aviation Safety Network \url{https://aviation-safety.net}.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' airline_safety_tidy <- airline_safety %>%
#'   pivot_longer(-c(airline, incl_reg_subsidiaries, avail_seat_km_per_week), 
#'     names_to = "type", values_to = "count") %>%
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
#' \url{https://fivethirtyeight.com/features/avengers-death-comics-age-of-ultron/}.
#'
#' @format A data frame with 173 rows representing characters and 21 variables:
#' \describe{
#'   \item{url}{The URL of the comic character on the Marvel Wikia}
#'   \item{name_alias}{The full name or alias of the character}
#'   \item{appearances}{The number of comic books that character appeared in as of April 30 }
#'   \item{current}{Is the member currently active on an avengers affiliated team?}
#'   \item{gender}{The recorded gender of the character}
#'   \item{probationary_intro}{Sometimes the character was given probationary status as an Avenger, this is the date that happened}
#'   \item{full_reserve_avengers_intro}{The month and year the character was introduced as a full or reserve member of the Avengers}
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
#' \url{https://fivethirtyeight.com/features/which-state-has-the-worst-drivers/}
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
#' \url{https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/}.
#'
#' @format A data frame with 1794 rows representing movies and 15 variables:
#' \describe{
#'   \item{year}{Year of release}
#'   \item{imdb}{Text to construct IMDB url. Ex: \url{https://www.imdb.com/title/tt1711425}}
#'   \item{title}{Movie test}
#'   \item{test}{bechdel test result (detailed, with discrepancies indicated)}
#'   \item{clean_test}{bechdel test result (detailed): \code{ok} = passes test, \code{dubious}, \code{men} = women only talk about men, \code{notalk} = women don't talk to each other, \code{nowomen} = fewer than two women }
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
#' A vignette of an analysis of this dataset using the \code{tidyverse} can be found on \href{https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/bechdel.html}{CRAN} or by running:
#' \code{vignette("bechdel", package = "fivethirtyeightdata")}
#'
#' @source \url{http://bechdeltest.com/} and \url{https://www.the-numbers.com/}. The original data can be found at \url{https://github.com/fivethirtyeight/data/tree/master/bechdel}.
"bechdel"

#' Dear Mona Followup: Where Do People Drink The Most Beer, Wine And Spirits?
#'
#' The raw data behind the story
#' "Dear Mona Followup: Where Do People Drink The Most Beer, Wine And Spirits?"
#' \url{https://fivethirtyeight.com/features/dear-mona-followup-where-do-people-drink-the-most-beer-wine-and-spirits/}.
#'
#' @format A data frame with 193 rows representing countries and 5 variables:
#' \describe{
#'   \item{country}{country}
#'   \item{beer_servings}{Servings of beer in average serving sizes per person}
#'   \item{spirit_servings}{Servings of spirits in average serving sizes per person}
#'   \item{wine_servings}{Servings of wine in average serving sizes per person}
#'   \item{total_litres_of_pure_alcohol}{Total litres of pure alcohol per person}
#' }
#' @source World Health Organization, Global Information System on Alcohol and Health (GISAH), 2010.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' drinks_tidy <- drinks %>%
#'   pivot_longer(cols = ends_with("servings"), names_to = "type", values_to = "servings") %>%
#'   mutate(
#'     type = str_sub(type, start=1, end=-10)
#'   ) %>%
#'   arrange(country, type)
"drinks"

#' 'Straight Outta Compton' Is The Rare Biopic Not About White Dudes
#'
#' The raw data behind the story
#' "'Straight Outta Compton' Is The Rare Biopic Not About White Dudes"
#' \url{https://fivethirtyeight.com/features/straight-outta-compton-is-the-rare-biopic-not-about-white-dudes/}.
#' An analysis using this data was contributed by Pradeep Adhokshaja as a package vignette at
#' \url{https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/biopics.html}.
#'
#' @format A data frame with 761 rows representing movies and 14 variables:
#' \describe{
#'   \item{title}{Title of the film.}
#'   \item{site}{Text to construct IMDB url. Ex: \url{https://www.imdb.com/title/tt1711425}}
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
#' @source IMDB \url{https://www.imdb.com/}
"biopics"

#' A Statistical Analysis of the Work of Bob Ross
#'
#' The raw data behind the story
#' "A Statistical Analysis of the Work of Bob Ross"
#' \url{https://fivethirtyeight.com/features/a-statistical-analysis-of-the-work-of-bob-ross/}.
#' An analysis using this data was contributed by Jonathan Bouchet as a package vignette at
#' \url{https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/bob_ross.html}.
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
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' bob_ross_tidy <- bob_ross %>%
#'   pivot_longer(-c(episode, season, episode_num, title), 
#'      names_to = "object", values_to = "present") %>%
#'   mutate(present = as.logical(present)) %>%
#'   arrange(episode, object)
"bob_ross"

#' Why Classic Rock Isn't What It Used To Be
#'
#' The raw data behind the story
#' "Why Classic Rock Isn't What It Used To Be"
#' \url{https://fivethirtyeight.com/features/why-classic-rock-isnt-what-it-used-to-be/}.
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
#' \url{https://fivethirtyeight.com/features/why-classic-rock-isnt-what-it-used-to-be/}.
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
#' \url{https://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/}.
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
#'   \item{p25th}{25th percentile of earnings}
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
#' \url{https://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/}.
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
#'   \item{grad_p25th}{25th percentile of earnings}
#'   \item{grad_median}{Median earnings of full-time, year-round workers}
#'   \item{grad_p75th}{75th percentile of earnings}
#'   \item{nongrad_total}{Total number of people with major}
#'   \item{nongrad_employed}{Number employed (ESR == 1 or 2)}
#'   \item{nongrad_employed_fulltime_yearround}{Employed at least 50 weeks (WKW == 1) and at least 35 hours (WKHP >= 35)}
#'   \item{nongrad_unemployed}{Number unemployed (ESR == 3)}
#'   \item{nongrad_unemployment_rate}{Unemployed / (Unemployed + Employed)}
#'   \item{nongrad_p25th}{25th percentile of earnings}
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
#' \url{https://fivethirtyeight.com/features/the-economic-guide-to-picking-a-college-major/}.
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
#'   \item{p25th}{25th percentile of earnings}
#'   \item{median}{Median earnings of full-time, year-round workers}
#'   \item{p75th}{75th percentile of earnings}
#'   \item{college_jobs}{Number with job requiring a college degree}
#'   \item{non_college_jobs}{Number with job not requiring a college degree}
#'   \item{low_wage_jobs}{Number in low-wage service jobs}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/college-majors/readme.md}. Note that
#' \code{women-stem.csv} was a subset of the original \code{recent-grads.csv}, so no data frame was created.
#' @seealso \code{\link{college_grad_students}}, \code{\link{college_all_ages}}
"college_recent_grads"

#' Elitist, Superfluous, Or Popular? We Polled Americans on the Oxford Comma
#'
#' The raw data behind the story
#' "Elitist, Superfluous, Or Popular? We Polled Americans on the Oxford Comma"
#' \url{https://fivethirtyeight.com/features/elitist-superfluous-or-popular-we-polled-americans-on-the-oxford-comma/}.
#'
#' @format A data frame with 1129 rows representing respondents and 13 variables:
#' \describe{
#'   \item{respondent_id}{Respondent ID}
#'   \item{gender}{Gender}
#'   \item{age}{Age}
#'   \item{household_income}{Household income bracket}
#'   \item{education}{Education level}
#'   \item{location}{Location (census region)}
#'   \item{more_grammar_correct}{In your opinion, which sentence is more grammatically correct?}
#'   \item{heard_oxford_comma}{Prior to reading about it above, had you heard of the serial (or Oxford) comma?}
#'   \item{care_oxford_comma}{How much, if at all, do you care about the use (or lack thereof) of the serial (or Oxford) comma in grammar?}
#'   \item{write_following}{How would you write the following sentence?}
#'   \item{data_singular_plural}{When faced with using the word "data", have you ever spent time considering if the word was a singular or plural noun?}
#'   \item{care_data}{How much, if at all, do you care about the debate over the use of the word "data" as a singular or plural noun?}
#'   \item{care_proper_grammar}{In your opinion, how important or unimportant is proper use of grammar?}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/comma-survey}.
"comma_survey"

#' Both Republicans And Democrats Have an Age Problem
#'
#' The raw data behind the story
#' "Both Republicans And Democrats Have an Age Problem"
#' \url{https://fivethirtyeight.com/features/both-republicans-and-democrats-have-an-age-problem/}.
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
#' @source consang.net
"cousin_marriage"

#' Every Guest Jon Stewart Ever Had On 'The Daily Show'
#'
#' The raw data behind the story
#' "Every Guest Jon Stewart Ever Had On 'The Daily Show'"
#' \url{https://fivethirtyeight.com/features/every-guest-jon-stewart-ever-had-on-the-daily-show/}.
#'
#' @format A data frame with 2693 rows representing guests and 5 variables:
#' \describe{
#'   \item{year}{The year the episode aired}
#'   \item{google_knowledge_occupation}{Their occupation or office, according to Google's Knowledge Graph or, if they're not in there, how Stewart introduced them on the program.}
#'   \item{show}{Air date of episode. Not unique, as some shows had more than one guest}
#'   \item{group}{A larger group designation for the occupation. For instance, us senators, us presidents, and former presidents are all under "politicians"}
#'   \item{raw_guest_list}{The person or list of people who appeared on the show, according to Wikipedia. The GoogleKnowledge_Occupation only refers to one of them in a given row.}
#' }
#' @source Google Knowledge Graph, The Daily Show clip library, Wikipedia.
"daily_show_guests"

#' Some Democrats Who Could Step Up If Hillary Isn't Ready For Hillary
#'
#' The raw data behind the story
#' "Some Democrats Who Could Step Up If Hillary Isn't Ready For Hillary"
#' \url{https://fivethirtyeight.com/features/some-democrats-who-could-step-up-if-hillary-isnt-ready-for-hillary/}.
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
#' \url{https://fivethirtyeight.com/features/how-baby-boomers-get-high/}.
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
#' Mental Health Data Archive \url{https://www.icpsr.umich.edu/icpsrweb/content/SAMHDA/index.html}.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' use <- drug_use %>%
#'   select(age, n, ends_with("_use")) %>%
#'   pivot_longer(-c(age, n), names_to = "drug", values_to = "use") %>%
#'   mutate(drug = str_sub(drug, start=1, end=-5))
#' freq <- drug_use %>%
#'   select(age, n, ends_with("_freq")) %>%
#'   pivot_longer(-c(age, n), names_to = "drug", values_to = "freq") %>%
#'   mutate(drug = str_sub(drug, start=1, end=-6))
#' drug_use_tidy <- left_join(x=use, y=freq, by = c("age", "n", "drug")) %>%
#'   arrange(age)
"drug_use"

#' Early Senate Polls Have Plenty to Tell Us About November
#'
#' The raw data behind the story
#' "Early Senate Polls Have Plenty to Tell Us About November"
#' \url{https://fivethirtyeight.com/features/early-senate-polls-have-plenty-to-tell-us-about-november/}.
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
#' \url{https://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/}.
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
#' \url{https://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/}.
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
#' \url{https://fivethirtyeight.com/features/blatters-reign-at-fifa-hasnt-helped-soccers-poor/}.
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
#' \url{https://fivethirtyeight.com/features/pols-and-polls-say-the-same-thing-jeb-bush-is-a-weak-front-runner/}.
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
#' \url{https://fivethirtyeight.com/features/fandango-movies-ratings/}.
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
#' \url{https://fivethirtyeight.com/features/how-to-break-fifa/}.
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
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' fifa_audience_tidy <- fifa_audience %>%
#'   pivot_longer(-c(country, confederation), 
#'      names_to = "type", values_to = "share") %>%
#'   mutate(type = str_sub(type, start=1, end=-7)) %>%
#'   arrange(country)
"fifa_audience"

#' 41 Percent Of Fliers Think You're Rude If You Recline Your Seat
#'
#' The raw data behind the story
#' "41 Percent Of Fliers Think You're Rude If You Recline Your Seat"
#' \url{https://fivethirtyeight.com/features/airplane-etiquette-recline-seat/}.
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
#'   \item{talk_stranger}{Generally speaking, is it rude to say more than a few words to the stranger sitting next to you on a plane?}
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
#' \url{https://fivethirtyeight.com/features/the-fivethirtyeight-international-food-associations-2014-world-cup/}.
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
#' \url{https://fivethirtyeight.com/features/the-definitive-analysis-of-love-actually-the-greatest-christmas-movie-of-our-time/}.
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
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' love_actually_appearance_tidy <- love_actually_appearance %>%
#'   pivot_longer(-scenes, names_to = "actor", values_to = "appears") %>%
#'   arrange(scenes)
"love_actually_appearance"

#' The Definitive Analysis Of 'Love Actually,' The Greatest Christmas Movie Of Our Time
#'
#' The raw data behind the story
#' "The Definitive Analysis Of 'Love Actually,' The Greatest Christmas Movie Of Our Time"
#' \url{https://fivethirtyeight.com/features/some-people-are-too-superstitious-to-have-a-baby-on-friday-the-13th/}.
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

#' Information on each state
#'
#' State name, abbreviation, US Census designated division & region.
#'
#' @format A data frame with 51 rows representing airlines and 4 variables:
#' \describe{
#'   \item{state}{State name}
#'   \item{state_abbrev}{State abbreviation}
#'   \item{division}{US Census designated division. Values for \code{division} are nested within \code{region}}
#'   \item{region}{US Census designated region}
#' }
#' @source US Census Bureau \url{https://en.wikipedia.org/wiki/List_of_regions_of_the_United_States#Interstate_regions}.
#' @examples
#' library(dplyr)
#' # Number of states in each division
#' state_info %>%
#'   count(division)
#' # Number of states in each region
#' state_info %>%
#'   count(region)
"state_info"



# Datasets documented by Chester Ismay

#' How The FiveThirtyEight Senate Forecast Model Works
#'
#' The raw data behind the story
#' "How The FiveThirtyEight Senate Forecast Model Works"
#' \url{https://fivethirtyeight.com/features/how-the-fivethirtyeight-senate-forecast-model-works/}.
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
#' @format A data frame with 51 rows representing US states and DC and 13 variables:
#' \describe{
#'   \item{state}{State name}
#'   \item{state_abbrev}{State abbreviation}
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
#' @examples
#' library(ggplot2)
#' ggplot(hate_crimes, aes(x = share_vote_trump, y = hate_crimes_per_100k_splc)) +
#'   geom_text(aes(label = state_abbrev)) +
#'   geom_smooth(se = FALSE, method = "lm") +
#'   labs(x = "Proportion of votes for Donald Trump",
#'        y = "Hate crimes per 100k during Nov 9-18, 2016 (SPLC)",
#'        title = "Relationship between Trump support & hate crimes")
"hate_crimes"

#' Hip-Hop Is Turning On Donald Trump
#'
#' The raw data behind the story
#' "Hip-Hop Is Turning On Donald Trump"
#' \url{https://projects.fivethirtyeight.com/clinton-trump-hip-hop-lyrics/}.
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
#' @source Genius \url{https://genius.com/}
"hiphop_cand_lyrics"

#' The NCAA Bracket: Checking Our Work
#'
#' The raw data behind the story
#' "The NCAA Bracket: Checking Our Work"
#' \url{https://fivethirtyeight.com/features/the-ncaa-bracket-checking-our-work/}.
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
#' @source See \url{https://fivethirtyeight.com/features/the-ncaa-bracket-checking-our-work/}
"hist_ncaa_bball_casts"

#' Where Are America's Librarians?
#'
#' The raw data behind the story
#' "Where Are America's Librarians?"
#' \url{https://fivethirtyeight.com/features/where-are-americas-librarians/}.
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
#' @source Bureau of Labor Statistics \url{https://www.bls.gov/oes/current/oes254021.htm#(1)}
"librarians"

#' "Mad Men" Is Ending. What's Next For The Cast?
#'
#' The raw data behind the story
#' ""Mad Men" Is Ending. What's Next For The Cast?"
#' \url{https://fivethirtyeight.com/features/mad-men-is-ending-whats-next-for-the-cast/}.
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
#' @source IMDB \url{https://imdb.com}
"mad_men"

#' Dear Mona, How Many Flight Attendants Are Men?
#'
#' The raw data behind the story
#' "Dear Mona, How Many Flight Attendants Are Men?"
#' \url{https://fivethirtyeight.com/features/dear-mona-how-many-flight-attendants-are-men/}.
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
#' \url{https://fivethirtyeight.com/features/the-best-mlb-all-star-teams-ever/}.
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
#'   \item{unadj_pyth}{Unadjusted Pythagorean talent rating; PYTH =(RSPG^1.83)/(RSPG^1.83+RAPG^1.83)}
#'   \item{timeline_adj}{Estimate of relative league quality where 2015 MLB = 1.00}
#'   \item{sos}{Strength of schedule faced; adjusts an assumed .500 SOS downward based on timeline adjustment}
#'   \item{adj_pyth}{Adjusted Pythagorean record; =(SOS*unadj_Pyth)/((2*unadj_Pyth*SOS)-SOS-unadj_Pyth+1)}
#'   \item{no_1_player}{Best player according to combo of actual PA/IP and talent}
#'   \item{no_2_player}{2nd-best player according to combo of actual PA/IP and talent}
#' }
#' @source \url{http://baseball-reference.com} , \url{http://chadwick-bureau.com}, Fangraphs
"mlb_as_team_talent"

#' The Best MLB All-Star Teams Ever
#'
#' The raw data behind the story
#' "The Best MLB All-Star Teams Ever"
#' \url{https://fivethirtyeight.com/features/the-best-mlb-all-star-teams-ever/}.
#'
#' @format A data frame with 3930 rows representing Major League Baseball players in given seasons and 15 variables:
#' \describe{
#'   \item{bbref_id}{Player's ID at Baseball-Reference.com}
#'   \item{yearid}{The season in question}
#'   \item{gamenum}{Order of All-Star Game for the season (in years w/ multiple ASGs; set to 0 when only 1 per year)}
#'   \item{gameid}{Game ID at Baseball-Reference.com}
#'   \item{lgid}{League of All-Star team}
#'   \item{startingpos}{Position (according to baseball convention; 1=pitcher, 2=catcher, etc.) if starter}
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
#' @source \url{https://baseball-reference.com} , \url{http://chadwick-bureau.com}, Fangraphs
"mlb_as_play_talent"

#' A Handful Of Cities Are Driving 2016's Rise In Murder
#'
#' The raw data behind the story
#' "A Handful Of Cities Are Driving 2016's Rise In Murder"
#' \url{https://fivethirtyeight.com/features/a-handful-of-cities-are-driving-2016s-rise-in-murders/}.
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
#' \url{https://fivethirtyeight.com/features/a-handful-of-cities-are-driving-2016s-rise-in-murders/}.
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
#' \url{https://fivethirtyeight.com/features/projecting-the-top-50-players-in-the-2015-nba-draft-class/}.
#' An analysis using this data was contributed by G. Elliott Morris as a package vignette at
#' \url{https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/NBA.html}.
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
#' @source See \url{https://fivethirtyeight.com/features/projecting-the-top-50-players-in-the-2015-nba-draft-class/}
"nba_draft_2015"

#' Accurately Counting NBA Tattoos Isn't Easy, Even If You're Up Close
#'
#' The raw data behind the story
#' "Accurately Counting NBA Tattoos Isn't Easy, Even If You're Up Close"
#' \url{https://fivethirtyeight.com/features/accurately-counting-nba-tattoos-isnt-easy-even-if-youre-up-close/}.
#'
#' @format A data frame with 636 rows representing National Basketball Association players and 2 variables:
#' \describe{
#'   \item{player_name}{Name of player}
#'   \item{tattoos}{TRUE corresponds to player having tattoos, FALSE corresponds to not}
#' }
#' @source Ethan Swan \url{https://nbatattoos.tumblr.com/}
"nba_tattoos"

#' The Rams Are Dead To Me, So I Answered 3,352 Questions To Find A New NFL Team
#'
#' The raw data behind the story
#' "The Rams Are Dead To Me, So I Answered 3,352 Questions To Find A New NFL Team"
#' \url{https://fivethirtyeight.com/features/the-rams-are-dead-to-me-so-i-answered-3352-questions-to-find-a-new-team/}.
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
#' @source \url{https://www.espn.com/sportsnation/teamrankings}, \url{https://www.allourideas.org/nflteampickingsample}
"nfl_fav_team"

#' The NFL's Uneven History Of Punishing Domestic Violence
#'
#' The raw data behind the story
#' "The NFL's Uneven History Of Punishing Domestic Violence"
#' \url{https://fivethirtyeight.com/features/nfl-domestic-violence-policy-suspensions/}.
#'
#' @format A data frame with 269 rows representing National Football League players and 7 variables:
#' \describe{
#'   \item{name}{first initial.last name}
#'   \item{team}{team at time of suspension}
#'   \item{games}{number of games suspended (one regular season = 16 games)}
#'   \item{category}{personal conduct, substance abuse, performance enhancing drugs or in-game violence}
#'   \item{description}{description of suspension}
#'   \item{year}{year of suspension}
#'   \item{source}{news source}
#' }
#' @source \url{https://en.wikipedia.org/wiki/List_of_players_and_coaches_suspended_by_the_NFL}, \url{https://www.spotrac.com/fines-tracker/nfl/suspensions/}
"nfl_suspensions"

#' Who Goes To Meaningless NFL Games And Why?
#'
#' The raw data behind the story
#' "Who Goes To Meaningless NFL Games And Why?"
#' \url{https://fivethirtyeight.com/features/who-goes-to-meaningless-nfl-games-and-why/}.
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
#' \url{https://fivethirtyeight.com/features/who-goes-to-meaningless-nfl-games-and-why/}.
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
#' \url{https://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/}.
#'
#' @format A data frame with 6496 rows representing National Football League wide receivers and 6 variables:
#' \describe{
#'   \item{pfr_player_id}{Player identification code at \url{https://www.pro-football-reference.com/}}
#'   \item{player_name}{The player's name}
#'   \item{career_try}{Career True Receiving Yards}
#'   \item{career_ranypa}{Adjusted Net Yards Per Attempt (relative to average) of player's career teams, weighted by TRY w/ each team}
#'   \item{career_wowy}{The amount by which \code{career_ranypa} exceeds what would be expected from his QBs' (age-adjusted) performance without the receiver}
#'   \item{bcs_rating}{The number of yards per game by which a player would outgain an average receiver on the same team, after adjusting for teammate quality and age}
#' }
#' @source See \url{https://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/}
"nflwr_hist"

#' The Football Hall Of Fame Has A Receiver Problem
#'
#' The raw data behind the story
#' "The Football Hall Of Fame Has A Receiver Problem"
#' \url{https://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/}.
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
#' \url{https://fivethirtyeight.com/features/you-cant-trust-what-you-read-about-nutrition}.
#'
#' @format A data frame with 27716 rows representing Regression fits for p-hacking and 3 variables:
#' \describe{
#'   \item{food}{Name of food (response/dependent variable)}
#'   \item{characteristic}{Name of characteristic (predictor/independent variable)}
#'   \item{p_values}{P-value from regression fit}
#' }
#' @source See \url{https://fivethirtyeight.com/features/you-cant-trust-what-you-read-about-nutrition}
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
#' \url{https://fivethirtyeight.com/features/where-police-have-killed-americans-in-2015}.
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
#' @source \url{https://hillaryspeeches.com/}, \url{https://www.conservativedailynews.com/}
"pres_2016_trail"



# Datasets documented by Jennifer Chun

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
#' library(dplyr)
#' library(tidyr)
#' police_locals_tidy <- police_locals %>%
#'    pivot_longer(all:asian, names_to = "race", values_to = "perc_in")
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
#' @source American Presidency Project, Gerhard Peters and John T. Woolley \url{https://www.presidency.ucsb.edu}
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
#' \url{https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/tarantino_swears.html}.
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
#' @source Memeorandum \url{https://www.memeorandum.com/}.
"trump_news"

#' The World's Favorite Donald Trump Tweets
#'
#' The raw data behind the story
#' "The World's Favorite Donald Trump Tweets"
#' \url{https://fivethirtyeight.com/features/the-worlds-favorite-donald-trump-tweets/}.
#' Tweets posted on twitter by Donald Trump (@@realDonaldTrump).
#' An analysis using this data was contributed by Adam Spannbauer as a package vignette at
#' \url{https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/trump_twitter.html}.
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
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' riddler_castles_tidy<-riddler_castles %>%
#'    pivot_longer(castle1:castle10, names_to = "castle" , values_to = "soldiers") %>%
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
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' riddler_castles_tidy<-riddler_castles2 %>%
#'    pivot_longer(castle1:castle10, names_to = "castle" , values_to = "soldiers") %>%
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



# Datasets documented by Meredith Manley

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
#'   \item{oppose}{The number of negative responses to the question at the pollster.}
#'   \item{url}{The website associated with the polling question.}
#'   \item{text}{The polling question asked at the pollster.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/ahca-polls/README.md}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' ahca_polls_tidy <- ahca_polls %>%
#'   pivot_longer(-c(start, end, pollster, text, url), names_to = "opinion", values_to = "count")
"ahca_polls"

#' Bachelorette / Bachelor
#'
#' The raw data behind the stories:
#' "How To Spot A Front-Runner On The 'Bachelor' Or 'Bachelorette'"
#' \url{https://fivethirtyeight.com/features/the-bachelorette/}, "Rachel's Season Is Fitting Neatly Into 'Bachelorette' History"
#' \url{https://fivethirtyeight.com/features/rachels-season-is-fitting-neatly-into-bachelorette-history/}, and "Rachel Lindsay's 'Bachelorette' Season, In Three Charts"
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
#' @details Eliminates connote either an elimination (starts with "E") or a rose
#' (starts with "R"). Eliminations supersede roses. "E" connotes a standard
#' elimination, typically at a rose ceremony. "EQ" means the contestant quits.
#' "EF" means the contestant was fired by production. "ED" connotes a date
#' elimination. "EU" connotes an unscheduled elimination, one that takes place
#' at a time outside of a date or rose ceremony. "R" means the contestant
#' received a rose. "R1" means the contestant got a first impression rose.
#' "D1" means a one-on-one date, "D2" means a 2-on-1, "D3" means a 3-on-1
#' group date, and so on. Weeks of the show are eliminated by rose
#' ceremonies, and may not line up exactly with episodes.
#' @source \url{https://bachelor-nation.fandom.com/wiki/Bachelor_Nation_Wiki}
#' and then missing seasons were filled in by ABC and FiveThirtyEight staffers.
"bachelorette"

#' Candy Power Ranking
#'
#' The raw data behind the story "The Ultimate Halloween Candy Power Ranking"
#' \url{https://fivethirtyeight.com/features/the-ultimate-halloween-candy-power-ranking/}.
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
#'   \item{sugarpercent}{The percentile of sugar it falls under within the data set.}
#'   \item{pricepercent}{The unit price percentile compared to the rest of the set.}
#'   \item{winpercent}{The overall win percentage according to 269,000 matchups.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/candy-power-ranking}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' library(stringr)
#' candy_rankings_tidy <- candy_rankings %>%
#'   pivot_longer(-c(competitorname, sugarpercent, pricepercent, winpercent), 
#'      names_to = "characteristics", values_to = "present") %>%
#'   mutate(present = as.logical(present)) %>%
#'   arrange(competitorname)
"candy_rankings"

#' Chess Transfers
#'
#' The raw data behind the story "American Chess Is Great Again"
#' \url{https://fivethirtyeight.com/features/american-chess-is-great-again/}.
#'
#' @format A data frame with 932 rows representing international player transfers and 5 variables:
#' \describe{
#'   \item{url}{The corresponding website on the World Chess Federation page which details the transfers of a given year.}
#'   \item{id}{An numeric identifier for the chess player who transferred.}
#'   \item{federation}{The current national federation of the chess player}
#'   \item{form_fed}{The national federation from which the chess player has transferred.}
#'   \item{transfer_date}{The date at which the transfer took place.}
#' }
#' @source World Chess Federation
"chess_transfers"

#' Congress Generic Ballot Polls
#'
#' The raw data behind the story
#' "Are Democrats Winning The Race For Congress?"
#' \url{https://projects.fivethirtyeight.com/congress-generic-ballot-polls/}.
#'
#' @format A data frame with 934 rows representing polls and 21 variables:
#' \describe{
#'   \item{subgroup}{No description provided.}
#'   \item{modeldate}{No description provided.}
#'   \item{startdate}{Start date of the poll.}
#'   \item{enddate}{End date of the poll.}
#'   \item{pollster}{The organization that conducted the poll (rather than the organization that paid for or sponsored it)}
#'   \item{grade}{No description provided.}
#'   \item{samplesize}{No description provided.}
#'   \item{population}{A = ALL ADULTS, RV = REGISTERED VOTERS, LV = LIKELY VOTERS, V = VOTERS}
#'   \item{weight}{No description provided.}
#'   \item{influence}{No description provided.}
#'   \item{dem}{No description provided.}
#'   \item{rep}{No description provided.}
#'   \item{adjusted_dem}{No description provided.}
#'   \item{adjusted_rep}{No description provided.}
#'   \item{multiversions}{No description provided.}
#'   \item{tracking}{No description provided.}
#'   \item{url}{No description provided.}
#'   \item{poll_id}{No description provided.}
#'   \item{question_id}{No description provided.}
#'   \item{createddate}{No description provided.}
#'   \item{timestamp}{No description provided.}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/congress-generic-ballot/README.md}
#' @seealso \code{\link{generic_topline}}
"generic_polllist"

#' Congress Generic Ballot Polls
#'
#' The raw data behind the story
#' "Are Democrats Winning The Race For Congress?"
#' \url{https://projects.fivethirtyeight.com/congress-generic-ballot-polls/}.
#'
#' @format A data frame with 751 rows representing polls and 9 variables:
#' \describe{
#'   \item{subgroup}{No description provided.}
#'   \item{modeldate}{No description provided.}
#'   \item{dem_estimate}{No description provided.}
#'   \item{dem_hi}{No description provided.}
#'   \item{dem_lo}{No description provided.}
#'   \item{rep_estimate}{No description provided.}
#'   \item{rep_hi}{No description provided.}
#'   \item{rep_lo}{No description provided.}
#'   \item{timestamp}{No description provided.}
#'
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/blob/master/congress-generic-ballot/README.md}
#' @seealso \code{\link{generic_polllist}}
"generic_topline"

#' Current SPI ratings and rankings for men's club teams
#'
#' The raw data behind the stories "Club Soccer Predictions"
#' \url{https://projects.fivethirtyeight.com/soccer-predictions/} and
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
#' @seealso \code{\link[fivethirtyeightdata]{spi_matches}}
"spi_global_rankings"



# Datasets documented by Maggie Shea

#' How Every NFL Team’s Fans Lean Politically
#'
#' The raw data behind the story
#' "How Every NFL Team’s Fans Lean Politically"
#' \url{https://fivethirtyeight.com/features/how-every-nfl-teams-fans-lean-politically}: Google Trends Data.
#'
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
#' @source Google Trends \url{https://trends.google.com/}.
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' nfl_fandom_google_tidy <- nfl_fandom_google %>%
#'   pivot_longer(-c("dma", "trump_2016_vote"), 
#'     names_to = "sport", values_to = "search_traffic") %>%
#'   arrange(dma)
#' @seealso \code{\link{nfl_fandom_surveymonkey}}
"nfl_fandom_google"

#' How Every NFL Team’s Fans Lean Politically
#'
#' The raw data behind the story
#' "How Every NFL Team’s Fans Lean Politically"
#' \url{https://fivethirtyeight.com/features/how-every-nfl-teams-fans-lean-politically}: SurveyMonkey Data.
#'
#' @format a data frame with 33 rows representing teams and 25 variables:
#' \describe{
#' \item{team}{NFL team}
#' \item{total_respondents}{Total number of poll respondents who ranked the given team in their top 3 favorites}
#' \item{asian_dem}{Number of Asian, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{black_dem}{Number of Black, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{hispanic_dem}{Number of Hispanic, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{other_dem}{Number of democrat poll respondents who identified their race as "other" (not Asian, Black, Hispanic, or White) and ranked the given team in their top 3 favorites}
#' \item{white_dem}{Number of White, democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{total_dem}{Total number of democrat poll respondents who ranked the given team in their top 3 favorites}
#' \item{asian_ind}{Number of Asian, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{black_ind}{Number of Black, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{hispanic_ind}{Number of Hispanic, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{other_ind}{Number of independent poll respondents who identified their race as "other" (not Asian, Black, Hispanic, or White) and ranked the given team in their top 3 favorites}
#' \item{white_ind}{Number of White, independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{total_ind}{Total number of independent poll respondents who ranked the given team in their top 3 favorites}
#' \item{asian_gop}{Number of Asian, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{black_gop}{Number of Black, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{hispanic_gop}{Number of Hispanic, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{other_gop}{Number of republican poll respondents who identified their race as "other" (not Asian, Black, Hispanic, or White) and ranked the given team in their top 3 favorites}
#' \item{white_gop}{Number of White, republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{total_gop}{Total number of republican poll respondents who ranked the given team in their top 3 favorites}
#' \item{gop_percent}{Percent of fans (who ranked the team in their top 3 favorite NFL teams) who are republicans}
#' \item{dem_percent}{Percent of fans who are democrats}
#' \item{ind_percent}{Percent of fans who are independent}
#' \item{white_percent}{Percent of fans who are White}
#' \item{nonwhite_percent}{Percent of fans who are not White}
#' }
#' @source See \url{https://github.com/fivethirtyeight/data/tree/master/nfl-fandom/NFL_fandom_data-surveymonkey.csv}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' nfl_fandom_surveymonkey_tidy <- nfl_fandom_surveymonkey %>%
#'   pivot_longer(-c("team", "total_respondents", "gop_percent", "dem_percent",
#'             "ind_percent", "white_percent", "nonwhite_percent"),
#'             names_to = "race_party", values_to = "percent") %>%
#'   arrange(team)
#' @seealso \code{\link{nfl_fandom_google}}
"nfl_fandom_surveymonkey"

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}: Google Trends Data.
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

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}:
#' Mediacloud Hurricanes Data.
#'
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

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}:
#' Mediacloud States Data.
#'
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

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}:
#' Mediacloud Top Online News Data.
#'
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

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}:
#' Mediacloud Trump Data.
#'
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

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}:
#' TV Hurricanes Data.
#'
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

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}:
#' TV Hurricanes by Network Data.
#'
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

#' The Media Really Started Paying Attention to Puerto Rico When Trump Did
#'
#' The raw data behind the story
#' "The Media Really Started Paying Attention to Puerto Rico When Trump Did"
#' \url{https://fivethirtyeight.com/features/the-media-really-started-paying-attention-to-puerto-rico-when-trump-did/}:
#' TV States Data.
#'
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
#' \item{nyc_311}{No description provided.}
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
#' Agency acronyms from the Data Dictionary. See also \url{https://github.com/fivethirtyeight/data/tree/master/sandy-311-calls}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' sandy_311_tidy <- sandy_311 %>%
#'   pivot_longer(-c("date", "total"), names_to = "agency", values_to = "num_calls") %>%
#'   arrange(date) %>%
#'   select(date, agency, num_calls, total) %>%
#'   rename(total_calls = total) %>%
#'   mutate(agency = as.factor(agency))
"sandy_311"

#' How Popular is Donald Trump
#'
#' The raw data behind the story:
#' "How Popular is Donald Trump"
#' \url{https://projects.fivethirtyeight.com/trump-approval-ratings/}: Approval Poll Dataset
#'
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
#' \item{adjusted_approve}{The percentage of respondents who approve of the president adjusted for systematic tendencies of the polling firm}
#' \item{adjusted_disapprove}{The percentage of respondents who approve of the president adjusted for systematic tendencies of the polling firm}
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

#' How Popular is Donald Trump
#'
#' The raw data behind the story:
#' "How Popular is Donald Trump"
#' \url{https://projects.fivethirtyeight.com/trump-approval-ratings/}: Approval Trend Dataset.
#'
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
#' \url{https://fivethirtyeight.com/features/what-the-world-thinks-of-trump/}:
#' Trump World Issues Dataset
#'
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
#' @source Pew Research Center \url{https://www.pewresearch.org/fact-tank/2017/07/17/9-charts-on-how-the-world-sees-trump/}
#' @seealso \code{\link{trumpworld_polls}}
"trumpworld_issues"

#' What the World Thinks of Trump
#'
#' The raw data behind the story
#' "What the World Thinks of Trump"
#' \url{https://fivethirtyeight.com/features/what-the-world-thinks-of-trump/}:
#' Trump World Polls Dataset.
#'
#' @format A data frame with 32 rows representing years and 40 variables:
#' \describe{
#' \item{year}{Year the poll was conducted}
#' \item{avg}{The average percentage people who answered the poll question positively (support the president or have a favorable view of the U.S.)}
#' \item{canada}{The percentage of people from Canada who answered the poll question positively}
#' \item{france}{The percentage of people from France who answered the poll question positively}
#' \item{germany}{The percentage of people from Germany who answered the poll question positively}
#' \item{greece}{The percentage of people from Greece who answered the poll question positively}
#' \item{hungary}{The percentage of people from Hungary who answered the poll question positively}
#' \item{italy}{The percentage of people from Italy who answered the poll question positively}
#' \item{netherlands}{The percentage of people from Netherlands who answered the poll question positively}
#' \item{poland}{The percentage of people from Poland who answered the poll question positively}
#' \item{spain}{The percentage of people from Spain who answered the poll question positively}
#' \item{sweden}{The percentage of people from Sweden who answered the poll question positively}
#' \item{uk}{The percentage of people from the U.K. who answered the poll question positively}
#' \item{russia}{The percentage of people from Russia who answered the poll question positively}
#' \item{australia}{The percentage of people from Australia who answered the poll question positively}
#' \item{india}{The percentage of people from India who answered the poll question positively}
#' \item{indonesia}{The percentage of people from Indonesia who answered the poll question positively}
#' \item{japan}{The percentage of people from Japan who answered the poll question positively}
#' \item{philippines}{The percentage of people from the Philippines who answered the poll question positively}
#' \item{south_korea}{The percentage of people from South Korea who answered the poll question positively}
#' \item{vietnam}{The percentage of people from Vietnam who answered the poll question positively}
#' \item{israel}{The percentage of people from Israel who answered the poll question positively}
#' \item{jordan}{The percentage of people from Jordan who answered the poll question positively}
#' \item{lebanon}{The percentage of people from Lebanon who answered the poll question positively}
#' \item{tunisia}{The percentage of people from Tunisia who answered the poll question positively}
#' \item{turkey}{The percentage of people from Turkey who answered the poll question positively}
#' \item{ghana}{The percentage of people from Ghana who answered the poll question positively}
#' \item{kenya}{The percentage of people from Kenya who answered the poll question positively}
#' \item{nigeria}{The percentage of people from Nigeria who answered the poll question positively}
#' \item{senegal}{The percentage of people from Senegal who answered the poll question positively}
#' \item{south_africa}{The percentage of people from South Africa who answered the poll question positively}
#' \item{tanzania}{The percentage of people from Tanzania who answered the poll question positively}
#' \item{argentina}{The percentage of people from Argentina who answered the poll question positively}
#' \item{brazil}{The percentage of people from Brazil who answered the poll question positively}
#' \item{chile}{The percentage of people from Chile who answered the poll question positively}
#' \item{colombia}{The percentage of people from Colombia who answered the poll question positively}
#' \item{mexico}{The percentage of people from Mexico who answered the poll question positively}
#' \item{peru}{The percentage of people from Peru who answered the poll question positively}
#' \item{venezuela}{The percentage of people from Venezuela who answered the poll question positively}
#' \item{question}{The item being polled. Specifically, whether respondents: 1) Have a favorable view of the U.S. or 2) Trust the U.S. President when it comes to foreign affairs}
#' }
#' @source Pew Research Center \url{https://www.pewresearch.org/fact-tank/2017/07/17/9-charts-on-how-the-world-sees-trump/}
#' @examples
#' # To convert data frame to tidy data (long) format, run:
#' library(dplyr)
#' library(tidyr)
#' trumpworld_polls_tidy <- trumpworld_polls %>%
#'   pivot_longer(-c("year", "avg", "question"), 
#'     names_to = "country", values_to = "percent_positive")
#' @seealso \code{\link{trumpworld_issues}}
"trumpworld_polls"

#' Mayweather Is Defined By The Zero Next To His Name
#'
#' The raw data behind:
#' "Mayweather Is Defined By The Zero Next To His Name"
#' \url{https://fivethirtyeight.com/features/mayweather-is-defined-by-the-zero-next-to-his-name/}
#'
#' @format A data frame with 2125 rows representing boxing matches and 4 variables:
#' \describe{
#' \item{name}{Name of boxer}
#' \item{url}{URL with the boxer's record}
#' \item{date}{Date of the match}
#' \item{wins}{Number of cumulative wins for the boxer including the match at the specified date}
#' }
#' @source Box Rec \url{https://boxrec.com/}
"undefeated"



# Datasets documented by Starry Yujia Zhou

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
#' @source Emerson College’s poll of registered voters
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
#' @format A dataframe with 588 rows representing district-level results of the
#' classic, lite, and deluxe house forecasts since 2018/08/01 and 11 variables.
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
#' @seealso \code{\link[fivethirtyeightdata]{house_district_forecast}}
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
"ncaa_w_bball_tourney"

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
#' \item{cp_date}{Date the person plead guilty or was convicted (if applicable)}
#' \item{cp_days}{Length, in days, from the start of the investigation to the date the person plead guilty or was convicted (if applicable)}
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
#'   pivot_longer(-c(question, response), names_to = "sexuality", values_to = "ratio_by_sexuality")
#'
#' # Visualize results
#' ggplot(data = masculinity_tidy, aes(x = response, y = ratio_by_sexuality, fill = sexuality)) +
#'   geom_bar(stat="identity", position = 'dodge') +
#'   labs(x = "Response", y = "Proportion", labs = "Sexuality",
#'        title = "In general, how masculine or 'manly' do you feel?")
"masculinity_survey"



# Datasets documented by Natalia Iannucci

#' @name media_mentions_2020
#' @rdname media_mentions_2020
#' 
#' @title 2020 Presidential Candidates Media Mentions
#' 
#' @description The raw data behind the story
#' "Beto O'Rourke Ignored Cable News - And It Ignored Him"
#' \url{https://fivethirtyeight.com/features/beto-orourke-ignored-cable-news-and-it-ignored-him/}
#' 
NULL

#' @rdname media_mentions_2020
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
#' @source The GDELT Television API \url{https://blog.gdeltproject.org/gdelt-2-0-television-api-debuts/}, which processes the data from the TV News Archive \url{https://archive.org/details/tv}.
"media_mentions_cable"

#' @rdname media_mentions_2020
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
#' @source Two collections in the Media Cloud \url{https://mediacloud.org/} database U.S. Top Online News \url{https://sources.mediacloud.org/#/collections/58722749} and U.S. Top Digital Native News \url{https://sources.mediacloud.org/#/collections/57078150}
"media_mentions_online"



# Datasets documented by Marium Tapal

#' @name state_of_the_state
#' @rdname state_of_the_state
#' 
#' @title What America’s Governors Are Talking About
#' 
#' @description The raw data behind the story
#' "What America’s Governors Are Talking About"
#' \url{https://fivethirtyeight.com/features/what-americas-governors-are-talking-about/}
#' 
NULL

#' @rdname state_of_the_state
#' 
#' @format 2 data frames about the 50 U.S Governors' Speeches
#' 
#' @section state_index:
#' A data frame with 50 rows representing the 50 U.S. states and 5 variables:
#' \describe{
#'   \item{state}{the state}
#'   \item{governor}{the name of the state's governor}
#'   \item{party}{the party of the state's governor}
#'   \item{filename}{the filename of the speech in the speeches folder at \url{https://github.com/rudeboybert/fivethirtyeight/tree/master/data-raw/state-of-the-state/speeches}}
#'   \item{url}{a link to an official/media source for the speech}
#'   }
"state_index"

#' @rdname state_of_the_state
#' @section state_words:
#' A data frame with 2,223 rows representing phrases and 9 variables:
#' \describe{
#'   \item{phrase}{one-, two-, and three-word phrases spoken repeatedly}
#'   \item{category}{thematic categories for the phrases}
#'   \item{d_speeches}{number of Democratic speeches containing the phrase}
#'   \item{r_speeches}{number of Republican speeches containing the phrase}
#'   \item{total}{total number of speeches containing the phrase}
#'   \item{percent_of_d_speeches}{percent of the 23 Democratic speeches containing the phrase}
#'   \item{percent_of_r_speeches}{percent of the 27 Republican speeches containing the phrase}
#'   \item{chi2}{the chi-square test statistic for statistical significance}
#'   \item{pval}{p-value for chi^2 test}
#'   }
#' @source The chi-square test statistic \url{https://scikit-learn.org/stable/modules/generated/sklearn.feature_selection.chi2.html#sklearn.feature_selection.chi2}
"state_words"



# Datasets documented by Alina Barylsky

#' Democratic Primary Candidates 2018
#'
#' The raw data behind the stories:
#' "We Researched Hundreds Of Races. Here’s Who Democrats Are Nominating" \url{https://fivethirtyeight.com/features/democrats-primaries-candidates-demographics/}
#' and "How’s The Progressive Wing Doing In Democratic Primaries So Far?" \url{https://fivethirtyeight.com/features/the-establishment-is-beating-the-progressive-wing-in-democratic-primaries-so-far/}.
#'
#' @format A data frame with 811 rows representing Democratic candidates, and 32 variables:
#' \describe{
#'   \item{candidate}{All candidates who received votes in 2018’s Democratic primary elections for U.S. Senate, U.S. House and governor in which no incumbent ran. Supplied by Ballotpedia.}
#'   \item{state}{The state in which the candidate ran. Supplied by Ballotpedia.}
#'   \item{body}{The body of government for which the candidate ran. Supplied by Ballotpedia.}
#'   \item{district_num}{If applicable, congressional district number for which the candidate ran. Supplied by Ballotpedia.}
#'   \item{office_type}{The office for which the candidate ran. Supplied by Ballotpedia.}
#'   \item{race_type}{Whether it was a “regular” or “special” election. Supplied by Ballotpedia.}
#'   \item{race_primary_election_date}{The date on which the primary was held. Supplied by Ballotpedia.}
#'   \item{primary_status}{Whether the candidate lost (“Lost”) the primary or won/advanced to a runoff (“Advanced”). Supplied by Ballotpedia.}
#'   \item{primary_runoff_status}{“None” if there was no runoff; “On the Ballot” if the candidate advanced to a runoff but it hasn’t been held yet; “Advanced” if the candidate won the runoff; “Lost” if the candidate lost the runoff. Supplied by Ballotpedia.}
#'   \item{general_status}{“On the Ballot” if the candidate won the primary or runoff and has advanced to November; otherwise, “None.” Supplied by Ballotpedia.}
#'   \item{partisan_lean}{The FiveThirtyEight partisan lean of the district or state in which the election was held. Partisan leans are calculated by finding the average difference between how a state or district voted in the past two presidential elections and how the country voted overall, with 2016 results weighted 75 percent and 2012 results weighted 25 percent.}
#'   \item{primary_percent}{The percentage of the vote received by the candidate in his or her primary. In states that hold runoff elections, we looked only at the first round (the regular primary). In states that hold all-party primaries (e.g., California), a candidate’s primary percentage is the percentage of the total Democratic vote they received. Unopposed candidates and candidates nominated by convention (not primary) are given a primary percentage of 100 but were excluded from our analysis involving vote share. Numbers come from official results posted by the secretary of state or local elections authority; if those were unavailable, we used unofficial election results from the New York Times.}
#'   \item{won_primary}{“Yes” if the candidate won his or her primary and has advanced to November; “No” if he or she lost.}
#'   \item{race}{“White” if we identified the candidate as non-Hispanic white; “Nonwhite” if we identified the candidate as Hispanic and/or any nonwhite race; blank if we could not identify the candidate’s race or ethnicity. To determine race and ethnicity, we checked each candidate’s website to see if he or she identified as a certain race. If not, we spent no more than two minutes searching online news reports for references to the candidate’s race.}
#'   \item{veteran}{If the candidate’s website says that he or she served in the armed forces, we put “Yes.” If the website is silent on the subject (or explicitly says he or she didn’t serve), we put “No.” If the field was left blank, no website was available.}
#'   \item{lgbtq}{If the candidate’s website says that he or she is LGBTQ (including indirect references like to a same-sex partner), we put “Yes.” If the website is silent on the subject (or explicitly says he or she is straight), we put “No.” If the field was left blank, no website was available.}
#'   \item{elected_official}{We used Ballotpedia, VoteSmart and news reports to research whether the candidate had ever held elected office before, at any level. We put “Yes” if the candidate has held elected office before and “No” if not. }
#'   \item{self_funder}{We used Federal Election Committee fundraising data (for federal candidates) and state campaign-finance data (for gubernatorial candidates) to look up how much each candidate had invested in his or her own campaign, through either donations or loans. We put “Yes” if the candidate donated or loaned a cumulative $400,000 or more to his or her own campaign before the primary and “No” for all other candidates.}
#'   \item{stem}{If the candidate identifies on his or her website that he or she has a background in the fields of science, technology, engineering or mathematics, we put “Yes.” If not, we put “No.” If the field was left blank, no website was available.}
#'   \item{obama_alum}{We put “Yes” if the candidate mentions working for the Obama administration or campaign on his or her website, or if the candidate shows up on this list of Obama administration members and campaign hands running for office. If not, we put “No.”}
#'   \item{party_support}{“Yes” if the candidate was placed on the DCCC’s Red to Blue list before the primary, was endorsed by the DSCC before the primary, or if the DSCC/DCCC aired pre-primary ads in support of the candidate. (Note: according to the DGA’s press secretary, the DGA does not get involved in primaries.) “No” if the candidate is running against someone for whom one of the above things is true, or if one of those groups specifically anti-endorsed or spent money to attack the candidate. If those groups simply did not weigh in on the race, we left the cell blank.}
#'   \item{emily_endorsed}{“Yes” if the candidate was endorsed by Emily’s List before the primary. “No” if the candidate is running against an Emily-endorsed candidate or if Emily’s List specifically anti-endorsed or spent money to attack the candidate. If Emily’s List simply did not weigh in on the race, we left the cell blank.}
#'   \item{guns_sense_candidate}{“Yes” if the candidate received the Gun Sense Candidate Distinction from Moms Demand Action/Everytown for Gun Safety before the primary, according to media reports or the candidate’s website. “No” if the candidate is running against an candidate with the distinction. If Moms Demand Action simply did not weigh in on the race, we left the cell blank.}
#'   \item{biden_endorsed}{“Yes” if the candidate was endorsed by Joe Biden before the primary. “No” if the candidate is running against a Biden-endorsed candidate or if Biden specifically anti-endorsed the candidate. If Biden simply did not weigh in on the race, we left the cell blank.}
#'   \item{warren_endorsed}{“Yes” if the candidate was endorsed by Elizabeth Warren before the primary. “No” if the candidate is running against a Warren-endorsed candidate or if Warren specifically anti-endorsed the candidate. If Warren simply did not weigh in on the race, we left the cell blank.}
#'   \item{sanders_endorsed}{“Yes” if the candidate was endorsed by Bernie Sanders before the primary. “No” if the candidate is running against a Sanders-endorsed candidate or if Sanders specifically anti-endorsed the candidate. If Sanders simply did not weigh in on the race, we left the cell blank.}
#'   \item{our_revolution_endorsed}{“Yes” if the candidate was endorsed by Our Revolution before the primary, according to the Our Revolution website. “No” if the candidate is running against an Our Revolution-endorsed candidate or if Our Revolution specifically anti-endorsed or spent money to attack the candidate. If Our Revolution simply did not weigh in on the race, we left the cell blank.}
#'   \item{justice_dems_endorsed}{“Yes” if the candidate was endorsed by Justice Democrats before the primary, according to the Justice Democrats website, candidate website or news reports. “No” if the candidate is running against a Justice Democrats-endorsed candidate or if Justice Democrats specifically anti-endorsed or spent money to attack the candidate. If Justice Democrats simply did not weigh in on the race, we left the cell blank.}
#'   \item{pccc_endorsed}{“Yes” if the candidate was endorsed by the Progressive Change Campaign Committee before the primary, according to the PCCC website, candidate website or news reports. “No” if the candidate is running against a PCCC-endorsed candidate or if the PCCC specifically anti-endorsed or spent money to attack the candidate. If the PCCC simply did not weigh in on the race, we left the cell blank.}
#'   \item{indivisible_endorsed}{“Yes” if the candidate was endorsed by Indivisible before the primary, according to the Indivisible website, candidate website or news reports. “No” if the candidate is running against an Indivisible-endorsed candidate or if Indivisible specifically anti-endorsed or spent money to attack the candidate. If Indivisible simply did not weigh in on the race, we left the cell blank.}
#'   \item{wfp_endorsed}{“Yes” if the candidate was endorsed by the Working Families Party before the primary, according to the WFP website, candidate website or news reports. “No” if the candidate is running against a WFP-endorsed candidate or if the WFP specifically anti-endorsed or spent money to attack the candidate. If the WFP simply did not weigh in on the race, we left the cell blank.}
#'   \item{vote_vets_endorsed}{“Yes” if the candidate was endorsed by VoteVets before the primary, according to the VoteVets website, candidate website or news reports. “No” if the candidate is running against a VoteVets-endorsed candidate or if VoteVets specifically anti-endorsed or spent money to attack the candidate. If VoteVets simply did not weigh in on the race, we left the cell blank.}
#'   \item{no_labels_support}{“Yes” if a No Labels-affiliated group (Citizens for a Strong America Inc., Forward Not Back, Govern or Go Home, United for Progress Inc. or United Together) spent money in support of the candidate in the primary. “No” if the candidate is running against an candidate supported by a No Labels-affiliated group or if a No Labels-affiliated group specifically anti-endorsed or spent money to attack the candidate. If No Labels simply did not weigh in on the race, we left the cell blank.}
#'   }
#' @source Ballotpedia, New York Times, and candidate websites. See also \url{https://github.com/fivethirtyeight/data/blob/master/primary-candidates-2018/README.md}
#' @note This data was also used in "We Looked At Hundreds Of Endorsements. Here’s Who Democrats Are Listening To" published on 2008-08-14 \url{https://fivethirtyeight.com/features/the-establishment-is-beating-the-progressive-wing-in-democratic-primaries-so-far/}
"dem_candidates"



# Datasets documented by Sunni Raleigh

#' @name wwc_2019
#' @rdname wwc_2019
#' 
#' @title 2019 Women's World Cup Predictions
#' 
#' @description The raw data behind the story
#' "2019 Women’s World Cup Predictions"
#' \url{https://projects.fivethirtyeight.com/2019-womens-world-cup-predictions/}
#' 
NULL

#' @rdname wwc_2019
#' 
#' @format 2 dataframes about the 2019 Women's World Cup matches and teams
#' @section wwc_2019_forecasts:
#' A data frame with 192 rows representing 2019 Women's World Cup team match-by-match projections, and 21 variables:
#' \describe{
#'   \item{date}{Date match was played}
#'   \item{team}{Team}
#'   \item{group}{Assigned group for the group stage}
#'   \item{spi}{Soccer power index}
#'   \item{global_o}{SPI offensive rating}
#'   \item{global_d}{SPI defensive rating}
#'   \item{sim_wins}{Simulated number of wins}
#'   \item{sim_ties}{Simulated number of ties}
#'   \item{sim_losses}{Simulated number of losses}
#'   \item{sim_goal_diff}{Simulated difference between goals_scored and goals_against}
#'   \item{goals_scored}{The number of goals that a team is expected to score against an average team on a neutral field}
#'   \item{goals_against}{The number of goals that a team is expected to concede against an average team on a neutral field}
#'   \item{group_1}{Chance of winning group stage game 1}
#'   \item{group_2}{Chance of winning group stage game 2}
#'   \item{group_3}{Chance of winning group stage game 3}
#'   \item{group_4}{Chance of winning group stage game 4}
#'   \item{make_round_of_16}{Chance of playing in the round of 16}
#'   \item{make_quarters}{Chance of playing in the quarter-finals}
#'   \item{make_semis}{Chance of playing in the semi-finals}
#'   \item{make_final}{Chance of playing in the finals}
#'   \item{win_league}{Chance of winning the tournament}
#'   }
#' @source \url{https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_forecasts.csv}
"wwc_2019_forecasts"

#' @rdname wwc_2019
#' @section wwc_2019_matches:
#' 2019 Women's World Cup Predictions
#' A data frame with 52 rows representing Women's World Cup matches, and 18 variables:
#' \describe{
#'   \item{date}{Date match was played}
#'   \item{team1}{Team 1}
#'   \item{team2}{Team 2}
#'   \item{spi1}{Soccer power index of team 1}
#'   \item{spi2}{Soccer power index of team 2}
#'   \item{prob1}{Probability that team 1 will win match}
#'   \item{prob2}{Probability that team 2 will win match}
#'   \item{prob_tie}{Probability that the teams will tie the match}
#'   \item{proj_score1}{Projected number of goals scored by team 1}
#'   \item{proj_score2}{Projected number of goals scored by team 2}
#'   \item{score1}{Actual number of goals scored by team 1}
#'   \item{score2}{Actual number of goals scored by team 2}
#'   \item{xg1}{Shot-based expected goals for team 1}
#'   \item{xg2}{Shot-based expected goals for team 2}
#'   \item{nsxg1}{Non-shot expected goals for team 1}
#'   \item{nsxg2}{Non-shot expected goals for team 2}
#'   \item{adj_score1}{Goals scored by team 1 accounting for the conditions under which each goal was scored}
#'   \item{adj_score2}{Goals scored by team 2 accounting for the conditions under which each goal was scored}
#'   }
#' @source \url{https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_matches.csv}
"wwc_2019_matches"



# Datasets documented by Anna Ballou

#' We Watched 906 Foul Balls To Find Out Where The Most Dangerous Ones
#'
#' The raw data behind the story
#' "We Watched 906 Foul Balls To Find Out Where The Most Dangerous Ones"
#' \url{https://fivethirtyeight.com/features/we-watched-906-foul-balls-to-find-out-where-the-most-dangerous-ones-land/}.
#'
#' @format A data frame with 906 rows representing foul balls and 7 variables:
#' \describe{
#'   \item{matchup}{the two teams that played}
#'   \item{game_date}{date of the most foul heavy day at each stadium}
#'   \item{type_of_hit}{fly, grounder, line drive, popup, batter hits self}
#'   \item{exit_velocity}{recorded velocity of each hit}
#'   \item{predicted_zone}{zone predicted the foul ball would land in gauging angles}
#'   \item{camera_zone}{actual zone the ball landed it confirmed by camera angles}
#'   \item{used_zone}{zone used for analysis}
#' }
#' @details Information on the Zones from the 538 original article: Zones 1, 2 and 3 are the areas behind home plate and the dugouts. Zones 4 and 5 make up most of the foul territory outside the baselines up until the foul pole. Zones 6 and 7 include the areas beyond the foul poles.
#' @source Baseball Savant \url{https://baseballsavant.mlb.com/}.
'foul_balls' 



# Datasets documented by Jane Bang

#' A Better Way to Evaluate NBA Defense
#'
#' The raw data behind the story
#' "A Better Way to Evaluate NBA Defense"
#' \url{https://fivethirtyeight.com/features/a-better-way-to-evaluate-nba-defense/}.
#'
#' @format A data frame with 3009 rows representing DRAYMOND ratings (Defensive Rating Accounting for Yielding Minimal Openness by Nearest Defender) for every player since the 2013-14 season with 4 variables:
#' \describe{
#'   \item{season}{The second year of the season; for example, 2018-2019 season would be listed as 2019}
#'   \item{player}{Name of the player}
#'   \item{possessions}{Number of possessions a player during the season}
#'   \item{draymond}{Defensive Rating Accounting for Yielding Minimal Openness by Nearest Defender}}
#' @source see \url{https://github.com/fivethirtyeight/data/tree/master/nba-draymond}
"nba_draymond"



# Datasets documented by Jordan Moody

#' Our Guide To The Exuberant Nonsense of College Fight Songs
#' 
#' The data behind the story 
#' "Our Guide To The Exuberant Nonsense Of College Fight Songs"
#' \url{https://projects.fivethirtyeight.com/college-fight-song-lyrics/}.
#' 
#' @format A data frame with 65 rows representing college fight songs, and 23 variables:
#' \describe{
#'   \item{school}{school name}
#'   \item{conference}{school college football conference}
#'   \item{song_name}{song title}
#'   \item{writers}{song author(s)}
#'   \item{year}{year the song was written; some years are unknown}
#'   \item{student_writer}{TRUE if song was written by a student, FALSE if not}
#'   \item{official_song}{TRUE if song is an official fight song according to the university, FALSE if not}
#'   \item{contest}{TRUE if song was chosen as part of a contest, FALSE if not}
#'   \item{bpm}{beats per minute}
#'   \item{sec_duration}{duration of the song in seconds}
#'   \item{fight}{TRUE if song says 'fight', FALSE if not}
#'   \item{num_fights}{number of time song says 'fight'}
#'   \item{victory}{TRUE if song says 'victory', FALSE if not}
#'   \item{win_won}{TRUE if song says 'win' or 'won', FALSE if not}
#'   \item{victory_win_won}{TRUE if song says 'victory', 'win', or 'won'}
#'   \item{rah}{TRUE if song says 'rah', FALSE if not}
#'   \item{nonsense}{TRUE if song uses nonsense syllables, FALSE if not}
#'   \item{colors}{TRUE if song mentions school colors, FALSE if not}
#'   \item{men}{TRUE if song refers to a group of men, boys, sons, etc., FALSE if not}
#'   \item{opponents}{TRUE if song mentions opponents, FALSE if not}
#'   \item{spelling}{TRUE if song spells something out, FALSE if not}
#'   \item{trope_count}{total number of tropes in song}
#'   \item{spotify_id}{Spotify id for song}}
#' @source Spotify \url{https://www.spotify.com/us/}
"fight_songs"



# Datasets documented by Kara Van Allen

#' @name nba_elo
#' @rdname nba_elo
#' 
#' @title NBA Elo Ratings
#' 
#' @description  The raw data behind all nba predictions, including the story
#' "The Complete History of the NBA"
#' \url{https://projects.fivethirtyeight.com/complete-history-of-the-nba}
#' 
NULL

#' @rdname nba_elo
#' 
#' @section nba_elo_latest:
#' A data frame with 1230 rows representing game played during the most current season of the NBA, and 24 variables:
#' \describe{
#'   \item{date}{Date}
#'   \item{season}{the season in which the game was played}
#'   \item{neutral}{True if the game was played on neutral territory, False if not}
#'   \item{playoff}{True if the game was played in a playoff, False if not}
#'   \item{team1}{name of first team}
#'   \item{team2}{name of second team}
#'   \item{elo1_pre}{Team 1 Elo rating before game}
#'   \item{elo2_pre}{Team 2 Elo rating before game}
#'   \item{elo_prob1}{Team 1's probability of winning based on Elo rating}
#'   \item{elo_prob2}{Team 2's probability of winning based on Elo rating}
#'   \item{elo1_post}{Team 1 Elo rating after the game}
#'   \item{elo2_post}{Team 2 Elo rating after the game}
#'   \item{score1}{the score of team 1}
#'   \item{score2}{the score of team 2}
#'   }
#'   
"nba_elo_latest"



# Datasets documented by Lizette Carpenter

#' Two Years In, Turnover In Trump’s Cabinet Is Still Historically High
#' 
#' The raw data behind the story 
#' "Two Years In, Turnover In Trump’s Cabinet Is Still Historically High"
#' \url{https://fivethirtyeight.com/features/two-years-in-turnover-in-trumps-cabinet-is-still-historically-high/}.
#' 
#' @format A data frame with 312 rows representing cabinet members and 8 variables: 
#' \describe{
#'   \item{president}{Surname of of sitting President}
#'   \item{position}{Cabinet Position}
#'   \item{appointee}{Appointee's full name}
#'   \item{start}{Date the appointee was sworn in}
#'   \item{end}{Date the appointee left office}
#'   \item{length}{Length of Tenure, in days}
#'   \item{days}{Days into administration that the appointee left office}
#'   \item{combined}{Whether or not Cabinet member served in more than one administrations}
#'   } 
#' @source from Federal Government Websites and News Reports 
"cabinet_turnover"



# Datasets documented by Fatima Keita

#' Do Americans Support Impeaching Trump?
#' 
#' Raw data behind this story
#' "Do Americans Support Impeaching Trump?"
#' \url{https://projects.fivethirtyeight.com/impeachment-polls/}
#' 
#' @format A data frame with 388 rows of polling data and 24 variables:
#' \describe{
#'   \item{start}{Poll start date, the first date responses were collected}
#'   \item{end}{Poll end date, the last date responses were collected}
#'   \item{pollster}{entity/organization that created poll, collected and published data}
#'   \item{sponsor}{sponsor of pollster}
#'   \item{sample_size}{number of respondents for each}
#'   \item{pop}{categorical variable with 3 categories: a, rv, lv -- value unknown}
#'   \item{tracking}{true/false logical -- value unknown}
#'   \item{text}{poll question}
#'   \item{category}{category of poll question with 5 categories: impeach and remove, begin proceedings, begin inquiry, reasons, impeach}
#'   \item{include}{yes/no logical -- value unknown}
#'   \item{yes}{Percent of respondents in sample who answered "Yes" to the poll question}
#'   \item{no}{Percent of respondents in sample  who answered "No" to the poll question}
#'   \item{unsure}{Percent of respondents in sample who did not answer "Yes" or "No" to the poll question}
#'   \item{rep_sample}{number of Republican respondents in sample}
#'   \item{rep_yes}{Percent of Republican respondents who answered "yes"}
#'   \item{rep_no}{Percent of Republican respondents who answered "no"}
#'   \item{dem_sample}{number of Democrat respondents in sample}
#'   \item{dem_yes}{Percent of Democrat respondents who answered "yes"}
#'   \item{dem_no}{Percent of Democrat respondents who answered "no"}
#'   \item{ind_sample}{number of Independent respondents in sample}
#'   \item{ind_yes}{Percent of Independent respondents who answered "yes"}
#'   \item{ind_no}{Percent of Independent respondents who answered "no"}
#'   \item{url}{URL links to poll websites}
#'   \item{notes}{any notes relating to polls in sample}
#'   }
#' @source data from \url{https://github.com/fivethirtyeight/data/tree/master/impeachment-polls}.
"impeachment_polls"
