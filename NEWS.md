# fivethirtyeight 0.3.0.9000

* Added new and missing data sets:
    + By Meredith Manley: `ahca_polls`, `bachelorette`, `candy_rankings`, `chess_transfers`, `generic_polllist`, `generic_topline`, `mlb_elo`, `ratings`, `spi_global_rankings`, `spi_matches`, `tweets`
    + By Maggie Shea:
* Converted all orginal categorical variables to `ordered()`. Ex: `bechdel$clean_test`

TODO:

* Add citation() to upcoming "Tame Data" principles
* Convert data so that 
    + factors (when there is no order, but a small number of levels)
    + characters (unknown or very large number of levels)
* Vignettes
    + Add Tame data paper
    + Add "vignette of vignettes" with links to user-contributed vignettes on [package homepage](https://rudeboybert.github.io/fivethirtyeight/)
    + Update README.Rmd and fivethirtyeight.Rmd vignette so that output to [package homepage](https://rudeboybert.github.io/fivethirtyeight/) is seamless (Home and Getting Started pages respectively).
* For relevant data sets, add links to user-contributed vignettes in help page




# fivethirtyeight 0.3.0

* Added new and missing data sets: `riddler_castles2`, `antiquities_act`, `goose`, `tenth_circuit`
* Added more crowd-sourced vignettes: `bob_ross.Rmd`, `tarantino_swears.Rmd`
* Only main and `bechdel` vignettes included in package b/c of CRAN package size restrictions. Other crowd-sourced analysis vignettes still available
    + In development version
    + On package website under "Articles" <https://rudeboybert.github.io/fivethirtyeight/>
* Other minor changes:
    + Fixed levels in `bechdel$clean_test` and `bechdel$test` to match hierarchical nature of test


# fivethirtyeight 0.2.0

* Added new and missing data sets up through February 28, 2017: `college_grad_students`, `college_recent_grads`, `cousin_marriage`, `hate_crimes`, `pres_2016_trail`, `riddler_castles`
* Added first crowd-sourced vignettes: `comics_gender`, `NBA`, `trump_twitter`
* Added global help file for package: `?fivethirtyeight` with complete instructions
* Started adding `@examples` code in help files to convert to tidy data format so that data plays nice with tidyverse tools.
* Other minor changes:
    + [Changed to SVG travis logo](https://github.com/rudeboybert/fivethirtyeight/pull/1)
    + [Removed explicit loading of data in vignette](https://github.com/rudeboybert/fivethirtyeight/pull/2)
    + `fivethirtyeight` main vignette reads data set list from Google Sheets master document [https://goo.gl/OT8iHa](https://goo.gl/OT8iHa)


# fivethirtyeight 0.1.0

* Included all data sets as of late December 2016. love-actually being the latest
* Included one code example as a Vignette: bechdel
