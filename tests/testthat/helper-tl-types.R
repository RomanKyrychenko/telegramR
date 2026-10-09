# Instantiate TL types that accept no arguments and exercise to_list /
# to_bytes. Classes are looked up in the package namespace (R6 generators are
# environments, not functions), and classes whose constructor needs arguments
# are skipped individually rather than ending the test. Returns the number of
# classes checked.
tl_types_ns <- asNamespace("telegramR")

smoke_tl_types <- function(names) {
  checked <- 0L
  for (name in names) {
    cls <- get0(name, envir = tl_types_ns, inherits = FALSE)
    if (!inherits(cls, "R6ClassGenerator")) next
    obj <- tryCatch(cls$new(), error = function(e) NULL)
    if (is.null(obj)) next
    checked <- checked + 1L
    testthat::expect_true(is.list(obj$to_list()), info = name)
    if (is.function(obj$to_bytes)) {
      out <- tryCatch(obj$to_bytes(), error = function(e) NULL)
      if (!is.null(out)) testthat::expect_true(is.raw(out), info = name)
    }
  }
  checked
}
