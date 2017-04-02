## Test environments

* local OS X install, R 3.3.3
* ubuntu 12.04 (on travis-ci), R 3.3.1
* win-builder (release)

## R CMD check results

There were no ERRORs, but on win-builder.r-project.org/ I got the following WARNING:

* checking top-level files ... WARNING
Conversion of 'NEWS.md' failed:
pandoc.exe: Could not fetch https://CRAN.R-project.org/web/CRAN_web.css

However, the CRAN_web.css file is now fetchable, so this must be a 
isolated WARNING.
