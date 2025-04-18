test_that("encodes packet with correct HTTP headers and data", {
  codec <- HttpPacketCodec$new()
  codec$._conn <- list(ip = "127.0.0.1", port = 8080)
  data <- charToRaw("test_data")

  result <- codec$encode_packet(data)
  header <- sprintf("POST /api HTTP/1.1\r\nHost: %s:%s\r\nContent-Type: application/x-www-form-urlencoded\r\nConnection: keep-alive\r\nKeep-Alive: timeout=100000, max=10000000\r\nContent-Length: %d\r\n\r\n",
                    "127.0.0.1", 8080, length(data))
  expected <- c(charToRaw(header), data)

  expect_equal(result, expected)
})

test_that("throws error when reading packet with incomplete newline", {
  codec <- HttpPacketCodec$new()
  reader <- mock(readline = function() as.raw(0), readexactly = function(n) raw(n))

  expect_error(value(codec$read_packet(reader)), "IncompleteReadError: no newline found")
})

test_that("reads packet successfully with valid content length", {
  codec <- HttpPacketCodec$new()
  reader <- mock(
    readline = function() charToRaw("content-length: 10\r\n"),
    readexactly = function(n) raw(n)
  )

  result <- value(codec$read_packet(reader))
  expect_equal(length(result), 10)
})

test_that("connects using SSL when port is SSL_PORT", {
  connection <- ConnectionHttp$new(ip = "127.0.0.1", port = SSL_PORT, dc_id = 1, loggers = list(connection = mock()))
  result <- value(connection$connect())
  expect_true(result)
})

test_that("connects without SSL when port is not SSL_PORT", {
  connection <- ConnectionHttp$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = list(connection = mock()))
  result <- value(connection$connect())
  expect_true(result)
})
