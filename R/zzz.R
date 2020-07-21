.pkgenv <- new.env(parent=emptyenv())

.onLoad  <- function(libname, pkgname) {
  has_data <- requireNamespace("fivethirtyeightdata", quietly = TRUE)
  .pkgenv[["has_data"]] <- has_data
}

.onAttach <- function(libname, pkgname) {
  if (!.pkgenv$has_data) {
    msg <- paste("Some larger datasets need to be installed separately,",
                 "like senators and house_district_forecast.",
                 "To install these, we recommend you install the ",
                 "fivethirtyeightdata package by running: ",
                 "install.packages('fivethirtyeightdata', ",
                 "repos = 'https://fivethirtyeightdata.github.io/drat/', type = 'source')")
    msg <- paste(strwrap(msg), collapse="\n")
    packageStartupMessage(msg) }
  else {
    library(fivethirtyeightdata)
  }
}

hasData <- function(has_data = .pkgenv$has_data) {
  if (!has_data) {
    msg <- paste("To use this function, you must have the",
                 "`fivethirtyeightdata` package installed. See the",
                 "`fivethirtyeightdata` package vignette for more details.")
    msg <- paste(strwrap(msg), collapse="\n")
    stop(msg)
  }
}
