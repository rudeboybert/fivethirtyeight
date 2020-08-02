## Test environments

* local macOS install, R 4.0.1
* ubuntu 16.04.6 on travis-ci (release, devel, oldrel)
* win-builder (release, devel, oldrel)
* GitHub Actions
    + ubuntu-16.04: release
    + windows: release
    + macOS: release
* Rhub via devtools::check_rhub(env_vars=c(R_COMPILE_AND_INSTALL_PACKAGES = "always"))
    + Fedora Linux, R-devel, clang, gfortran
    + Windows Server 2008 R2 SP1, R-devel, 32/64 bit
    + Ubuntu Linux 16.04 LTS, R-release, GCC


## R CMD check results

Per Brian Ripley's email, this is a submission that addresses the problems shown
on https://cran.r-project.org/web/checks/check_results_fivethirtyeight.html. I
am submitting before the 2020-08-05 deadline.

NOTES:

* Rhub (release, devel) returned 4 NOTES that the following URL's were
possibly invalid, however upon testing them individually, they all worked fine:
    + https://blog.gdeltproject.org/gdelt-2-0-television-api-debuts/
    + https://digital.library.unt.edu/ark:/67531/metadc815038/m2/1/high_res_d/98-19_2006Jun08.pdf
    + https://genius.com/
    + https://www.nps.gov/history/archeology/sites/antiquities/MonumentsList.htm
* win-builder (release, devel, oldrel) returned 3 NOTES because
'fivethirtyeightdata' is not a CRAN package, but rather a drat package
https://fivethirtyeightdata.github.io/drat:
    + Suggests or Enhances not in mainstream repositories: fivethirtyeightdata
    + Package suggested but not available for checking: 'fivethirtyeightdata'
    + Package unavailable to check Rd xrefs: 'fivethirtyeightdata'



