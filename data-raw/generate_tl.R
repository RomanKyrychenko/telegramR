#!/usr/bin/env Rscript
# Generate telegramR R6 classes from a Telegram TL schema (api.tl).
#
# Build-time tool (not part of the installed package). R port of the schema
# step of Telethon's generator, emitting R6 classes compatible with
# telegramR's runtime.
#
# Usage:
#   Rscript data-raw/generate_tl.R data-raw/api.tl                 # summary
#   Rscript data-raw/generate_tl.R data-raw/api.tl --emit NAME     # one class
#   Rscript data-raw/generate_tl.R data-raw/api.tl --audit         # stale ctors
#   Rscript data-raw/generate_tl.R data-raw/api.tl --missing       # absent types
#
# Serialization primitives assumed present in the package runtime:
#   pack("<i"/"<I"/"<q"/"<Q", x), packInt64(x), serialize_bytes(),
#   serialize_datetime(), .telegramR_tl_vector(); constructor ids are LE.
suppressWarnings(suppressPackageStartupMessages(library(digest)))

# ---- schema parser --------------------------------------------------------
parse_tl <- function(path) {
  defs <- list()
  is_func <- FALSE
  for (raw in readLines(path, warn = FALSE)) {
    line <- trimws(raw)
    if (!nzchar(line) || startsWith(line, "//")) next
    if (line == "---functions---") { is_func <- TRUE; next }
    if (line == "---types---") { is_func <- FALSE; next }
    m <- regmatches(line, regexec("^([\\w.]+)#([0-9a-f]+)\\s*(.*?)\\s*=\\s*([\\w.<>%!]+);$", line, perl = TRUE))[[1]]
    if (length(m) == 0) next
    full <- m[2]; cid <- tolower(m[3]); argstr <- m[4]; res <- m[5]
    args <- list()
    if (nzchar(argstr)) {
      for (tok in strsplit(argstr, "\\s+")[[1]]) {
        if (!grepl(":", tok, fixed = TRUE)) next
        parts <- strsplit(tok, ":", fixed = TRUE)[[1]]
        nm <- parts[1]; typ <- paste(parts[-1], collapse = ":")
        if (typ == "#") { args[[length(args) + 1]] <- list(name = nm, type = "#", flag = NA, bit = NA); next }
        fm <- regmatches(typ, regexec("^(\\w+)\\.(\\d+)\\?(.+)$", typ, perl = TRUE))[[1]]
        if (length(fm) > 0) {
          args[[length(args) + 1]] <- list(name = nm, type = fm[4], flag = fm[2], bit = as.integer(fm[3]))
        } else {
          args[[length(args) + 1]] <- list(name = nm, type = typ, flag = NA, bit = NA)
        }
      }
    }
    defs[[length(defs) + 1]] <- list(full = full, cid = cid, args = args, res = res, func = is_func)
  }
  defs
}

pascal <- function(tl) {
  short <- sub(".*\\.", "", tl)
  paste0(toupper(substr(short, 1, 1)), substr(short, 2, nchar(short)))
}

# zero-pad a hex string to 8 chars (formatC pads strings with spaces, not zeros)
zpad8 <- function(h) { n <- nchar(h); if (n < 8) paste0(strrep("0", 8 - n), h) else h }

# constructor id (hex string) -> "0x" + 8-char lowercase hex
cid_hex <- function(cid) paste0("0x", zpad8(cid))

# SUBCLASS_OF_ID: crc32 of the bare result type, "0x" + hex (leading zeros trimmed)
subclass_id <- function(res) {
  if (startsWith(res, "Vector<")) return("0x1cb5c415")
  h <- digest(charToRaw(res), algo = "crc32", serialize = FALSE)
  h <- sub("^0+", "", h)
  if (!nzchar(h)) h <- "0"
  paste0("0x", h)
}

# little-endian 4 bytes of an 8-char hex constructor id -> "0x.., 0x.., .."
le_bytes <- function(cid) {
  h <- zpad8(cid)
  b <- substring(h, c(1, 3, 5, 7), c(2, 4, 6, 8))       # big-endian byte pairs
  paste(paste0("0x", rev(b)), collapse = ", ")
}

flag_mask <- function(bit) bitwShiftL(1L, bit)  # R integer; TL flags stay < 2^31 in practice

# indent each line; append a trailing comma to all but the last (safe at length 0/1)
join_commas <- function(indent, lines) {
  if (length(lines) == 0) return(character(0))
  if (length(lines) == 1) return(paste0(indent, lines))
  c(paste0(indent, lines[-length(lines)], ","), paste0(indent, lines[length(lines)]))
}

# roxygen doc block for a generated class (internal; classes are not exported).
# @noRd keeps it out of the Rd/NAMESPACE output while remaining valid roxygen.
roxygen_block <- function(name, full, cid, func) {
  kind <- if (func) "request" else "type"
  c(sprintf("#' @title %s", name),
    sprintf("#' @description Telegram API %s \\code{%s} (constructor \\code{#%s}).", kind, full, zpad8(cid)),
    "#'   Auto-generated from the TL schema by \\code{data-raw/generate_tl.R}; do not edit by hand.",
    "#' @keywords internal",
    "#' @noRd")
}

.RESERVED <- c("self", "private", "super", "initialize", "to_dict", "toDict",
               "resolve", "clone", "from_reader", "print", "to_list", "serialize",
               "CONSTRUCTOR_ID", "SUBCLASS_OF_ID")

# ---- serialization emitters ----------------------------------------------
ser_scalar <- function(expr, typ) {
  if (typ == "int") return(sprintf('pack("<i", %s)', expr))
  if (typ == "long") return(sprintf("packInt64(%s)", expr))
  if (typ == "double") return(sprintf('writeBin(as.double(%s), raw(), size = 8, endian = "little")', expr))
  if (typ %in% c("string", "bytes")) return(sprintf("serialize_bytes(%s)", expr))
  if (typ == "int128" || typ == "int256") return(expr)
  if (typ == "date") return(sprintf("self$serialize_datetime(%s)", expr))
  if (startsWith(typ, "Vector<")) {
    inner <- sub("^Vector<(.*)>$", "\\1", typ)
    each <- switch(inner,
      long = "packInt64(x)", int = 'pack("<i", x)',
      double = 'writeBin(as.double(x), raw(), size = 8, endian = "little")',
      string = "serialize_bytes(x)", bytes = "serialize_bytes(x)", NA_character_)
    if (!is.na(each)) {
      return(sprintf('c(as.raw(c(0x15, 0xc4, 0xb5, 0x1c)), pack("<i", length(%s)), if (length(%s) > 0) do.call(c, lapply(%s, function(x) %s)) else raw(0))',
                     expr, expr, expr, each))
    }
    return(sprintf(".telegramR_tl_vector(%s)", expr))
  }
  if (typ == "Bool") return(sprintf('if (isTRUE(%s)) as.raw(c(0xb5, 0x75, 0x72, 0x99)) else as.raw(c(0x37, 0x97, 0x79, 0xbc))', expr))
  sprintf("%s$bytes()", expr)  # nested object; base class delegates bytes()<->to_bytes()
}

deser_scalar <- function(typ) {
  if (typ == "int") return("reader$read_int()")
  if (typ == "long") return("reader$read_long()")
  if (typ == "double") return("reader$read_double()")
  if (typ == "string") return("reader$tgread_string()")
  if (typ == "bytes") return("reader$tgread_bytes()")
  if (typ == "int128") return("reader$read(16)")
  if (typ == "int256") return("reader$read(32)")
  if (typ == "date") return("reader$tgread_date()")
  if (typ == "Bool") return("reader$tgread_bool()")
  if (startsWith(typ, "Vector<")) {
    inner <- sub("^Vector<(.*)>$", "\\1", typ)
    prim <- switch(inner, long = "reader$read_long()", int = "reader$read_int()",
                   double = "reader$read_double()", string = "reader$tgread_string()",
                   bytes = "reader$tgread_bytes()", NA_character_)
    if (!is.na(prim)) {
      return(sprintf("{ reader$read_int(); n_ <- reader$read_int(); if (n_ > 0) lapply(seq_len(n_), function(.i) %s) else list() }", prim))
    }
    return("reader$tgread_vector()")
  }
  "reader$tgread_object()"
}

# ---- class emitter --------------------------------------------------------
# rename: named character vector schema-field -> R-field. inherit/dict_method/
# has_resolve/lock_objects/ser_name optionally preserve an existing class's style.
gen_class <- function(d, rename = NULL, inherit = NULL, dict_method = "to_dict",
                      has_resolve = FALSE, lock_objects = NULL, ser_name = NULL) {
  name <- paste0(pascal(d$full), if (d$func) "Request" else "")
  if (is.null(inherit)) inherit <- if (d$func) "TLRequest" else "TLObject"
  lock_objects <- TRUE  # always emit lock_objects = FALSE (safe; allows post-hoc fields)

  san <- function(nm) if (nm %in% .RESERVED) paste0(nm, "_") else nm
  rn <- function(a) {
    base <- if (!is.null(rename) && !is.null(rename[[a$name]])) rename[[a$name]] else a$name
    san(base)
  }

  seq_args <- d$args
  fields <- Filter(function(a) a$type != "#", seq_args)
  flag_bases <- vapply(Filter(function(a) a$type == "#", seq_args), function(a) a$name, "")

  dict_call <- if (dict_method == "to_dict") "to_dict" else "toDict"
  has_bytes_field <- any(vapply(fields, function(a) a$name == "bytes", logical(1)))
  ser_method <- if (has_bytes_field) "to_bytes" else (if (!is.null(ser_name)) ser_name else "bytes")

  L <- character(0)
  add <- function(...) L[[length(L) + 1]] <<- paste0(...)
  L <- c(L, roxygen_block(name, d$full, d$cid, d$func))
  add(sprintf('%s <- R6::R6Class("%s",', name, name))
  add(sprintf("  inherit = %s,", inherit))
  add("  public = list(")
  add(sprintf("    CONSTRUCTOR_ID = %s,", cid_hex(d$cid)))
  add(sprintf("    SUBCLASS_OF_ID = %s,", subclass_id(d$res)))
  for (a in fields) add(sprintf("    %s = NULL,", rn(a)))

  sig <- vapply(fields, function(a) {
    if (!is.na(a$flag) || a$type == "true") paste0(rn(a), " = NULL") else rn(a)
  }, "")
  add(sprintf("    initialize = function(%s) {", paste(sig, collapse = ", ")))
  for (a in fields) add(sprintf("      self$%s <- %s", rn(a), rn(a)))
  add("    },")

  if (has_resolve) {
    add("    resolve = function(client, utils) {")
    for (a in fields) {
      conv <- switch(a$type, InputPeer = "get_input_peer", InputUser = "get_input_user",
                     InputChannel = "get_input_channel", NA_character_)
      if (!is.na(conv)) {
        acc <- sprintf("self$%s", rn(a))
        add(sprintf("      if (!is.null(%s)) %s <- tryCatch(utils$%s(client$get_input_entity(%s)), error = function(e) %s)",
                    acc, acc, conv, acc, acc))
      }
    }
    add("      invisible(self)")
    add("    },")
  }

  dict_body <- function(method_name) {
    items <- sprintf('`_` = "%s"', name)
    for (a in fields) {
      e <- sprintf("self$%s", rn(a))
      items <- c(items, sprintf('"%s" = if (inherits(%s, "TLObject")) %s$%s() else %s',
                                a$name, e, e, dict_call, e))
    }
    c(sprintf("    %s = function() {", method_name), "      list(",
      join_commas("        ", items),
      "      )", "    },")
  }
  L <- c(L, dict_body(dict_method))
  if (dict_method != "to_list") L <- c(L, dict_body("to_list"))

  # serializer (bytes / to_bytes), order-preserving with per-base flags
  add(sprintf("    %s = function() {", ser_method))
  for (fb in flag_bases) {
    add(sprintf("      %s <- 0L", fb))
    for (a in fields) {
      if (!is.na(a$flag) && a$flag == fb) {
        cond <- if (a$type == "true") sprintf("isTRUE(self$%s)", rn(a)) else sprintf("!is.null(self$%s)", rn(a))
        add(sprintf("      if (%s) %s <- bitwOr(%s, %dL)", cond, fb, fb, flag_mask(a$bit)))
      }
    }
  }
  add("      c(")
  parts <- sprintf("as.raw(c(%s))", le_bytes(d$cid))
  for (a in seq_args) {
    if (a$type == "#") {
      parts <- c(parts, sprintf('pack("<I", %s)', a$name))
    } else if (a$type == "true") {
      next
    } else if (!is.na(a$flag)) {
      parts <- c(parts, sprintf("if (!is.null(self$%s)) %s else raw(0)", rn(a), ser_scalar(paste0("self$", rn(a)), a$type)))
    } else {
      parts <- c(parts, ser_scalar(paste0("self$", rn(a)), a$type))
    }
  }
  L <- c(L, join_commas("        ", parts))
  add("      )")
  add("    },")
  add(sprintf("    serialize = function() self$%s()", ser_method))
  add("  ),")

  add("  private = list(")
  add("    from_reader = function(reader) {")
  for (a in seq_args) {
    if (a$type == "#") {
      add(sprintf("      %s <- reader$read_int()", a$name))
    } else if (a$type == "true") {
      add(sprintf("      self$%s <- bitwAnd(%s, %dL) != 0", rn(a), a$flag, flag_mask(a$bit)))
    } else if (!is.na(a$flag)) {
      add(sprintf("      self$%s <- if (bitwAnd(%s, %dL) != 0) %s else NULL", rn(a), a$flag, flag_mask(a$bit), deser_scalar(a$type)))
    } else {
      add(sprintf("      self$%s <- %s", rn(a), deser_scalar(a$type)))
    }
  }
  add("      self")
  add("    }")
  add("  ),")
  add("  class = TRUE,")
  add("  lock_objects = FALSE")
  add(")")
  list(name = name, text = paste(L, collapse = "\n"))
}

# ---- discovery of existing R6 classes -------------------------------------
existing_class_names <- function(dir = "R") {
  names <- character(0)
  for (f in list.files(dir, pattern = "\\.R$", full.names = TRUE)) {
    s <- readLines(f, warn = FALSE)
    m <- regmatches(s, regexpr("^([A-Za-z0-9]+) <- R6::R6Class\\(", s, perl = TRUE))
    hit <- grep("^[A-Za-z0-9]+ <- R6::R6Class\\(", s, perl = TRUE, value = TRUE)
    names <- c(names, sub(" <- R6::R6Class\\(.*", "", hit))
  }
  unique(names)
}

# ---- CLI ------------------------------------------------------------------
.main <- function(args) {
  if (length(args) < 1) { cat("usage: generate_tl.R api.tl [--audit|--missing|--manifest|--emit NAME]\n"); return(invisible()) }
  path <- args[1]
  if ("--audit" %in% args) {
    schema <- parse_tl(path)
    idx <- list()
    put <- function(k, x) if (is.null(idx[[k]]) || !grepl(".", x$full, fixed = TRUE)) idx[[k]] <<- x
    for (x in schema) {
      if (x$func) { put(paste0(pascal(x$full), "Request"), x); put(pascal(x$full), x) }
      else put(pascal(x$full), x)
    }
    matched <- 0L; stale <- character(0)
    for (f in list.files("R", pattern = "\\.R$", full.names = TRUE)) {
      lines <- readLines(f, warn = FALSE)
      starts <- grep("^[A-Za-z0-9]+ <- R6::R6Class\\(", lines, perl = TRUE)
      if (!length(starts)) next
      ends <- c(starts[-1] - 1L, length(lines))
      for (i in seq_along(starts)) {
        nm <- sub(" <- R6::R6Class\\(.*", "", lines[starts[i]])
        if (is.null(idx[[nm]])) next
        body <- lines[starts[i]:ends[i]]
        cl <- grep("CONSTRUCTOR_ID = ", body, fixed = TRUE, value = TRUE)
        if (!length(cl)) next
        cm <- regmatches(cl[1], regexec("CONSTRUCTOR_ID = (0x[0-9a-fA-F]+|-?\\d+)", cl[1], perl = TRUE))[[1]]
        if (length(cm) == 0) next
        cur <- zpad8(tolower(sub("^0x", "", cm[2])))
        want <- zpad8(idx[[nm]]$cid)
        matched <- matched + 1L
        if (cur != want) stale <- c(stale, sprintf("%s\t0x%s\t0x%s\t%s", nm, cur, want, basename(f)))
      }
    }
    cat(sprintf("# Schema layer classes matched in R/: %d; stale constructor ids: %d\n", matched, length(stale)))
    cat(stale, sep = "\n"); if (length(stale)) cat("\n")
    return(invisible())
  }
  if ("--missing" %in% args) {
    present <- existing_class_names()
    schema <- parse_tl(path)
    seen <- character(0); miss <- character(0)
    for (x in schema) {
      if (x$func) next
      nm <- pascal(x$full)
      if (nm %in% present || nm %in% seen) next
      seen <- c(seen, nm); miss <- c(miss, nm)
    }
    cat(sprintf("# schema TYPE defs with no R6 class in R/: %d\n", length(miss)))
    cat(sort(unique(miss)), sep = "\n"); cat("\n")
    return(invisible())
  }
  if ("--emit" %in% args) {
    target <- args[which(args == "--emit") + 1]
    schema <- parse_tl(path)
    for (d in schema) {
      nm <- paste0(pascal(d$full), if (d$func) "Request" else "")
      if (nm == target) { cat(gen_class(d)$text, "\n", sep = ""); return(invisible()) }
    }
    stop("not found: ", target)
  }
  schema <- parse_tl(path)
  layer <- NA
  for (l in readLines(path, warn = FALSE)) { m <- regmatches(l, regexec("// LAYER (\\d+)", l))[[1]]; if (length(m)) layer <- m[2] }
  cat(sprintf("# layer %s: %d types, %d functions\n", layer,
              sum(!vapply(schema, `[[`, logical(1), "func")),
              sum(vapply(schema, `[[`, logical(1), "func"))))
}

# Run the CLI only when generate_tl.R is the script invoked directly (not when
# it is source()d by emit_missing.R / overwrite_stale.R, which share commandArgs).
.invoked <- sub("^--file=", "", grep("^--file=", commandArgs(FALSE), value = TRUE)[1])
if (length(.invoked) && !is.na(.invoked) && basename(.invoked) == "generate_tl.R") {
  a <- commandArgs(trailingOnly = TRUE)
  if (length(a) > 0) .main(a)
}
