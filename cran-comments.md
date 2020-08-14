## Resubmission

This is a resubmission. In this version I have:

* Fully addressed the warnings in
https://cran.r-project.org/web/checks/check_results_fivethirtyeight.html
* In particular, the vignettes no longer dynamically read data off the web per
CRAN policy on internet access. All relevant data are now hardcoded into the
package.

Apologies for the oversight. Despite my best efforts at trying multiple test
environments, this breach of CRAN policy eluded me.

## Test environments

* local macOS install, R 4.0.1
* win-builder (release, devel, oldrel)
* GitHub Actions
    + ubuntu-16.04: release
    + macOS: release
* Rhub via devtools::check_rhub(env_vars=c(R_COMPILE_AND_INSTALL_PACKAGES = "always"))
    + Windows Server 2008 R2 SP1, R-devel, 32/64 bit
    + Ubuntu Linux 16.04 LTS, R-release, GCC
    + Fedora Linux, R-devel, clang, gfortran

## R CMD check results

Per Brian Ripley's email, this is a submission that addresses the problems shown
on https://cran.r-project.org/web/checks/check_results_fivethirtyeight.html. I
am submitting before the 2020-08-05 deadline.

NOTES:

* Because 'fivethirtyeightdata' is not a CRAN package but rather a drat package
https://fivethirtyeightdata.github.io/drat, we get:
    + Suggests or Enhances not in mainstream repositories: fivethirtyeightdata
    + Package suggested but not available for checking: 'fivethirtyeightdata'
    + Package unavailable to check Rd xrefs: 'fivethirtyeightdata'
* Found 571 marked UTF-8 strings
* installed package size is 5.1Mb

