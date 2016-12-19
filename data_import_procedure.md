1. Navigate to folder in `data_raw`
2. Add code to read in CSV/similar to `process_data_sets_*.R` and give **DATA_SET_NAME**
  - Clean data set if needed
3. Open README.md if exists in folder
4. Open doc_meta.csv and add **DATA_SET_NAME** to `DATA_SET_NAME` column
  - Copy `TITLE` and `LINK` from README.md
  - Get `nrow(DATA_SET_NAME)` and `ncol(DATA_SET_NAME)` and copy into `NUM_ROWS` and `NUM_COLS` columns
  - Determine `OBSUNIT` and fill in column
  - Find source in README.md or look over article linked at <https://github.com/fivethirtyeight/data>
5. Add add **DATA_SET_NAME** to `DATA_SET_NAME` column in doc_vars.xlsx
  - Run `get_names <- function(x) {cat(names(x), sep = "\n")}; get_names(x)` with `x = DATA_SET_NAME`
  - Copy values into `VARNAME` column
  - Copy md table from README.md into `VAR_DESC_FULL`
  - `VAR_DESC` is automatically created using Excel formula
6. Source `create_doc.R`
7. Run `use_data` code to create Rdata file in `process_data_sets_*.R`
8. Build & Reload package using Command + Shift + B (on Mac)
  - Also creates R documentation if settings checked