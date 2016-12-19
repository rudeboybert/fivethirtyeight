library(tidyverse)
library(googlesheets)

#gs_title("Data to feed R pkg documentation")
meta <- gs_key("1bZd1U0EnRglD6xhgHGCMZ8xDGfRkgrQFBLgTzYB_dXo") %>% 
  gs_read(ws = "Meta data")

var_desc <- gs_key("1bZd1U0EnRglD6xhgHGCMZ8xDGfRkgrQFBLgTzYB_dXo") %>% 
  gs_read(ws = "Variables data")

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
merged <- meta %>% left_join(vars_doc, by = "DATA_SET_NAME") %>% na.omit()

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
