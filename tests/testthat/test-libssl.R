mock_sys_info <- function(sysname) {
  function() list(sysname = sysname)
}

mock_platform <- function(os_type) {
  list(OS.type = os_type)
}

mock_sys_which <- function(return_value) {
  function(...) return_value
}

mock_system <- function(return_value) {
  function(...) return_value
}

# Test cases
test_that("find_ssl_lib uses SSL_LIB environment variable if set", {
  withr::with_envvar(c(SSL_LIB = "/path/to/libssl.dylib"), {
    expect_equal(find_ssl_lib(), "/path/to/libssl.dylib")
  })
})

test_that("find_ssl_lib handles macOS version-specific logic", {
  mockery::stub(find_ssl_lib, "Sys.info", mock_sys_info("Darwin"))
  mockery::stub(find_ssl_lib, ".Platform", mock_platform("unix"))
  mockery::stub(find_ssl_lib, "system", mock_system("10.15.7"))
  mockery::stub(find_ssl_lib, "Sys.which", mock_sys_which(c("libssl.46.dylib" = "/path/to/libssl.46.dylib")))

  expect_equal(find_ssl_lib(), "/path/to/libssl.46.dylib")
})

test_that("find_ssl_lib falls back to libssl.dylib on older macOS versions", {
  mockery::stub(find_ssl_lib, "Sys.info", mock_sys_info("Darwin"))
  mockery::stub(find_ssl_lib, ".Platform", mock_platform("unix"))
  mockery::stub(find_ssl_lib, "system", mock_system("10.14.6"))
  mockery::stub(find_ssl_lib, "Sys.which", mock_sys_which(c("libssl.dylib" = "/path/to/libssl.dylib")))

  expect_equal(find_ssl_lib(), "/path/to/libssl.dylib")
})

test_that("find_ssl_lib handles non-macOS systems", {
  mockery::stub(find_ssl_lib, "Sys.info", mock_sys_info("Linux"))
  mockery::stub(find_ssl_lib, ".Platform", mock_platform("unix"))
  mockery::stub(find_ssl_lib, "Sys.which", mock_sys_which(c("libssl.so" = "/path/to/libssl.so")))

  expect_equal(find_ssl_lib(), "/path/to/libssl.so")
})

test_that("find_ssl_lib throws an error if no library is found", {
  mockery::stub(find_ssl_lib, "Sys.which", mock_sys_which(""))
  expect_error(find_ssl_lib(), "No SSL library found")
})

test_that("find_ssl_lib throws an error if dyn.load fails", {
  mockery::stub(find_ssl_lib, "Sys.which", mock_sys_which("/path/to/libssl.so"))
  mockery::stub(find_ssl_lib, "dyn.load", function(...) stop("dyn.load error"))

  expect_error(find_ssl_lib(), "Failed to load SSL library: dyn.load error")
})
