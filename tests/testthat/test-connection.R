test_that("initializes connection with valid parameters", {
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers)

  expect_equal(connection$.__enclos_env__$private$._ip, "127.0.0.1")
  expect_equal(connection$.__enclos_env__$private$._port, 8080)
  expect_equal(connection$.__enclos_env__$private$._dc_id, 1)
  expect_false(connection$.__enclos_env__$private$._connected)
})

test_that("connects to server successfully", {
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers)

  result <- value(connection$connect())
  expect_true(result)
  expect_true(connection$.__enclos_env__$private$._connected)
})

test_that("throws error when sending data while disconnected", {
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers)

  expect_error(connection$send("data"), "ConnectionError: Not connected")
})

test_that("disconnects successfully", {
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers)

  connection$connect()
  result <- value(connection$disconnect())
  expect_null(result)
  expect_false(connection$.__enclos_env__$private$._connected)
})

test_that("handles proxy configuration correctly", {
  proxy <- list(proxy_type = "socks5", addr = "127.0.0.1", port = 1080)
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers, proxy = proxy)

  result <- value(connection$connect())
  expect_true(result)
})

test_that("receives data successfully", {
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers)

  connection$connect()
  promise <- connection$recv()
  expect_true(inherits(promise, "promise"))
})

test_that("throws error when receiving data while disconnected", {
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers)

  expect_error(value(connection$recv()), "ConnectionError: Not connected")
})

test_that("handles SSL configuration correctly", {
  loggers <- list(connection = mock())
  connection <- Connection$new(ip = "127.0.0.1", port = 8080, dc_id = 1, loggers = loggers)

  result <- value(connection$connect(ssl = TRUE))
  expect_true(result)
})
