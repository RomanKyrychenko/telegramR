#!/usr/bin/env Rscript
# Overwrite stale telegramR R6 classes in place at a target TL layer.
#
# For every class whose constructor id lags the schema (or, with --all-types,
# every existing TYPE class), regenerate its body while PRESERVING that class's
# existing conventions so call sites keep working:
#   * field names - reuse the existing R field name whenever a schema field maps
#                   to it (matched by lower-casing and dropping non-alphanumerics),
#                   so camelCase / concatenated fields stay as they were; new
#                   fields are added in schema (snake_case) form.
#   * dict method - keep to_dict() or toDict() as the class already used.
#   * resolve()   - regenerate for function requests that had one.
#   * inheritance - keep TLObject / TLRequest and the serializer name.
#
# Usage (from package root):
#   Rscript data-raw/overwrite_stale.R data-raw/api.tl data-raw/layer229_audit.tsv [--all-types] [--dry]
suppressWarnings(source(file.path(dirname(sub("--file=", "", grep("--file=", commandArgs(FALSE), value = TRUE)[1])), "generate_tl.R")))

norm <- function(name) gsub("[^a-z0-9]", "", tolower(name))

# --- existing-class introspection -----------------------------------------
existing_meta <- function(body) {
  inherit <- if (any(grepl("inherit = TLRequest", body, fixed = TRUE))) "TLRequest" else "TLObject"
  init <- grep("initialize = function\\(", body, perl = TRUE)
  args <- character(0)
  if (length(init)) {
    m <- regmatches(body[init[1]], regexec("initialize = function\\(([^)]*)\\)", body[init[1]], perl = TRUE))[[1]]
    if (length(m) > 1 && nzchar(trimws(m[2]))) {
      args <- vapply(strsplit(m[2], ",")[[1]], function(a) trimws(sub("=.*", "", a)), "")
      args <- args[nzchar(args)]
    }
  }
  cl <- grep("CONSTRUCTOR_ID = ", body, fixed = TRUE, value = TRUE)
  ctor <- NA_character_
  if (length(cl)) {
    cm <- regmatches(cl[1], regexec("CONSTRUCTOR_ID = (0x[0-9a-fA-F]+|-?\\d+)", cl[1], perl = TRUE))[[1]]
    if (length(cm) > 1) ctor <- tolower(sub("^0x", "", cm[2]))
  }
  list(
    inherit = inherit,
    args = args,
    ctor = ctor,
    dict_method = if (any(grepl("\\btoDict = function", body, perl = TRUE))) "toDict" else "to_dict",
    has_resolve = any(grepl("\\bresolve = function", body, perl = TRUE)),
    lock_objects = any(grepl("lock_objects = FALSE", body, fixed = TRUE)),
    ser_name = if (any(grepl("\\bto_bytes = function", body, perl = TRUE))) "to_bytes" else "bytes"
  )
}

emit_class <- function(d, existing) {
  fields <- Filter(function(a) a$type != "#", d$args)
  exist_by_key <- list()
  for (a in existing$args) exist_by_key[[norm(a)]] <- a
  rename <- list()
  for (a in fields) {
    k <- norm(a$name)
    rename[[a$name]] <- if (!is.null(exist_by_key[[k]])) exist_by_key[[k]] else a$name
  }
  gen_class(d, rename = rename, inherit = existing$inherit, dict_method = existing$dict_method,
            has_resolve = existing$has_resolve, lock_objects = existing$lock_objects,
            ser_name = existing$ser_name)
}

# --- schema indices --------------------------------------------------------
build_indices <- function(schema) {
  type_idx <- list(); func_cands <- list()
  for (x in schema) {
    if (x$func) {
      key1 <- paste0(pascal(x$full), "Request"); key2 <- pascal(x$full)
      func_cands[[key1]] <- c(func_cands[[key1]], list(x))
      func_cands[[key2]] <- c(func_cands[[key2]], list(x))
    } else {
      k <- pascal(x$full)
      if (is.null(type_idx[[k]]) || !grepl(".", x$full, fixed = TRUE)) type_idx[[k]] <- x
    }
  }
  list(type_idx = type_idx, func_cands = func_cands)
}

pick_func <- function(func_cands, name, existing_args, existing_ctor = NA_character_) {
  cands <- func_cands[[name]]
  if (is.null(cands)) return(NULL)
  if (length(cands) == 1) return(cands[[1]])
  # strongest signal: the existing class already declares its constructor id, so
  # pick the namespace variant with that exact id (handles collisions whose args
  # are identical, e.g. messages.report vs stories.report).
  if (!is.na(existing_ctor)) {
    ec <- zpad8(tolower(sub("^0x", "", existing_ctor)))
    for (c in cands) if (zpad8(c$cid) == ec) return(c)
  }
  ea <- unique(vapply(existing_args, norm, ""))
  best <- cands[[1]]; score <- -1L
  for (c in cands) {
    fa <- unique(vapply(Filter(function(a) a$type != "#", c$args), function(a) norm(a$name), ""))
    ov <- length(intersect(ea, fa))
    if (ov > score) { best <- c; score <- ov }
  }
  best
}

# --- line-based class span in a file's lines -------------------------------
class_start_lines <- function(lines) grep("^[A-Za-z0-9_.]+ <- R6::R6Class\\(", lines, perl = TRUE)

find_span <- function(lines, name) {
  starts <- class_start_lines(lines)
  hit <- starts[sub(" <- R6::R6Class\\(.*", "", lines[starts]) == name]
  if (length(hit) == 0) return(NULL)
  s <- hit[1]
  # absorb an immediately-preceding comment block (roxygen or plain) so
  # regeneration replaces the old documentation rather than duplicating it.
  while (s > 1 && grepl("^\\s*#", lines[s - 1])) s <- s - 1L
  nxt <- starts[starts > hit[1]]
  e <- if (length(nxt)) nxt[1] - 1L else length(lines)
  c(s, e)
}

# strip trailing blank lines within a body span (kept as a single separator)
splice <- function(lines, span, newbody_lines) {
  before <- if (span[1] > 1) lines[1:(span[1] - 1)] else character(0)
  after <- if (span[2] < length(lines)) lines[(span[2] + 1):length(lines)] else character(0)
  # drop leading blank lines of `after`, we reinsert exactly one separator
  while (length(after) && !nzchar(after[1])) after <- after[-1]
  sep <- if (length(after)) "" else character(0)
  c(before, newbody_lines, sep, after)
}

# Replace the comment block above every schema-matched class with a proper
# roxygen (#') block, WITHOUT touching the class body (no call-site risk).
# Classes are matched to a schema def by their declared CONSTRUCTOR_ID (exact,
# collision-proof), falling back to name for stubs that lack one.
docs_pass <- function(schema, type_idx, func_cands, dry) {
  cid_idx <- list()
  for (x in schema) cid_idx[[zpad8(x$cid)]] <- x
  rfiles <- list.files("R", pattern = "\\.R$", full.names = TRUE)
  changed <- 0L
  for (f in rfiles) {
    lines <- readLines(f, warn = FALSE)
    starts <- class_start_lines(lines)
    if (!length(starts)) next
    touched <- FALSE
    for (i in rev(seq_along(starts))) {          # bottom-up so indices stay valid
      s <- starts[i]
      name <- sub(" <- R6::R6Class\\(.*", "", lines[s])
      ends_i <- if (i < length(starts)) starts[i + 1] - 1L else length(lines)
      body <- lines[s:ends_i]
      cl <- grep("CONSTRUCTOR_ID = ", body, fixed = TRUE, value = TRUE)
      d <- NULL
      if (length(cl)) {
        cm <- regmatches(cl[1], regexec("CONSTRUCTOR_ID = (0x[0-9a-fA-F]+|-?\\d+)", cl[1], perl = TRUE))[[1]]
        if (length(cm) > 1) d <- cid_idx[[zpad8(tolower(sub("^0x", "", cm[2])))]]
      }
      if (is.null(d)) d <- type_idx[[name]]
      if (is.null(d)) { fc <- func_cands[[name]]; if (!is.null(fc)) d <- fc[[1]] }
      if (is.null(d)) next
      cs <- s
      while (cs > 1 && grepl("^\\s*#", lines[cs - 1])) cs <- cs - 1L
      block <- roxygen_block(name, d$full, d$cid, d$func)
      if (!identical(lines[cs:(s - 1)], block)) {
        lines <- c(if (cs > 1) lines[1:(cs - 1)] else character(0), block, lines[s:length(lines)])
        touched <- TRUE; changed <- changed + 1L
      }
    }
    if (touched && !dry) writeLines(lines, f)
  }
  cat(sprintf("documented %d classes\n", changed))
}

main <- function(args) {
  api <- args[1]; audit <- args[2]
  all_types <- "--all-types" %in% args
  docs_only <- "--docs-only" %in% args
  dry <- "--dry" %in% args
  schema <- parse_tl(api)
  ix <- build_indices(schema)
  type_idx <- ix$type_idx; func_cands <- ix$func_cands

  if (docs_only) { docs_pass(schema, type_idx, func_cands, dry); return(invisible()) }

  rfiles <- list.files("R", pattern = "\\.R$", full.names = TRUE)
  # Search the generated sources first so that when a class is duplicated across
  # files (a shadowed hand-written stub in an infra file plus the generated copy
  # in types.R/functions_*.R), we regenerate the copy R actually loads last.
  prio <- function(f) {
    b <- basename(f)
    if (b == "types.R") 0L
    else if (grepl("^functions_", b)) 1L
    else if (b == "requests.R") 2L
    else 3L
  }
  rfiles <- rfiles[order(vapply(rfiles, prio, 0L), basename(rfiles))]
  filelines <- lapply(rfiles, readLines, warn = FALSE); names(filelines) <- rfiles

  # each stale target is (name, file); file NA means "search files by priority"
  if (all_types) {
    names_seen <- character(0); tnames <- character(0)
    for (f in rfiles) {
      lines <- filelines[[f]]
      starts <- class_start_lines(lines)
      ends <- c(starts[-1] - 1L, length(lines))
      for (i in seq_along(starts)) {
        nm <- sub(" <- R6::R6Class\\(.*", "", lines[starts[i]])
        body <- lines[starts[i]:ends[i]]
        if (!is.null(type_idx[[nm]]) && !any(grepl("inherit = TLRequest", body, fixed = TRUE)) && !(nm %in% names_seen)) {
          tnames <- c(tnames, nm); names_seen <- c(names_seen, nm)
        }
      }
    }
    stale <- lapply(tnames, function(n) list(name = n, file = NA_character_))
  } else {
    al <- readLines(audit, warn = FALSE)
    al <- al[nzchar(al) & !startsWith(al, "#")]
    rows <- strsplit(al, "\t")
    # keep (name, file) rows; the audit records the file the stale copy lives in
    stale <- lapply(rows, function(r) list(name = r[1], file = if (length(r) >= 4) file.path("R", r[4]) else NA_character_))
  }

  done <- 0L; touched <- character(0)
  for (rec in stale) {
    name <- rec$name
    target <- if (!is.na(rec$file) && !is.null(filelines[[rec$file]]) && !is.null(find_span(filelines[[rec$file]], name))) rec$file else NULL
    if (is.null(target)) for (f in rfiles) if (!is.null(find_span(filelines[[f]], name))) { target <- f; break }
    if (is.null(target)) { cat(sprintf("  SKIP (not found in R/): %s\n", name)); next }
    lines <- filelines[[target]]
    span <- find_span(lines, name)
    body <- lines[span[1]:span[2]]
    meta <- existing_meta(body)
    if (meta$inherit == "TLRequest") d <- pick_func(func_cands, name, meta$args, meta$ctor)
    else { d <- type_idx[[name]]; if (is.null(d)) d <- pick_func(func_cands, name, meta$args, meta$ctor) }
    if (is.null(d)) { cat(sprintf("  SKIP (no schema): %s\n", name)); next }
    # audit-driven (function-stale) pass: only touch a class whose constructor id
    # genuinely differs from the picked schema def. Namespace collisions
    # (e.g. channels vs messages deleteHistory) make the audit flag a class whose
    # id is actually correct for its own namespace; leave those hand-written
    # classes and their call sites untouched.
    if (!all_types && !is.na(meta$ctor) && zpad8(meta$ctor) == zpad8(d$cid)) next
    newbody <- strsplit(emit_class(d, meta)$text, "\n", fixed = TRUE)[[1]]
    filelines[[target]] <- splice(lines, span, newbody)
    touched <- union(touched, target)
    done <- done + 1L
  }

  cat(sprintf("regenerated %d/%d %s classes\n", done, length(stale),
              if (all_types) "type" else "stale"))
  if (!dry) for (f in touched) writeLines(filelines[[f]], f)
}

if (sys.nframe() == 0 || identical(environment(), globalenv())) {
  a <- commandArgs(trailingOnly = TRUE)
  if (length(a) >= 1) main(a)
}
