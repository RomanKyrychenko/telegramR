#!/usr/bin/env Rscript
# Remove duplicate R6 class definitions from R/*.R (keep the first of each).
#
# The generated sources can contain repeated class definitions (R uses the last
# one loaded); regeneration must act on a single definition per class. Run
# before overwrite_stale.R --all-types.
#
# Usage: Rscript data-raw/dedupe_types.R [file ...]   (default: R/*.R)

class_starts <- function(lines) {
  idx <- grep("^[A-Za-z0-9_.]+ <- R6::R6Class\\(", lines, perl = TRUE)
  names <- sub(" <- R6::R6Class\\(.*", "", lines[idx])
  list(idx = idx, names = names)
}

dedupe_file <- function(path) {
  lines <- readLines(path, warn = FALSE)
  cs <- class_starts(lines)
  if (length(cs$idx) == 0) return(0L)
  ends <- c(cs$idx[-1] - 1L, length(lines))
  seen <- character(0); drop <- logical(length(lines))
  removed <- 0L
  for (i in seq_along(cs$idx)) {
    nm <- cs$names[i]
    if (nm %in% seen) { drop[cs$idx[i]:ends[i]] <- TRUE; removed <- removed + 1L }
    else seen <- c(seen, nm)
  }
  if (removed > 0L) writeLines(lines[!drop], path)
  removed
}

a <- commandArgs(trailingOnly = TRUE)
if (length(a) > 0 || sys.nframe() == 0) {
  files <- if (length(a)) a else list.files("R", pattern = "\\.R$", full.names = TRUE)
  tot <- 0L
  for (f in files) {
    n <- dedupe_file(f)
    if (n) { cat(sprintf("%s: removed %d duplicate class definition(s)\n", f, n)); tot <- tot + n }
  }
  cat(sprintf("total removed: %d\n", tot))
}
