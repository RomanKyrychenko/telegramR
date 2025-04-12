mock_sys_info <- function(sysname) {
  function() list(sysname = sysname)
}

mock_system <- function(return_value) {
  function(...) return_value
}

mock_sys_which <- function(paths) {
  function(cmds) {
    if (is.character(cmds)) {
      result <- setNames(rep("", length(cmds)), cmds)
      found <- cmds[cmds %in% names(paths)]
      result[found] <- paths[found]
      return(result)
    }
    return(paths)
  }
}

mock_file_exists <- function(path) {
  TRUE
}

mock_dyn_load <- function(...) NULL

# --- Tests ---

test_that("find_ssl_lib uses SSL_LIB environment variable if set", {
  withr::with_envvar(c(SSL_LIB = "/path/to/libssl.dylib"), {
    stub(find_ssl_lib, "file.exists", mock_file_exists)
    stub(find_ssl_lib, "dyn.load", mock_dyn_load)
    expect_equal(find_ssl_lib(), "/path/to/libssl.dylib")
  })
})

test_that("find_ssl_lib handles macOS version-specific logic", {
  stub(find_ssl_lib, "Sys.info", mock_sys_info("Darwin"))
  stub(find_ssl_lib, "get_os_type", function() "unix")
  stub(find_ssl_lib, "system", mock_system("10.15.7"))
  stub(find_ssl_lib, "Sys.which", mock_sys_which(c(
    "libssl.46.dylib" = "/path/to/libssl.46.dylib",
    "libssl.44.dylib" = "",
    "libssl.42.dylib" = ""
  )))
  stub(find_ssl_lib, "file.exists", mock_file_exists)
  stub(find_ssl_lib, "dyn.load", mock_dyn_load)

  expect_equal(find_ssl_lib(), "/path/to/libssl.46.dylib")
})

test_that("find_ssl_lib falls back to libssl.dylib on older macOS versions", {
  stub(find_ssl_lib, "Sys.info", mock_sys_info("Darwin"))
  stub(find_ssl_lib, "get_os_type", function() "unix")
  stub(find_ssl_lib, "system", mock_system("10.14.6"))
  stub(find_ssl_lib, "Sys.which", mock_sys_which(c("libssl.dylib" = "/path/to/libssl.dylib")))
  stub(find_ssl_lib, "file.exists", mock_file_exists)
  stub(find_ssl_lib, "dyn.load", mock_dyn_load)

  expect_equal(find_ssl_lib(), "/path/to/libssl.dylib")
})

test_that("find_ssl_lib handles non-macOS systems", {
  stub(find_ssl_lib, "Sys.info", mock_sys_info("Linux"))
  stub(find_ssl_lib, "get_os_type", function() "unix")
  stub(find_ssl_lib, "Sys.which", mock_sys_which(c("libssl.so" = "/path/to/libssl.so")))
  stub(find_ssl_lib, "file.exists", mock_file_exists)
  stub(find_ssl_lib, "dyn.load", mock_dyn_load)

  expect_equal(find_ssl_lib(), "/path/to/libssl.so")
})

test_that("find_ssl_lib throws an error if no library is found", {
  stub(find_ssl_lib, "Sys.info", mock_sys_info("Linux"))
  stub(find_ssl_lib, "get_os_type", function() "unix")
  stub(find_ssl_lib, "Sys.which", mock_sys_which(c()))
  expect_error(find_ssl_lib(), "No SSL library candidates found on the system")
})

test_that("find_ssl_lib throws an error if dyn.load fails", {
  stub(find_ssl_lib, "Sys.info", mock_sys_info("Linux"))
  stub(find_ssl_lib, "get_os_type", function() "unix")
  stub(find_ssl_lib, "Sys.which", mock_sys_which(c("libssl.so" = "/path/to/libssl.so")))
  stub(find_ssl_lib, "file.exists", mock_file_exists)
  stub(find_ssl_lib, "dyn.load", function(...) stop("dyn.load error"))

  expect_error(find_ssl_lib(), "Failed to load SSL library: dyn.load error")
})
