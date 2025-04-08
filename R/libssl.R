#' Finds and loads the system's SSL library.
#'
#' This function attempts to locate the system's SSL library and load it using R's
#' `dyn.load` function. On macOS, it handles specific versioning issues for compatibility.
#'
#' @return A reference to the loaded SSL library, or an error if the library cannot be found.
find_ssl_lib <- function() {
  lib <- Sys.getenv("SSL_LIB", unset = NULL)

  if (is.null(lib)) {
    lib <- if (.Platform$OS.type == "unix" && Sys.info()["sysname"] == "Darwin") {
      release <- as.numeric(strsplit(system("sw_vers -productVersion", intern = TRUE), "\\.")[[1]])
      if (release[1] > 10 || (release[1] == 10 && release[2] > 14)) {
        # macOS 10.15+ requires specific versions
        lib <- Sys.which(c("libssl.46.dylib", "libssl.44.dylib", "libssl.42.dylib"))
        lib <- lib[lib != ""]
        if (length(lib) > 0) lib[1] else NULL
      } else {
        Sys.which("libssl.dylib")
      }
    } else {
      Sys.which("libssl.so")
    }
  }

  if (is.null(lib) || lib == "") {
    stop("No SSL library found")
  }

  tryCatch({
    dyn.load(lib)
    lib
  }, error = function(e) {
    stop("Failed to load SSL library: ", e$message)
  })
}
