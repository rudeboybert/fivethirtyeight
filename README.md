
<!-- README.md is generated from README.Rmd. Please edit that file -->
R Package Development Instructions
==================================

-   [Google Doc](https://docs.google.com/document/d/1eCRZUvhEp7A21Sq4duQAX1P2mDplB9OxHrX-rPkXFvo/edit#)
-   [Google Sheet](https://docs.google.com/spreadsheets/d/1G8as9tYfbC7GXGdpaKHlFRvhAZHiV6JrznJM7Ou5K24/edit#gid=0) of data set information
-   [Google Drive Folder](https://drive.google.com/drive/folders/0B5sV4c0umdLeNTZMTWhvcE5kUUE)

fivethirtyeight
===============

[![Build Status](https://travis-ci.org/rudeboybert/fivethirtyeight.png?branch=master)](https://travis-ci.org/rudeboybert/fivethirtyeight) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/fivethirtyeight)](http://cran.r-project.org/package=fivethirtyeight) [![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/fivethirtyeight)](http://www.r-pkg.org/pkg/fivethirtyeight)

R package of data and code behind the stories and interactives at [FiveThirtyEight](https://github.com/fivethirtyeight/data).

Installation
------------

Get the released version from CRAN:

``` r
install.packages("fivethirtyeight")
```

Or the development version from GitHub:

``` r
# If you haven't installed devtools yet, do so:
# install.packages("devtools")
devtools::install_github("rudeboybert/fivethirtyeight")
```

Data Sets
---------

To see a list of all data sets, type:

``` r
data(package = "fivethirtyeight")
```

<!--
To load a particular data set, `FlightDelays` for example, type:


```r
data(FlightDelays)
```
-->
