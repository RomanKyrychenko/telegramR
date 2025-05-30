test_that("initializes MTProxyIO with valid connection parameters", {
  connection <- list(
    reader = mock(readexactly = function(n) raw(n)),
    writer = mock(write = function(data) invisible(data)),
    secret = as.raw(rep(0x01, 16)),
    dc_id = 2,
    packet_codec = RandomizedIntermediatePacketCodec$new()
  )
  io <- MTProxyIO$new(connection)
  expect_equal(length(io$header), 64)
  expect_true(inherits(io$encryptor, "AESModeCTR"))
  expect_true(inherits(io$decryptor, "AESModeCTR"))
})

test_that("throws error when MTProxyIO is initialized with invalid secret length", {
  connection <- list(
    reader = mock(readexactly = function(n) raw(n)),
    writer = mock(write = function(data) invisible(data)),
    secret = as.raw(rep(0x01, 15)),
    dc_id = 2,
    packet_codec = RandomizedIntermediatePacketCodec$new()
  )
  expect_error(MTProxyIO$new(connection), "MTProxy secret must be a hex-string representing 16 bytes")
})

test_that("encrypts and writes data correctly in MTProxyIO", {
  connection <- list(
    reader = mock(readexactly = function(n) raw(n)),
    writer = mock(write = function(data) data),
    secret = as.raw(rep(0x01, 16)),
    dc_id = 2,
    packet_codec = RandomizedIntermediatePacketCodec$new()
  )
  io <- MTProxyIO$new(connection)
  data <- raw(10)
  result <- io$write(data)
  expect_equal(length(result), 10)
})

test_that("reads and decrypts data correctly in MTProxyIO", {
  connection <- list(
    reader = mock(readexactly = function(n) raw(n)),
    writer = mock(write = function(data) invisible(data)),
    secret = as.raw(rep(0x01, 16)),
    dc_id = 2,
    packet_codec = RandomizedIntermediatePacketCodec$new()
  )
  io <- MTProxyIO$new(connection)
  result <- io$readexactly(10)
  expect_equal(length(result), 10)
})

test_that("throws error when TcpMTProxy is initialized without proxy info", {
  expect_error(TcpMTProxy$new("127.0.0.1", 443, 2, NULL, NULL), "No proxy info specified for MTProxy connection")
})

test_that("normalizes valid hex secret correctly in TcpMTProxy", {
  proxy <- list("127.0.0.1", 443, "ee112233445566778899aabbccddeeff")
  tcp <- TcpMTProxy$new("127.0.0.1", 443, 2, NULL, proxy)
  expect_equal(length(tcp$secret), 16)
})

test_that("throws error when TcpMTProxy is initialized with invalid secret", {
  proxy <- list("127.0.0.1", 443, "invalid_secret")
  expect_error(TcpMTProxy$new("127.0.0.1", 443, 2, NULL, proxy), "Error in base64decode")
})
