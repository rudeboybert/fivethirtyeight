## ---- message=FALSE, warning=FALSE, echo=FALSE---------------------------
library(dplyr)
library(readr)
library(knitr)
datasets <- read_csv("datasets.csv") %>% 
  select(-Notes)

## ---- message=FALSE, warning=FALSE, echo=FALSE---------------------------
kable(datasets)

