test_that("initializes ObfuscatedIO with valid connection parameters", {
  connection <- list(
    `_reader` = mock(readexactly = function(n) raw(n)),
    `_writer` = mock(write = function(data) invisible(data)),
    packet_codec = mock(obfuscate_tag = as.raw(c(0xee, 0xee, 0xee, 0xee)))
  )
  io <- ObfuscatedIO$new(connection)
  expect_equal(length(io$header), 64)
  expect_true(inherits(io$`_encrypt`, "AESModeCTR"))
  expect_true(inherits(io$`_decrypt`, "AESModeCTR"))
})

test_that("throws error when ObfuscatedIO is initialized without packet codec", {
  connection <- list(
    `_reader` = mock(readexactly = function(n) raw(n)),
    `_writer` = mock(write = function(data) invisible(data))
  )
  expect_error(ObfuscatedIO$new(connection), "object 'packet_codec' not found")
})

test_that("reads and decrypts data correctly in ObfuscatedIO", {
  connection <- list(
    `_reader` = mock(readexactly = function(n) raw(n)),
    `_writer` = mock(write = function(data) invisible(data)),
    packet_codec = mock(obfuscate_tag = as.raw(c(0xee, 0xee, 0xee, 0xee)))
  )
  io <- ObfuscatedIO$new(connection)
  result <- io$readexactly(10)
  expect_equal(length(result), 10)
})

test_that("encrypts and writes data correctly in ObfuscatedIO", {
  connection <- list(
    `_reader` = mock(readexactly = function(n) raw(n)),
    `_writer` = mock(write = function(data) data),
    packet_codec = mock(obfuscate_tag = as.raw(c(0xee, 0xee, 0xee, 0xee)))
  )
  io <- ObfuscatedIO$new(connection)
  data <- raw(10)
  result <- io$write(data)
  expect_equal(length(result), 10)
})

test_that("throws error when header initialization fails due to invalid random bytes", {
  connection <- list(
    `_reader` = mock(readexactly = function(n) raw(n)),
    `_writer` = mock(write = function(data) invisible(data)),
    packet_codec = mock(obfuscate_tag = as.raw(c(0xee, 0xee, 0xee, 0xee)))
  )
  mock_rand_bytes <- function(n) as.raw(rep(0xef, n))
  with_mock(rand_bytes = mock_rand_bytes, {
    expect_error(ObfuscatedIO$new(connection), "Failed to generate valid header")
  })
})
