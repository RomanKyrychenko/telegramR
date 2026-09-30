#!/usr/bin/env Rscript
# Full layer-229 regeneration pipeline (R port of regenerate.sh). Run from the
# package root:  Rscript data-raw/regenerate.R
#
#   1. audit stale constructor ids  -> data-raw/layer229_audit.tsv
#   2. dedupe duplicate class defs in R/types.R
#   3. regenerate ALL existing TYPE classes at the schema layer
#   4. fix stale FUNCTION constructor ids (from the audit)
#   5. append the schema TYPES missing from R/ to R/types.R
#   6. bump LAYER in R/telegrambaseclient.R
here <- dirname(sub("--file=", "", grep("--file=", commandArgs(FALSE), value = TRUE)[1]))
API <- file.path("data-raw", "api.tl")
AUDIT <- file.path("data-raw", "layer229_audit.tsv")
LAYER <- 229L

Rscript <- function(script, args = character(0), stdout = "") {
  system2("Rscript", c(file.path(here, script), args), stdout = stdout, stderr = FALSE)
}

message("[1/7] auditing stale constructor ids ...")
out <- system2("Rscript", c(file.path(here, "generate_tl.R"), API, "--audit"), stdout = TRUE, stderr = FALSE)
writeLines(out, AUDIT)

message("[2/7] deduping R/types.R ...")
Rscript("dedupe_types.R", "R/types.R", stdout = FALSE)

message("[3/7] regenerating all TYPE classes ...")
Rscript("overwrite_stale.R", c(API, AUDIT, "--all-types"), stdout = FALSE)

message("[4/7] fixing stale FUNCTION constructor ids ...")
Rscript("overwrite_stale.R", c(API, AUDIT), stdout = FALSE)

message("[5/7] appending missing schema types to R/types.R ...")
miss <- system2("Rscript", c(file.path(here, "emit_missing.R"), API), stdout = TRUE, stderr = FALSE)
if (length(miss) && any(nzchar(miss)))
  cat(paste(miss, collapse = "\n"), "\n", file = "R/types.R", append = TRUE, sep = "")

message("[6/7] documenting all classes with roxygen (#') ...")
Rscript("overwrite_stale.R", c(API, AUDIT, "--docs-only"), stdout = FALSE)

message("[7/7] bumping LAYER ...")
bc <- "R/telegrambaseclient.R"
lines <- readLines(bc, warn = FALSE)
lines <- sub("^LAYER <- \\d+.*$",
             sprintf("LAYER <- %d # regenerated from Telethon v1 api.tl (data-raw/api.tl)", LAYER),
             lines)
writeLines(lines, bc)

message("regeneration complete")
