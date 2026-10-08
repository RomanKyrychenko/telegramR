#' @useDynLib telegramR, .registration = TRUE
#' @importFrom Rcpp evalCpp
NULL

# Constructor id -> class name index, computed once when the package is
# built/installed (this file is collated last, so every TL class exists).
# Building it at load time would force all ~2500 lazy-loaded generators into
# memory, which took several seconds on the first parsed response.
.telegramR_ctor_index <- .telegramR_scan_ctor_index(environment())

.onLoad <- function(libname, pkgname) {
  defaults <- list(
    telegramR.async = FALSE,
    telegramR.debug_parse = FALSE,
    telegramR.debug_pump = FALSE,
    telegramR.debug_process = FALSE,
    telegramR.auth_status_message = TRUE
  )
  for (k in names(defaults)) {
    if (is.null(getOption(k, NULL))) {
      options(structure(list(defaults[[k]]), names = k))
    }
  }
  if (is.null(getOption("future.rng.onMisuse", NULL))) {
    options(future.rng.onMisuse = "ignore")
  }
  invisible(NULL)
}
