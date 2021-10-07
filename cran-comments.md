## Resubmission

This is a resubmission to address the following comments:

Found the following (possibly) invalid URLs:

     URL: https://bit.ly/2uD3ls6 (moved to
https://raw.githubusercontent.com/rudeboybert/fivethirtyeight/master/data-raw/bechdel/movies.csv)
       From: inst/doc/tame.html
       Status: 301
       Message: Moved Permanently
     URL: https://bit.ly/2vg8gTf (moved to
https://raw.githubusercontent.com/fivethirtyeight/data/master/flying-etiquette-survey/flying-etiquette.csv)
       From: inst/doc/tame.html
       Status: 301
       Message: Moved Permanently
     URL: https://bit.ly/2vgRFiw (moved to
https://raw.githubusercontent.com/fivethirtyeight/data/master/births/US_births_1994-2003_CDC_NCHS.csv)
       From: inst/doc/tame.html
       Status: 301
       Message: Moved Permanently


## Test environments

* local macOS install, R 4.1.0
* win-builder (release, devel, oldrel)
* GitHub Actions
    + ubuntu-16.04: latest
* Rhub via   
    devtools::check_rhub(email = "albert.ys.kim@gmail.com", interactive = FALSE,
      platforms = rhub::platforms() %>% filter(!is.na(`cran-name`)) %>% pull(name),
      env_vars=c(R_COMPILE_AND_INSTALL_PACKAGES = "always")
    )
    + Debian Linux, R-devel, clang, ISO-8859-15 locale
    + Debian Linux, R-devel, GCC
    + Debian Linux, R-patched, GCC
    + Debian Linux, R-release, GCC
    + Fedora Linux, R-devel, clang, gfortran
    + Fedora Linux, R-devel, GCC
    + macOS 10.13.6 High Sierra, R-release, CRAN's setup
    + Apple Silicon (M1), macOS 11.6 Big Sur, R-release
    + Oracle Solaris 10, x86, 32 bit, R-release
    + Oracle Solaris 10, x86, 32 bit, R release, Oracle Developer Studio 12.6
    + Windows Server 2008 R2 SP1, R-devel, 32/64 bit
    + Windows Server 2008 R2 SP1, R-oldrel, 32/64 bit
    + Windows Server 2008 R2 SP1, R-release, 32/64 bit

## R CMD check results

Per Kurt Hornik's email, this is a submission that addresses the problems shown
on https://cran.r-project.org/web/checks/check_results_fivethirtyeight.html. I
am submitting before the 2021-10-19 deadline.


