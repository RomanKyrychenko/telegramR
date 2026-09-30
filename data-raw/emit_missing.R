#!/usr/bin/env Rscript
# Emit generated R6 classes for schema TYPES absent from R/ (to stdout).
# Usage: Rscript data-raw/emit_missing.R data-raw/api.tl >> R/types.R
suppressWarnings(source(file.path(dirname(sub("--file=", "", grep("--file=", commandArgs(FALSE), value = TRUE)[1])), "generate_tl.R")))

a <- commandArgs(trailingOnly = TRUE)
if (length(a) >= 1) {
  schema <- parse_tl(a[1])
  present <- character(0)
  for (f in list.files("R", pattern = "\\.R$", full.names = TRUE)) {
    s <- readLines(f, warn = FALSE)
    hit <- grep("^[A-Za-z0-9]+ <- R6::R6Class\\(", s, perl = TRUE, value = TRUE)
    present <- c(present, sub(" <- R6::R6Class\\(.*", "", hit))
  }
  present <- unique(present)
  out <- character(0); seen <- character(0)
  for (d in schema) {
    if (d$func) next
    nm <- pascal(d$full)
    if (nm %in% present || nm %in% seen) next
    seen <- c(seen, nm)
    out <- c(out, gen_class(d)$text)
  }
  if (length(out)) {
    cat("\n\n# ---- Types added for layer-229 completeness (generated) ----\n\n")
    cat(paste(out, collapse = "\n\n"))
    cat("\n")
  }
}
