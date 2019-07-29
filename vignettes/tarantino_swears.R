## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(warning=FALSE, message=FALSE, fig.width=7.2)

## ----libraries, message = FALSE, warning = FALSE-------------------------
library(fivethirtyeight)
# library(tidyverse)
library(ggplot2)
library(dplyr)
library(stringr)
library(knitr)
library(ggthemes)

# Set default number of digits printed
options(digits = 2)

## ----merge---------------------------------------------------------------
# Create new dataframe assigning year of release to movies
movie <- c("Reservoir Dogs", "Pulp Fiction", "Jackie Brown", "Kill Bill: Vol. 1", "Kill Bill: Vol. 2", "Inglorious Basterds", "Django Unchained")

year <- c(1992, 1994, 1997, 2003, 2004, 2009, 2012)
tarantino_year <- tibble(movie, year)

# Combine with existing `tarantino` dataframe
tarantino_plus_year <- inner_join(x = tarantino, y = tarantino_year, by = "movie")

## ----profane-------------------------------------------------------------
tarantino_swears <- tarantino_plus_year %>% filter(profane == TRUE)

## ----plot1, fig.height = 8-----------------------------------------------
# Ordering the movies by release year
by_year <- c("Reservoir Dogs", "Pulp Fiction", "Jackie Brown", "Kill Bill: Vol. 1", "Kill Bill: Vol. 2", 
  "Inglorious Basterds", "Django Unchained")
tarantino_factor <- tarantino_swears %>% 
  mutate(movie = factor(tarantino_swears$movie, levels = by_year))

# Plotting the amount of swear words used in each movie
ggplot(data = tarantino_factor, mapping = aes(x = movie, fill = movie)) +
  geom_bar(color = "white") +
  theme_fivethirtyeight() + 
  labs(x = "Movie", y = "Swear Count", title = "Total Swear Word Usage Per Movie") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## ----echo = FALSE--------------------------------------------------------
#Presenting a table of movie and year of release, for reference
tarantino_year

## ----case_when-----------------------------------------------------------
# Creating the categories
tarantino_swears <- tarantino_swears %>% 
  mutate(swear_category = 
       case_when(grepl("ass", word) ~ "ass", 
                 grepl("shit|merde", word) ~ "shit", 
                 grepl("fuck", word) ~ "fuck", 
                 grepl("damn|hell", word) ~ "damnation", 
                 grepl("bastard", word) ~ "bastard", 
                 grepl("dick|cock", word) ~ "dick", 
                 grepl("bitch|cunt|pussy|faggot|slut", word) ~ "gender", 
                 grepl("gook|jap|jew|n-word|negro|slope|wetback|squaw", word) ~ "race"))

## ----Profanity_Sum-------------------------------------------------------
Profanity_Sum <- tarantino_swears %>% 
  group_by(movie) %>%
  summarize(Ass = mean(swear_category == "ass") * 100,
            Shit = mean(swear_category == "shit") * 100,
            Fuck = mean(swear_category == "fuck") * 100,
            Dick = mean(swear_category == "dick") * 100,
            Damnation = mean(swear_category == "damnation") * 100,
            Bastard = mean(swear_category == "bastard") * 100,
            Gender = mean(swear_category == "gender") * 100,
            Race = mean(swear_category == "race") * 100,
            Unspeakable = Gender + Race)
Profanity_Sum

## ----Unspeakable_Sum-----------------------------------------------------
Unspeakable_Sum <- tarantino_swears %>% 
  group_by(movie) %>%
  summarize(gen_por = mean(swear_category == "gender"),
            race_por = mean(swear_category == "race")) %>%
  mutate(Gender_Derogatory = gen_por * 100, Race_Derogatory = race_por * 100) %>%
  select(-gen_por, -race_por)
Unspeakable_Sum

## ----fbomb---------------------------------------------------------------
tarantino_fuck <- tarantino_swears %>% filter(swear_category == "fuck")

## ----given, fig.height=8-------------------------------------------------
ggplot(data = tarantino_fuck, mapping = aes(x = minutes_in)) +
  geom_histogram(binwidth = 10, color = "white", fill = "springgreen2") + facet_wrap(~movie) +
  theme_fivethirtyeight() +
  labs(x = "Minutes In", y = "Fucks Given", title = "Fucks Tarantino Gives Per Movie") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## ----type_given, fig.height=8--------------------------------------------
ggplot(data = tarantino_fuck, mapping = aes(x = minutes_in, fill = word)) +
  geom_histogram(binwidth = 10, color = "white") + facet_wrap(~movie) +
  theme_fivethirtyeight() +
  labs(x = "Minutes In", y = "Fucks Given", title = "Fucks Tarantino Gives Per Movie (by Type)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

