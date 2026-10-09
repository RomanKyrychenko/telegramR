# Compiled (C++) decoding of TL objects for the "lite" message path.
#
# The generated parsers (private$from_reader) follow a fixed pattern emitted by
# data-raw/generate_tl.R. At install time we translate each of them into a
# small list of read steps; at run time src/tl_decode.cpp walks the bytes with
# that table and builds exactly the classed lists the R lite path builds.
# Anything the table does not cover (hand-written readers, gzip, classes whose
# parser does not match the pattern) is handed back to BinaryReader$tgread_object()
# at that byte position, and a message that fails in C++ is decoded again by
# the R path, so the result never differs from the R implementation.

# Step kinds; keep in sync with src/tl_decode.cpp.
.telegramR_tl_kinds <- c(
  flags = 0L, true = 1L, int = 2L, long = 3L, double = 4L, string = 5L,
  bytes = 6L, int128 = 7L, int256 = 8L, bool = 9L, object = 10L,
  vec_object = 11L, vec_int = 12L, vec_long = 13L, vec_double = 14L,
  vec_string = 15L, vec_bytes = 16L
)

.telegramR_tl_expr_kinds <- local({
  prim <- c(
    int = "reader$read_int()", long = "reader$read_long()",
    double = "reader$read_double()", string = "reader$tgread_string()",
    bytes = "reader$tgread_bytes()"
  )
  vec_template <- function(p) {
    paste(deparse(str2lang(sprintf(
      "{ reader$read_int(); n_ <- reader$read_int(); if (n_ > 0) lapply(.telegramR_seq_count(reader, n_), function(.i) %s) else list() }",
      p
    ))), collapse = " ")
  }
  out <- c(
    stats::setNames(names(prim), unname(prim)),
    "reader$read(16)" = "int128",
    "reader$read(32)" = "int256",
    "reader$tgread_bool()" = "bool",
    "reader$tgread_object()" = "object",
    "reader$tgread_vector()" = "vec_object"
  )
  vec <- stats::setNames(paste0("vec_", names(prim)), vapply(prim, vec_template, character(1)))
  c(out, vec)
})

# Translate one generated from_reader into read steps, or NULL when it does not
# follow the generated pattern exactly.
.telegramR_tl_steps <- function(fn) {
  b <- body(fn)
  if (!is.call(b) || !identical(b[[1]], as.name("{"))) return(NULL)
  stmts <- as.list(b)[-1]
  if (!length(stmts) || !identical(stmts[[length(stmts)]], as.name("self"))) return(NULL)
  stmts <- stmts[-length(stmts)]
  kinds <- .telegramR_tl_kinds
  expr_kind <- function(e) {
    k <- .telegramR_tl_expr_kinds[paste(deparse(e), collapse = " ")]
    if (is.na(k)) NULL else unname(k)
  }
  flag_vars <- character(0)
  # bitwAnd(<flag var>, <mask>) != 0
  flag_test <- function(e) {
    if (!is.call(e) || !identical(e[[1]], as.name("!=")) || !identical(e[[3]], 0)) return(NULL)
    t <- e[[2]]
    if (!is.call(t) || !identical(t[[1]], as.name("bitwAnd")) || !is.name(t[[2]])) return(NULL)
    fv <- match(as.character(t[[2]]), flag_vars)
    mask <- tryCatch(as.numeric(eval(t[[3]], baseenv())), error = function(e) NA)
    if (is.na(fv) || is.na(mask)) return(NULL)
    if (mask < 0) mask <- mask + 2^32
    list(flagref = fv - 1L, mask = mask)
  }
  steps <- list()
  add <- function(kind, name = NA_character_, flagref = -1L, mask = 0, flagvar = -1L) {
    steps[[length(steps) + 1L]] <<- list(kind = kinds[[kind]], name = name, flagref = flagref,
                                         mask = mask, flagvar = flagvar)
  }
  for (st in stmts) {
    if (!is.call(st) || !identical(st[[1]], as.name("<-"))) return(NULL)
    lhs <- st[[2]]
    rhs <- st[[3]]
    if (is.name(lhs)) {
      if (!identical(expr_kind(rhs), "int")) return(NULL)
      flag_vars <- c(flag_vars, as.character(lhs))
      add("flags", flagvar = length(flag_vars) - 1L)
      next
    }
    if (!is.call(lhs) || !identical(lhs[[1]], as.name("$")) || !identical(lhs[[2]], as.name("self"))) {
      return(NULL)
    }
    field <- as.character(lhs[[3]])
    ft <- flag_test(rhs)
    if (!is.null(ft)) {
      add("true", field, ft$flagref, ft$mask)
      next
    }
    if (is.call(rhs) && identical(rhs[[1]], as.name("if"))) {
      if (length(rhs) != 4 || !is.null(rhs[[4]])) return(NULL)
      ft <- flag_test(rhs[[2]])
      k <- expr_kind(rhs[[3]])
      if (is.null(ft) || is.null(k)) return(NULL)
      add(k, field, ft$flagref, ft$mask)
      next
    }
    k <- expr_kind(rhs)
    if (is.null(k)) return(NULL)
    add(k, field)
  }
  steps
}

# Build the (data-only) decoding table from the generators in `env`. Runs at
# install time from zzz.R.
.telegramR_build_tl_table <- function(env, ctor_index) {
  special <- c(
    names(.telegramR_hand_readers),
    vapply(.telegramR_special_reader_list(), function(sp) .telegramR_norm_ctor_id(sp[[1]]), character(1))
  )
  out <- list()
  for (key in setdiff(names(ctor_index), special)) {
    gen <- get(ctor_index[[key]], envir = env)
    fn <- gen$private_methods$from_reader
    if (!is.function(fn)) next
    if (any(c("initialize", "new") %in% all.names(body(fn)))) next
    steps <- .telegramR_tl_steps(fn)
    if (is.null(steps)) next
    classes <- gen$classname[1]
    g <- gen$get_inherit()
    while (!is.null(g)) {
      classes <- c(classes, g$classname[1])
      g <- g$get_inherit()
    }
    out[[key]] <- list(
      class = unique(c(classes, "TLObject", "telegramR_lite", "list")),
      kind = vapply(steps, `[[`, integer(1), "kind"),
      name = vapply(steps, `[[`, character(1), "name"),
      flagref = vapply(steps, `[[`, integer(1), "flagref"),
      mask = vapply(steps, `[[`, numeric(1), "mask"),
      flagvar = vapply(steps, `[[`, integer(1), "flagvar")
    )
  }
  out
}

# External pointer to the compiled table, built on first use. Field order
# follows as.list.environment(sorted = TRUE), as in the R lite path, so it is
# computed here (in the running session's locale) rather than at install time.
.telegramR_tl_fast_ptr <- function() {
  if (isFALSE(getOption("telegramR.fast_decode"))) return(NULL)
  ptr <- .telegramR_state$tl_ptr
  if (!is.null(ptr)) return(ptr)
  ns <- environment(.telegramR_tl_fast_ptr)
  tbl <- get0(".telegramR_tl_table", envir = ns, inherits = FALSE)
  if (!length(tbl)) return(NULL)
  sorted_names <- function(fields) {
    if (!length(fields)) return(character(0))
    e <- new.env(parent = emptyenv(), size = length(fields))
    for (f in fields) assign(f, NULL, envir = e)
    names(as.list.environment(e, all.names = TRUE, sorted = TRUE))
  }
  entries <- lapply(tbl, function(t) {
    fields <- t$name[!is.na(t$name)]
    ordered <- sorted_names(fields)
    slot <- ifelse(is.na(t$name), -1L, match(t$name, ordered))  # 1-based; 0 is CONSTRUCTOR_ID
    list(
      names = c("CONSTRUCTOR_ID", ordered), class = t$class, kind = t$kind,
      flagref = t$flagref, mask = t$mask, flagvar = t$flagvar, slot = as.integer(slot)
    )
  })
  ptr <- tl_table_build_cpp(as.numeric(names(tbl)), entries)
  .telegramR_state$tl_ptr <- ptr
  ptr
}
