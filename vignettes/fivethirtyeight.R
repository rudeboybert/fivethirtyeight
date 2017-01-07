## ---- message=FALSE, warning=FALSE, echo=FALSE---------------------------
library(dplyr)
library(readr)
library(knitr)

## ---- message=FALSE, warning=FALSE, echo=FALSE---------------------------
datasets <- read_csv("datasets.csv") %>% 
  select(-Notes)
kable(datasets)

