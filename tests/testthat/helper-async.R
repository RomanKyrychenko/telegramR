value <- function(x, ...) {
  future::value(x, ...)
}

promise_resolve <- function(x) {
  promises::promise_resolve(x)
}

promise <- promises::promise
`%...>%` <- promises::`%...>%`
`%...!%` <- promises::`%...!%`

# Skip tests that call value(codec$read_packet(...)) on R-devel.
# future::future() + value() can segfault on R Under Development.
skip_future_on_rdevel <- function() {
  if (isTRUE(grepl("devel", R.version$status, ignore.case = TRUE))) {
    testthat::skip("future/value() tests segfault on R-devel (known upstream issue)")
  }
}
