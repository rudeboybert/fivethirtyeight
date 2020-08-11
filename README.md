
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fivethirtyeight

<!-- badges: start -->

[![Build
Status](https://travis-ci.org/rudeboybert/fivethirtyeight.svg?branch=master)](https://travis-ci.org/rudeboybert/fivethirtyeight)
[![R build
status](https://github.com/rudeboybert/fivethirtyeight/workflows/R-CMD-check/badge.svg)](https://github.com/rudeboybert/fivethirtyeight/actions)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/fivethirtyeight)](https://cran.r-project.org/package=fivethirtyeight)
[![CRAN RStudio mirror
downloads](https://cranlogs.r-pkg.org/badges/fivethirtyeight)](https://www.r-pkg.org/pkg/fivethirtyeight)
<!-- badges: end -->

An R package that provides access to the code and data sets published by
FiveThirtyEight <https://github.com/fivethirtyeight/data>. Note that
while we received guidance from editors at 538, this package is not
officially published by 538.

## Installation

Get the latest released version from CRAN:

``` r
install.packages("fivethirtyeight")
```

Or the development version from GitHub:

``` r
# If you haven't installed the remotes package yet, do so:
# install.packages("remotes")
remotes::install_github("rudeboybert/fivethirtyeight", build_vignettes = TRUE)
```

## Usage

All data in the `fivethirtyeight` package are lazy-loaded, so you can
access any dataset without running `data()`:

``` r
library(fivethirtyeight)

head(bechdel)
?bechdel

# If using RStudio:
View(bechdel)
```

To see a detailed list of all 128 datasets, including information on the
corresponding articles published on FiveThirtyEight.com, click
[here](https://fivethirtyeight-r.netlify.app/articles/fivethirtyeight.html).

## Add-on Package

There are also 19 datasets that could not be included in
`fivethirtyeight` due to CRAN package size restrictions:

    #>  [1] "castle_solutions"           "castle_solutions_2"        
    #>  [3] "castle_solutions_3"         "comic_characters"          
    #>  [5] "goose"                      "house_district_forecast"   
    #>  [7] "mayweather_mcgregor_tweets" "mlb_elo"                   
    #>  [9] "nba_all_elo"                "nba_carmelo"               
    #> [11] "nba_elo"                    "nfl_elo"                   
    #> [13] "quasi_winshares"            "raptor_by_player"          
    #> [15] "raptor_by_team"             "ratings"                   
    #> [17] "senators"                   "spi_matches"               
    #> [19] "twitter_presidents"

These 19 datasets are included in the `fivethirtyeightdata` add-on
package, which you can install by
running:

``` r
install.packages('fivethirtyeightdata', repos = 'https://fivethirtyeightdata.github.io/drat/', type = 'source')
```

So for example, to load the `senators` dataset, run:

``` r
library(fivethirtyeight)
library(fivethirtyeightdata)
senators
```

## Article in “Technology Innovations in Statistics Education”

The `fivethirtyeight` package was featured in [The fivethirtyeight R
Package: “Tame Data” Principles for Introductory Statistics and Data
Science Courses](https://escholarship.org/uc/item/0rx1231m) by Kim,
Ismay, and Chunn (2018) published in Volume 11, Issue 1 of the journal
“Technology Innovations in Statistics Education”.

**Abstract**: *As statistics and data science instructors, we often seek
to use data in our courses that are rich, real, realistic, and relevant.
To this end we created the fivethirtyeight R package of data and code
behind the stories and interactives at the data journalism website
FiveThirtyEight.com. After a discussion on the conflicting pedagogical
goals of “minimizing prerequisites to research” (Cobb 2015) while at the
same time presenting students with a realistic view of data as it exists
“in the wild,” we articulate how a desired balance between these two
goals informed the design of the package. The details behind this
balance are articulated as our proposed “Tame data principles for
introductory statistics and data science courses.” Details of the
package’s construction and example uses are included as well.*

## Data Analysis Examples in Vignettes

For some data sets, there are user-contributed example analyses in the
form a package vignette. For example, look at [“Bechdel analysis using
the
`tidyverse`”](https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/bechdel.html)
based on the `bechdel` dataset used in the article [The Dollar-And-Cents
Case Against Hollywood’s Exclusion of
Women](https://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women).
For a complete list of vignettes run

``` r
vignette("user_contributed_vignettes", package = "fivethirtyeightdata")
```

## More Information

  - [Andrew
    Flowers](https://www.linkedin.com/in/andrew-flowers-1319934/) gave a
    great demonstration of the package and the `bechdel` vignette during
    his rstudio::conf talk in Orlando, Florida in January 2017. The
    video of his talk is available
    [here](https://rstudio.com/resources/rstudioconf-2017/finding-and-telling-stories-with-r/).
  - Click this [Google
    Sheet](https://docs.google.com/spreadsheets/d/1IMWAHNPIDzplafWW6AGnGyHmB1BMjohEw_V5HmT70Gs/edit#gid=840984416)
    for a master spreadsheet connecting
    1.  the original 538 data on
        [GitHub](https://github.com/fivethirtyeight/data) with
    2.  the data frames in the package with
    3.  information on the corresponding article
