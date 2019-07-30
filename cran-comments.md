## Test environments

* local OS X install, R 3.6.1.
* ubuntu 14.04 (on travis-ci), R 3.6.1.
* Rhub
    + Windows Server 2008 R2 SP1, R-devel, 32/64 bit
    + Ubuntu Linux 16.04 LTS, R-release, GCC
    + Fedora Linux, R-devel, clang, gfortran
* win-builder (devel and release)

## R CMD check results

There were no ERRORs or WARNINGs. There were 3 NOTEs:

* From Rhub (R-devel): one example had CPU or elapsed time > 5s (`comic_characters`), but this NOTE did not occur in any other test environment.
* From Rhub (R-release): one example had CPU or elapsed time > 5s (`ratings`), but this NOTE did not occur in any other test environment.
* From win-builder (both devel and release), it said that 4 URLs were possibly invalid, however upon testing them individually, they all worked fine. The NOTE is below:

Found the following (possibly) invalid URLs:
  URL: https://cran.r-project.org/package=tidyverse/vignettes/manifesto.html, last accessed August 7, 2015
    From: inst/doc/tame.html
    Status: 400
    Message: Bad Request
    URL contains spaces
  URL: https://www.amstat.org/asa/education/Guidelines-for-Assessment-and-Instruction-in-Statistics-Education-Reports.aspx, last accessed August 7, 2017
    From: inst/doc/tame.html
    Status: Error
    Message: libcurl error code 35:
      	Unknown SSL protocol error in connection to www.amstat.org:443
    URL contains spaces
  URL: https://www.amstat.org/asa/files/pdfs/EDU-guidelines2014-11-15.pdf, last accessed August 7, 2017
    From: inst/doc/tame.html
    Status: Error
    Message: libcurl error code 35:
      	Unknown SSL protocol error in connection to www.amstat.org:443
    URL contains spaces
  URL: https://www.mckinsey.com/business-functions/digital-mckinsey/our-insights/big-data-the-next-frontier-for-innovation, last accessed August 7, 2017
    From: inst/doc/tame.html
    Status: 503
    Message: Service Unavailable
    URL contains spaces
  Spaces in an http[s] URL should probably be replaced by %20
