.onLoad <- function(libname, pkgname) {
  defaults <- list(
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
  invisible(NULL)
}
