#' Airline Safety
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


#' Biopics
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


#' Daily Show Guests
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
