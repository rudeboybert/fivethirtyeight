## Test environments

* local macOS install, R 4.0.1
* ubuntu 16.04.6 (on travis-ci), R-release, R-devel, R-oldrel
* win-builder (release, oldrelease)
* GitHub Actions
    + ubuntu-16.04: release
    + windows: release
    + macOS: release, devel
* Rhub
    + Fedora Linux, R-devel, clang, gfortran
    + Windows Server 2008 R2 SP1, R-devel, 32/64 bit


## R CMD check results


* Rhub (R-release, R-devel) returned 4 NOTES that the following URL's were
possibly invalid, however upon testing them individually, they all worked fine:
    + https://blog.gdeltproject.org/gdelt-2-0-television-api-debuts/
    + https://digital.library.unt.edu/ark:/67531/metadc815038/m2/1/high_res_d/98-19_2006Jun08.pdf
    + https://genius.com/
    + https://www.nps.gov/history/archeology/sites/antiquities/MonumentsList.htm
* NOTE: Package unavailable to check Rd xrefs: 'fivethirtyeightdata'. This is a drat package



