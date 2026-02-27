value <- function(x, ...) {
  future::value(x, ...)
}

promise_resolve <- function(x) {
  promises::promise_resolve(x)
}

promise <- promises::promise
`%...>%` <- promises::`%...>%`
`%...!%` <- promises::`%...!%`
