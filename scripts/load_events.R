# scripts/load_events.R
# Helper functions for loading and validating the verified events dataset.

#' Load the verified events CSV and return a data frame.
#'
#' @param path Path to the CSV file (default: data/processed/events_verified.csv).
#' @return A data frame of verified security events.
load_events <- function(path = "data/processed/events_verified.csv") {
  required_cols <- c(
    "event_id", "date", "municipality", "state", "event_type",
    "verification_level", "source_type", "source_id"
  )

  df <- read.csv(path, stringsAsFactors = FALSE)
  df$date <- as.Date(df$date)

  missing <- setdiff(required_cols, names(df))
  if (length(missing) > 0) {
    stop(paste("Missing required columns:", paste(missing, collapse = ", ")))
  }

  df
}

#' Load the raw source text for a given source_id.
#'
#' @param source_id The source_id value from the events dataset.
#' @param raw_dir   Directory containing raw source files (default: data/raw).
#' @return Character string with the full source text.
load_source_text <- function(source_id,
                             raw_dir = "data/raw") {
  path <- file.path(raw_dir, paste0(source_id, ".txt"))
  if (!file.exists(path)) {
    stop(paste("Source file not found:", path))
  }
  paste(readLines(path, encoding = "UTF-8"), collapse = "\n")
}
