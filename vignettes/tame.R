## ---- echo = FALSE-------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "Figures/",
  warning = FALSE,
  message = FALSE
)
scale_fill_discrete <- function(...) scale_fill_brewer(... ,  type = "div", palette="Set1", na.value = "grey50")

## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, message=FALSE, warning=FALSE, fig.height = 4)
library(fivethirtyeight)
# library(tidyverse)
library(ggplot2)
library(dplyr)
library(broom)
library(knitr)
library(gridExtra)

## ----datascience, echo=FALSE, fig.cap = "Grolemund and Wickham's 'Data/Science Pipeline'", out.width = "75%", fig.align='center'----
knitr::include_graphics("images/data_science_pipeline.png")

## ---- eval=FALSE---------------------------------------------------------
#  library(fivethirtyeight)
#  head(bechdel)
#  ?bechdel
#  # If using RStudio:
#  View(bechdel)

## ---- eval=FALSE---------------------------------------------------------
#  vignette("fivethirtyeight", package="fivethirtyeight")

## ---- eval=FALSE---------------------------------------------------------
#  library(fivethirtyeight)
#  ?hate_crimes
#  head(hate_crimes)
#  # If using RStudio:
#  View(hate_crimes)

## ------------------------------------------------------------------------
summary(hate_crimes$gini_index)
summary(hate_crimes$hate_crimes_per_100k_splc)

## ----hate-crime, fig.height=9/2, fig.width=16/2.5, fig.align='center', fig.cap="Relationship between hate crime incidence and income inequality."----
plot(hate_crimes$gini_index, hate_crimes$hate_crimes_per_100k_splc, 
     xlab = "Gini index", ylab = "Hate crime rate per 100K")
title("Hate Crimes per 100K Nov 9-18 2016 (SPLC)")

## ---- eval=FALSE---------------------------------------------------------
#  lm(hate_crimes_per_100k_splc ~ gini_index, data = hate_crimes)

## ---- echo=FALSE---------------------------------------------------------
library(broom)
lm(hate_crimes_per_100k_splc ~ gini_index, data=hate_crimes) %>% 
  tidy(conf.int=TRUE) %>% 
  kable(digits = 3)

## ---- eval=FALSE---------------------------------------------------------
#  vignette("bechdel", package="fivethirtyeight")

## ---- eval=FALSE---------------------------------------------------------
#  vignette("user_contributed_vignettes", package="fivethirtyeight")

## ---- eval=FALSE---------------------------------------------------------
#  # If you haven't installed remotes package yet, do so via:
#  # install.packages("remotes")
#  remotes::install_github("rudeboybert/fivethirtyeight", build_vignettes = TRUE)

## ------------------------------------------------------------------------
library(readr)
flying_raw <- read_csv("http://bit.ly/2vg8gTf")
colnames(flying_raw)[1:5]

## ------------------------------------------------------------------------
library(fivethirtyeight)
colnames(flying)[1:5]

## ---- eval=FALSE---------------------------------------------------------
#  # Using raw data:
#  ggplot(flying_raw,
#         aes(x = `Do you have any children under 18?`,
#             fill = `In general, is itrude to bring a baby on a plane?`)) +
#    geom_bar(position = "fill") +
#    labs(x = "Children under 18?", y = "Proportion", fill = "Is it rude?")
#  
#  # Using fivethirtyeight package data:
#  ggplot(flying, aes(x = children_under_18, fill = baby)) +
#    geom_bar(position = "fill") +
#    labs(x = "Children under 18?", y = "Proportion", fill = "Is it rude?")

## ----babies, fig.width=16/2.5, fig.height=9/2.5, fig.align='center', echo=FALSE, fig.cap="Attitudes about bringing babies on a flight."----
ggplot(flying, aes(x = children_under_18, fill = baby)) +
  geom_bar(position = "fill") +
  labs(x = "Do you have children under 18?", y = "Proportion", fill = "Is it rude?")

## ------------------------------------------------------------------------
library(readr)
US_births_1999_2003_raw <- read_csv("http://bit.ly/2vgRFiw")
US_births_1999_raw <- US_births_1999_2003_raw[US_births_1999_2003_raw$year == 1999, ]
head(US_births_1999_raw)

## ----US-births, fig.width=16/2.5, fig.height=9/2, fig.align='center', fig.cap="Number of US births in 1999."----
library(fivethirtyeight)
US_births_1999 <- US_births_1994_2003[US_births_1994_2003$year == 1999, ]
head(US_births_1999)
plot(US_births_1999$date, US_births_1999$births, type = "l",
     xlab = "Date", ylab = "# of births")

## ------------------------------------------------------------------------
head(US_births_1999[which.max(US_births_1999$births), ])

## ----bechdel-barplot-orig, echo=FALSE, fig.cap = "Original Bechdel barplot in FiveThirtyEight Article", out.width = "75%", fig.align='center'----
knitr::include_graphics("images/hickey-bechdel-11.png")

## ---- fig.width=16/2.5, fig.height=9/2.5, fig.align='center', eval=FALSE, fig.cap="Using original bechdel data."----
#  year_bins <- c("'70-'74", "'75-'79", "'80-'84", "'85-'89", "'90-'94",
#                 "'95-'99", "'00-'04", "'05-'09", "'10-'13")
#  
#  # Using raw data:
#  library(readr)
#  bechdel_raw <- read_csv("http://bit.ly/2uD3ls6") %>%
#    mutate(five_year = cut(year, breaks = seq(1969, 2014, 5), labels = year_bins))
#  
#  ggplot(bechdel_raw, aes(x = five_year, fill = clean_test)) +
#    geom_bar(position = "fill", color = "black") +
#    labs(x = "Year", y = "Proportion", fill = "Bechdel Test") +
#    scale_fill_brewer(palette = "YlGnBu")
#  
#  # Using fivethirtyeight package data:
#  library(fivethirtyeight)
#  bechdel <- bechdel %>%
#    mutate(five_year = cut(year, breaks = seq(1969, 2014, 5), labels = year_bins))
#  
#  ggplot(bechdel, aes(x = five_year, fill = clean_test)) +
#    geom_bar(position = "fill", color = "black") +
#    labs(x = "Year", y = "Proportion", fill = "Bechdel Test") +
#    scale_fill_brewer(palette = "YlGnBu")

## ----bechdel, fig.height=6.5,  fig.width=16/2.5, echo=FALSE, fig.align='center', fig.cap="Barcharts of Bechdel Test results across time."----
year_bins <- c("'70-'74", "'75-'79", "'80-'84", "'85-'89", "'90-'94", 
               "'95-'99", "'00-'04", "'05-'09", "'10-'13")

# Raw data does not order the test results intuitively
bechdel_raw <- read_csv("http://bit.ly/2uD3ls6") %>%
  mutate(five_year = cut(year, breaks = seq(1969, 2014, 5), labels = year_bins))

plot1<- ggplot(bechdel_raw, aes(x = five_year, fill = clean_test)) +
  geom_bar(position = "fill", color = "black") +
  labs(x = "Year", y = "Proportion", fill = "Bechdel Test", 
       title = "Using raw data") +
  scale_fill_brewer(palette="YlGnBu")

# Package data has intuitive hierarchical ordering of bechdel test
bechdel <- bechdel %>%
  mutate(five_year = cut(year, breaks = seq(1969, 2014, 5), labels = year_bins))

plot2 <- ggplot(bechdel, aes(x = five_year, fill = clean_test)) +
  geom_bar(position = "fill", color = "black") +
  labs(x = "Year", y = "Proportion", fill = "Bechdel Test", 
       title = "Using fivethirtyeight package data")+
  scale_fill_brewer(palette="YlGnBu")
grid.arrange(plot1, plot2, nrow=2)

## ---- fig.width=16/2.5, fig.height=9/2-----------------------------------
library(dplyr)
library(fivethirtyeight)
drinks %>% 
  filter(country %in% c("USA", "France"))

## ---- fig.width=16/2.5,  fig.height=9/2----------------------------------
library(tidyr)
drinks_tidy_US_FR <- drinks %>%
  filter(country %in% c("USA", "France")) %>% 
  gather(type, servings, -c(country, total_litres_of_pure_alcohol))
drinks_tidy_US_FR

## ----drinks, fig.width=16/2.5, fig.height=9/2.5, fig.align='center', fig.cap="USA vs France alcohol consumption."----
ggplot(drinks_tidy_US_FR, aes(x=type, y=servings, fill=country)) +
  geom_col(position = "dodge") +
  labs(x = "Alcohol type", y = "Average number of servings")

