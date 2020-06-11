.pkgenv <- new.env(parent=emptyenv())

.onLoad  <- function(libname, pkgname) {
  has_data <- requireNamespace("fivethirtyeightdata.test", quietly = TRUE)
  .pkgenv[["has_data"]] <- has_data
}

.onAttach <- function(libname, pkgname) {
  if (!.pkgenv$has_data) {
    msg <- paste("To use this package, you must install the",
                 "fivethirtyeightdata.test package. To install that ",
                 "package, run `install.packages('fivethirtyeightdata.test',",
                 "repos='https://mariumtapal.github.io/drat/', type='source')`.")
    msg <- paste(strwrap(msg), collapse="\n")
    packageStartupMessage(msg)
  }
}

hasData <- function(has_data = .pkgenv$has_data) {
  if (!has_data) {
    msg <- paste("To use this function, you must have the",
                 "`fivethirtyeightdata.test` package installed. See the",
                 "`fivethirtyeightdata.test` package vignette for more details.")
    msg <- paste(strwrap(msg), collapse="\n")
    stop(msg)
  }
}