# fivethirtyeight 0.3.0

* Added new and missing data sets: `riddler_castles2`, `antiquities_act`, `goose`, `tenth_circuit`
* Added more crowd-sourced vignettes: `bob_ross.Rmd`, `tarantino_swears.Rmd`
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
