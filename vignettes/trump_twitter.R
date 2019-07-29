## ---- message=FALSE, warning=FALSE---------------------------------------
library(fivethirtyeight)
# library(tidyverse)
library(ggplot2)
library(dplyr)
library(tidytext)
library(stringr)
library(lubridate)
library(knitr)
library(hunspell)
# Turn off scientific notation
options(scipen = 99)

## ----date_range----------------------------------------------------------
## check out structure and date range ------------------------------------------------
(minDate <- min(date(trump_twitter$created_at)))
(maxDate <- max(date(trump_twitter$created_at)))

## ----hunspell------------------------------------------------------------
my_hunspell_stem <- function(token) {
  stem_token <- hunspell_stem(token)[[1]]
  if (length(stem_token) == 0) return(token) else return(stem_token[1])
}
vec_hunspell_stem <- Vectorize(my_hunspell_stem, "token")

## ----tokens--------------------------------------------------------------
trump_tokens <- trump_twitter %>% 
  mutate(text = str_replace_all(text, 
                                pattern=regex("(www|https?[^\\s]+)"), 
                                replacement = "")) %>% #rm urls
  mutate(text = str_replace_all(text,
                                pattern = "[[:digit:]]",
                                replacement = "")) %>% 
  unnest_tokens(tokens, text) %>% #tokenize
  mutate(tokens = vec_hunspell_stem(tokens)) %>% 
  filter(!(tokens %in% stop_words$word)) #rm stopwords

## ----sentiment-----------------------------------------------------------
trump_sentiment <- trump_tokens %>% 
  inner_join(get_sentiments("afinn"), by=c("tokens"="word")) 

trump_full_text_sent <- trump_sentiment %>% 
  group_by(id) %>% 
  summarise(score = sum(value, na.rm=TRUE)) %>% 
  ungroup() %>% 
  right_join(trump_twitter, by="id") %>% 
  mutate(score_factor = ifelse(is.na(score), "Missing score", 
                               ifelse(score < 0, "-.Negative", 
                                      ifelse(score == 0, "0", "+.Pos"))))

## ------------------------------------------------------------------------
trump_full_text_sent %>%
  count(score_factor) %>% mutate(prop = prop.table(n))

## ----sentiment_hist, fig.width=7, , warning=FALSE------------------------
ggplot(data=trump_full_text_sent, aes(score)) + 
  geom_histogram(bins = 10)

## ----plot_time, fig.width=7----------------------------------------------
sentOverTimeGraph <- ggplot(data=filter(trump_full_text_sent,!is.na(score)), aes(x=created_at, y=score)) +
  geom_line() + 
  geom_point() +
  xlab("Date") +
  ylab("Sentiment (afinn)") +
  ggtitle(paste0("Trump Tweet Sentiment (",minDate," to ",maxDate,")"))
sentOverTimeGraph

## ----pos_tweets----------------------------------------------------------
most_pos_trump <- trump_full_text_sent %>% 
  arrange(desc(score)) %>% 
  head(n=5) %>% 
  .[["text"]]

kable(most_pos_trump, format="html")

## ---- neg_tweets---------------------------------------------------------
most_neg_trump <- trump_full_text_sent %>% 
  arrange(score) %>% 
  head(n=5) %>% 
  .[["text"]]
kable(most_neg_trump, format = "html")

## ----tweet_time----------------------------------------------------------
trump_tweet_times <- trump_full_text_sent %>% 
  mutate(weekday = wday(created_at, label=TRUE),
         month   = month(created_at, label=TRUE),
         hour    = hour(created_at),
         month_over_time = round_date(created_at,"month"))

plotSentByTime <- function(trump_tweet_times, timeGroupVar) {
  timeVar <- substitute(timeGroupVar)
  timeVarLabel <- str_to_title(timeVar)
  
  trump_tweet_time_sent <- trump_tweet_times %>% 
    rename_(timeGroup = timeVar) %>% 
    group_by(timeGroup) %>% 
    summarise(score = mean(score, na.rm=TRUE),Count = n()) %>% 
    ungroup()

  ggplot(trump_tweet_time_sent, aes(x=timeGroup, y=Count, fill = score)) +
    geom_bar(stat="identity") +
    xlab(timeVarLabel) +
    ggtitle(paste("Trump Tweet Count & Sentiment by", timeVarLabel))
}

## ----plot_hour, fig.width=7, warning=FALSE-------------------------------
plotSentByTime(trump_tweet_times, hour)

## ----plot_weekday, fig.width=7, warning=FALSE----------------------------
plotSentByTime(trump_tweet_times, weekday)

## ----plot_month, fig.width=7, warning=FALSE------------------------------
plotSentByTime(trump_tweet_times, month_over_time)

