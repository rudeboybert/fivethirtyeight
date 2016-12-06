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
#' @source Aviation Safety Network \url{http://aviation-safety.net}
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
#' \url{http://fivethirtyeight.com/datalab/dear-mona-followup-where-do-people-drink-the-most-beer-wine-and-spirits/}.
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


#' The Dollar-And-Cents Case Against Hollywood’s Exclusion of Women
#'
#' The raw data behind the story
#' "The Dollar-And-Cents Case Against Hollywood’s Exclusion of Women"
#' \url{http://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women/}.
#'
#' @format A data frame with 1794 rows representing movies and 15 variables:
#' \describe{
#'   \item{year}{}
#'   \item{imdb}{}
#'   \item{title}{}
#'   \item{test}{}
#'   \item{clean_test}{}
#'   \item{binary}{}
#'   \item{budget}{} 
#'   \item{domgross}{}
#'   \item{intgross}{}
#'   \item{code}{}
#'   \item{budget_2013}{}
#'   \item{domgross_2013}{} 
#'   \item{intgross_2013}{}
#'   \item{period_code}{}
#'   \item{decade_code}{}
#' }
#' @source \url{www.bechdeltest.com} and \url{www.the-numbers.com}
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
#'   \item{site}{URL from IMDB.}
#'   \item{country}{Country of origin.}
#'   \item{year_release}{Year of release.}
#'   \item{box_office}{Gross earnings at U.S. box office.}
#'   \item{director}{Director of film.}
#'   \item{number_of_subjects}{The number of subjects featured in the film.}
#'   \item{subject}{The actual name of the featured subject.}
#'   \item{type_of_subject}{The occupation of subject or reason for recognition.}
#'   \item{race_known}{Indicates whether the subject’s race was discernible based on background of self, parent, or grandparent.}
#'   \item{subject_race}{Race of the subject.}
#'   \item{person_of_color}{Dummy variable that indicates person of color.}
#'   \item{subject_sex}{Sex of subject.}
#'   \item{lead_actor_actress}{The actor or actress who played the subject.}
#' }
#' @source IMDB \url{http://www.imdb.com/}
"biopics"


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




#' Every Guest Jon Stewart Ever Had On 'The Daily Show'
#'
#' The raw data behind the story
#' "Every Guest Jon Stewart Ever Had On 'The Daily Show'"
#' \url{http://fivethirtyeight.com/datalab/every-guest-jon-stewart-ever-had-on-the-daily-show/}.
#'
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
