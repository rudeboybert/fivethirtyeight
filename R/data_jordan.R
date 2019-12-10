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
