## ---- message=FALSE, warning=FALSE---------------------------------------
library(fivethirtyeight)
# tidyverse includes ggplot2, tibble, tidyr, readr, purrr, dplyr:
library(tidyverse)
library(ggthemes)
library(knitr)
# Turn off scientific notation
options(scipen = 99)

## ----data_year-----------------------------------------------------------
nba_yearly <- nba_draft_2015 %>% 
  group_by(draft_year) %>% 
  summarise(mean_proj_spm = mean(projected_spm))
nba_yearly

## ----graph, fig.width=7--------------------------------------------------
ggplot(nba_yearly, aes(x = draft_year, y = mean_proj_spm, fill = mean_proj_spm)) +
  geom_col() + 
  theme_fivethirtyeight() +
  labs(title = "Which NBA draft class was best?",
       subtitle = "As measured by the mean player/prospect's projected plus-minus",
       caption = "Data from FiveThirtyEight") +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold", size = 20),
        plot.subtitle = element_text(size = 12),
        plot.caption = element_text(hjust = 0, size = 10))

## ------------------------------------------------------------------------
nba_draft_2015 %>% 
  filter(draft_year %in% c(2003, 2004)) %>% 
  group_by(draft_year) %>% 
  top_n(projected_spm, n = 3) %>% 
  select(player, position, draft_year, projected_spm)

