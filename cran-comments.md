## Resubmission

This is a resubmission. In this version I have:

* Fixed the NOTEs involving URLs with spaces
* Fixed the ERROR involving reading a CSV file off the web


## Test environments

* local OS X install, R 3.6.1.
* ubuntu 14.04 (on travis-ci), R 3.6.1.
* Rhub
    + Windows Server 2008 R2 SP1, R-devel, 32/64 bit
    + Ubuntu Linux 16.04 LTS, R-release, GCC
    + Fedora Linux, R-devel, clang, gfortran
* win-builder (devel and release)


## R CMD check results

There were originally no ERRORs or WARNINGs. There were 3 NOTEs:

* From Rhub (R-devel): one example had CPU or elapsed time > 5s (`comic_characters`), but this NOTE did not occur in any other test environment.
* From Rhub (R-release): one example had CPU or elapsed time > 5s (`ratings`), but this NOTE did not occur in any other test environment.
* From win-builder (both devel and release), it said that 4 URLs were possibly invalid, however upon testing them individually, they all worked fine. 

On 2020-07-23:

* From win-builder (both devel and release), it said that 1 URL was possibly invalid, however upon testing it individually, it worked fine. 
* From win-builder (both devel and release), note on the `fivethirtyeightdata` suggested package not available for checking. Another note on it not being available checking for Rd cross references. This package is not on CRAN but on GitHub.
* From win-builder (both devel and release) and Rhub (both devel and release), there is a note for large components which is supposed to be disabled according to Hadley: https://github.com/r-lib/devtools/issues/1767.
* From Rhub (R-release): it said that 4 URLs were possibly invalid, however upon testing them individually, they all worked fine. (There are two more which have been fixed)
* From Rhub (R-devel): it said that 3 URLs were possibly invalid, however upon testing them individually, they all worked fine. (There are two more which have been fixed)



