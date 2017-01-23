library(tidyr)
library(dplyr)

police_locals_tidy <- police_locals %>% 
  gather(key = "race", value = "perc_in", all:asian)
devtools::use_data(police_locals_tidy, overwrite = TRUE)
