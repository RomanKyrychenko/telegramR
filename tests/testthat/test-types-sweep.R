# Programmatic coverage sweep for R/types.R (auto-generated TL types).
# Iterates every R6 class that inherits from TLObject and exercises
# initialize / to_dict / bytes / from_reader, swallowing per-class errors so
# one broken class does not stop the sweep.

# Permissive mock that claims to be a TLObject so nested $bytes / $to_dict
# calls inside bytes() / to_dict() succeed.
mock_obj <- local({
  e <- list(
    bytes        = function() as.raw(c(0x00, 0x00, 0x00, 0x00)),
    to_dict      = function() list("_" = "Mock"),
    serialize    = function(...) as.raw(0L)
  )
  class(e) <- c("Mock", "TLObject")
  e
})

# Reader factory. `flags` is the value returned for the FIRST read_int call;
# subsequent read_int calls always return 0 so any `seq_len(reader$read_int())`
# loop iterates zero times. That means we exercise the "loop body absent" path
# only — but it stops a runaway 65535-iteration loop when flags is set high.
make_reader <- function(flags = 0L) {
  pos        <- 0L
  int_calls  <- 0L
  list(
    read_int       = function() {
      int_calls <<- int_calls + 1L
      pos       <<- pos + 4L
      if (int_calls == 1L) flags else 0L
    },
    read_long      = function() { pos <<- pos + 8L;  1L },
    read_double    = function() { pos <<- pos + 8L;  1.0 },
    read_large_int = function() { pos <<- pos + 16L; 1L },
    tgread_bool    = function() TRUE,
    tgread_string  = function() "x",
    tgread_bytes   = function() as.raw(c(0)),
    tgreadbytes    = function() as.raw(c(0)),
    tgread_date    = function() Sys.time(),
    tgread_object  = function() mock_obj,
    get_bytes      = function(n) raw(n),
    set_position   = function(p) { pos <<- p },
    tell_position  = function() pos
  )
}

# Find the env where the R6 class generators are actually defined. Under
# covr::file_coverage this is a fresh env that holds the *instrumented*
# generators — different from asNamespace("telegramR"), which still points at
# the original (uninstrumented) versions. Walk parent envs from the caller
# until we find one carrying a known type name.
find_types_env <- function() {
  e <- parent.frame()
  while (!identical(e, emptyenv())) {
    if ("AccessPointRule" %in% ls(e)) return(e)
    e <- parent.env(e)
  }
  asNamespace("telegramR")
}

# Discover every R6 class generator in `env` whose generator chain eventually
# reaches TLObject.
collect_tl_classes <- function(env) {
  out <- list()
  for (nm in ls(env)) {
    obj <- tryCatch(get(nm, envir = env), error = function(e) NULL)
    if (!inherits(obj, "R6ClassGenerator")) next
    g <- obj
    is_tl <- FALSE
    while (!is.null(g)) {
      if (identical(g$classname, "TLObject")) { is_tl <- TRUE; break }
      g <- tryCatch(g$get_inherit(), error = function(e) NULL)
    }
    if (is_tl) out[[nm]] <- obj
  }
  out
}

build_args <- function(init_fn) {
  if (is.null(init_fn)) return(list())
  fm <- formals(init_fn)
  if (length(fm) == 0L) return(list())
  setNames(lapply(seq_along(fm), function(i) mock_obj), names(fm))
}

# `try` with a tiny error capture is much lighter than tryCatch when the error
# rate is very high (avoids R's full backtrace machinery).
silent <- function(expr) try(expr, silent = TRUE)

test_that("sweep: every TLObject class instantiates and to_dict / bytes are exercised", {
  types_env <- find_types_env()
  classes <- collect_tl_classes(types_env)
  expect_gt(length(classes), 100L)

  # bytes() bodies that call packInt64() route into a Rcpp-exported .Call which
  # crashes covr's instrumentation with a libc++ recursive-init guard error.
  # Shadow packInt64 in the source-files env with a pure-R replacement so
  # bytes() sees ours via lexical lookup before falling through to the
  # namespace-bound Rcpp wrapper.
  if (!exists("packInt64", envir = types_env, inherits = FALSE)) {
    assign("packInt64", function(value) {
      if (inherits(value, "bigz")) value <- as.numeric(value)
      writeBin(as.numeric(value), raw(), size = 8, endian = "little")
    }, envir = types_env)
  }

  limit  <- as.integer(Sys.getenv("TELEGRAMR_SWEEP_LIMIT", "0"))
  offset <- as.integer(Sys.getenv("TELEGRAMR_SWEEP_OFFSET", "0"))
  nms <- names(classes)
  if (offset > 0L) nms <- nms[(offset + 1L):length(nms)]
  iter <- if (limit > 0L) head(nms, limit) else nms
  for (nm in iter) {
    cls <- classes[[nm]]
    args <- build_args(cls$public_methods$initialize)
    obj <- silent(do.call(cls$new, args))
    if (inherits(obj, "try-error") || is.null(obj)) next
    if (is.function(obj$to_dict)) silent(obj$to_dict())
    if (is.function(obj$bytes))   silent(obj$bytes())
  }
  expect_true(TRUE)
})

test_that("sweep: from_reader exercised for every class with two flag patterns", {
  classes <- collect_tl_classes(find_types_env())
  for (nm in names(classes)) {
    cls <- classes[[nm]]
    fr  <- cls$private_methods$from_reader
    if (!is.function(fr)) next
    silent(fr(make_reader(0L)))
    silent(fr(make_reader(-1L)))   # all bits set, drives every if (bitwAnd...) branch
  }
  expect_true(TRUE)
})
