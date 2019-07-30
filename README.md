
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fivethirtyeight

[![Build
Status](https://travis-ci.org/rudeboybert/fivethirtyeight.svg?branch=master)](https://travis-ci.org/rudeboybert/fivethirtyeight)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/fivethirtyeight)](http://cran.r-project.org/package=fivethirtyeight)
[![CRAN RStudio mirror
downloads](https://cranlogs.r-pkg.org/badges/fivethirtyeight)](http://www.r-pkg.org/pkg/fivethirtyeight)

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

``` r
library(fivethirtyeight)

# Load the bechdel data set. Note that all data in the fivethirtyeight package
# is lazy-loaded, so one can also access this data without running data(bechdel).
data(bechdel)
head(bechdel)
?bechdel
# If using RStudio:
View(bechdel)

# To see a list of all data sets:
data(package = "fivethirtyeight")

# To see a more detailed list of all data sets, see the package vignette:
vignette("fivethirtyeight", package = "fivethirtyeight")
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
`tidyverse`”](https://fivethirtyeight-r.netlify.com/articles/bechdel.html)
based on the `bechdel` dataset used in the article [The Dollar-And-Cents
Case Against Hollywood’s Exclusion of
Women](http://fivethirtyeight.com/features/the-dollar-and-cents-case-against-hollywoods-exclusion-of-women).
For a complete list of vignettes run

``` r
vignette("user_contributed_vignettes.Rmd", package = "fivethirtyeight")
```

## More Information

  - [Andrew
    Flowers](https://www.linkedin.com/in/andrew-flowers-1319934/) gave a
    great demonstration of the package and the `bechdel` vignette during
    his rstudio::conf talk in Orlando, Florida in January. The video of
    his talk is available
    [here](https://www.rstudio.com/resources/videos/finding-and-telling-stories-with-r/).
  - We’re now featured on
    [Kaggle](https://www.kaggle.com/fivethirtyeight/fivethirtyeight)\!
  - Click this [Google
    Sheet](https://docs.google.com/spreadsheets/d/1IMWAHNPIDzplafWW6AGnGyHmB1BMjohEw_V5HmT70Gs/edit#gid=840984416)
    for a master spreadsheet connecting
    1.  the original 538 data on
        [GitHub](https://github.com/fivethirtyeight/data) with
    2.  the data frames in the package with
    3.  information on the corresponding article

<!--
## Collaborate

### Data Analysis Examples in Vignettes

In many instances, the data sets on the original 538 GitHub repository had the R code used in the analysis. We would love to have these, or any other interesting analyses, in the form of package vignettes. We ask you follow these guidelines as much as possible:

1. Use [`tidyverse`](https://blog.rstudio.org/2016/09/15/tidyverse-1-0-0/) packages: `ggplot2`, `dplyr`, `tidyr`, `modelr`, etc.
1. Use [R Markdown](http://rmarkdown.rstudio.com/):
    + In particular the Package Vignette (HTML) template option when creating an R Markdown document.
    + Have the name of the R Markdown file match the name of the data set. Ex: `vignettes/bechdel.Rmd`
1. Follow the GitHub fork/pull request [model](https://guides.github.com/introduction/flow/). Otherwise, contact us directly.



### Contributing to the Package

If you want to contribute to the package:

* We followed the principles in Hadley Wickham's [R packages](http://r-pkgs.had.co.nz/) book
* Preliminary instructions for automating R package documentation and collecting data about the data sets is available [here](https://github.com/rudeboybert/fivethirtyeight/blob/master/data_import_procedure.md).
-->
