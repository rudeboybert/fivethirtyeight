library(tidyverse)
library(readxl)

meta <- read_csv("R/gen_doc/doc_meta.csv")
var_desc <- read_excel("R/gen_doc/doc_vars.xlsx")

create_vars <- function(vars){
  var_text <- with(vars,
    paste0("#\'   \\item{", VARNAME, "}{", 
      ifelse(is.na(VAR_DESC), "", VAR_DESC), "} \n")
    )
  vars %>% mutate(var_text = var_text) %>% 
    group_by(DATA_SET_NAME) %>% 
    summarize(long_var = paste(var_text, collapse = ""))
}

vars_doc <- create_vars(var_desc)
merged <- meta %>% left_join(vars_doc) %>% na.omit()

create_doc <- function(data){
  with(data,
    paste0("#\' ", TITLE, "\n",
      "#\'", "\n",
      "#\' The raw data behind the story", "\n",
      "#\' \"", TITLE, "\"", "\n",
      "#\' \\url{", LINK, "}.", "\n",
      "#\'", "\n",
      "#\' @format A data frame with ", NUM_ROWS, " rows representing ", OBSUNIT, " and ", 
          NUM_COLS, " variables:", "\n",
      "#\' \\describe{", "\n",
      long_var,
      "#\' }", "\n",
      "#\' @source ", LINKTEXT, " ",
      ifelse(SOURCEURL == "Link", "\n", paste0("\\url{", SOURCEURL, "}", "\n")),
      "\"", DATA_SET_NAME, "\"", "\n\n\n"
    )
  )
}

create_doc(merged) %>% write("R/data_chester.R", append = FALSE)
