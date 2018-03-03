# fivethirtyeight 0.4.0.9000

* Added vignette corresponding to Technology Innovations in Statistics Education [paper](https://escholarship.org/uc/item/0rx1231m#main)

# fivethirtyeight 0.4.0

* Package website now at <http://fivethirtyeight-r.netlify.com/>
* Added new data sets:
    + By Meredith Manley: `ahca_polls`, `bachelorette`, `candy_rankings`, 
    `chess_transfers`, `generic_polllist`, `generic_topline`, 
    `mayweather_mcgregor_tweets`, `mlb_elo`, `ratings`, `spi_global_rankings`, 
    `spi_matches`.
    + By Maggie Shea: `google_trends`, `nba_carmelo`, `nfl_elo`,
    `nfl_fandom_google`, `nfl_fandom_surveymonkey`, `mediacloud_hurricanes`,
    `mediacloud_states`, `mediacloud_online_news`, `mediacloud_trump`,
    `riddler_pick_lowest`, `sandy_311`, `senators`, `tv_hurricanes`,
    `tv_hurricanes_by_network`, `tv_states`, `trump_approval_poll`,
    `trump_approval_trend`, `trumpworld_issues`,`trumpworld_polls`,
    `twitter_presidents`, `undefeated`
* Note for now `mayweather_mcgregor_tweets`, `mlb_elo`, `nba_carmelo`,
`nfl_elo`, `senators`, only include the first 10 rows of the data because of R
package file size restrictions (< 5MB tarballs); code to download/process the
entire dataset are included in help files. We hope to include full versions of
these datasets in v0.5.0 of package using the `drat` package.
* Converted all ordinal categorical variables to `factor(..., ordered = TRUE)`.
Ex: `bechdel$clean_test`
* Vignette notes:
    + Added a vignette that has a link to all user-contributed vignettes, which 
    are only available on development version of package and on GitHub due to 
    CRAN package size restrictions.
    + For all datasets that have a user contributed vignette, add a link to it 
    in the corresponding help/roxygen code file.
* Added `CITATION`


# fivethirtyeight 0.3.0

* Added new and missing data sets: `riddler_castles2`, `antiquities_act`, `goose`,
`tenth_circuit`
* Added more crowd-sourced vignettes: `bob_ross.Rmd`, `tarantino_swears.Rmd`
* Only main and `bechdel` vignettes included in package b/c of CRAN package size
restrictions. Other crowd-sourced analysis vignettes still available
    + In development version
    + On package website under "Articles" <http://fivethirtyeight-r.netlify.com/>
* Other minor changes:
    + Fixed levels in `bechdel$clean_test` and `bechdel$test` to match
    hierarchical nature of test


# fivethirtyeight 0.2.0

* Added new and missing data sets up through February 28, 2017: 
`college_grad_students`, `college_recent_grads`, `cousin_marriage`, 
`hate_crimes`, `pres_2016_trail`, `riddler_castles`
* Added first crowd-sourced vignettes: `comics_gender`, `NBA`, `trump_twitter`
* Added global help file for package: `?fivethirtyeight` with complete instructions
* Started adding `@examples` code in help files to convert to tidy data format
so that data plays nice with tidyverse tools.
* Other minor changes:
    + [Changed to SVG travis logo](https://github.com/rudeboybert/fivethirtyeight/pull/1)
    + [Removed explicit loading of data in vignette](https://github.com/rudeboybert/fivethirtyeight/pull/2)
    + `fivethirtyeight` main vignette reads data set list from Google Sheets
    master document [https://goo.gl/OT8iHa](https://goo.gl/OT8iHa)


# fivethirtyeight 0.1.0

* Included all data sets as of late December 2016. `love-actually` being the latest
* Included one code example as a Vignette: bechdel
