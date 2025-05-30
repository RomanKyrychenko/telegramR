require(base64enc)
require(jsonlite)

# Test for datetime_to_timestamp
test_that("datetime_to_timestamp works correctly", {
  dt <- as.POSIXct("2023-01-01 12:00:00", tz = "UTC")
  expect_equal(datetime_to_timestamp(dt), as.numeric(difftime(dt, EPOCH, units = "secs")) %% 2^32)

  dt_naive <- as.POSIXct("2023-01-01 12:00:00")
  expect_equal(datetime_to_timestamp(dt_naive), as.numeric(difftime(dt_naive, EPOCH, units = "secs")) %% 2^32)
})

# Test for json_default
test_that("json_default handles different types correctly", {
  raw_data <- charToRaw("test")
  expect_equal(json_default(raw_data), base64encode(raw_data))

  posix_time <- as.POSIXct("2023-01-01 12:00:00", tz = "UTC")
  expect_equal(json_default(posix_time), format(posix_time, "%Y-%m-%dT%H:%M:%S"))

  expect_equal(json_default(123), "123")
  expect_equal(json_default("test"), "test")
})

# Test for pretty_format
test_that("pretty_format formats objects correctly", {
  obj <- list(a = 1, b = "test", c = list(d = 2))
  expect_equal(pretty_format(obj), "{a=1, b=test, c={d=2}}")

  vector <- c(1, 2, 3)
  expect_equal(pretty_format(vector), "[1, 2, 3]")
})

# Test for serialize_bytes
test_that("serialize_bytes serializes data correctly", {
  data <- charToRaw("test")
  serialized <- serialize_bytes(data)
  expect_true(is.raw(serialized))

  expect_error(serialize_bytes(123), "bytes or str expected, not double")
})

# Test for serialize_datetime
test_that("serialize_datetime serializes datetime correctly", {
  dt <- as.POSIXct("2023-01-01 12:00:00", tz = "UTC")
  serialized <- serialize_datetime(dt)
  expect_true(is.raw(serialized))

  expect_equal(serialize_datetime(NULL), as.raw(rep(0, 4)))
})

# Test for TLObject methods
test_that("TLObject methods work as expected", {
  obj <- TLObject$new()
  expect_error(obj$to_dict(), "Not implemented")
  expect_error(obj$.bytes(), "Not implemented")
  expect_error(obj$from_reader(NULL), "Not implemented")

  expect_equal(obj$pretty_format(obj), pretty_format(obj))
  expect_equal(obj$serialize_bytes(charToRaw("test")), serialize_bytes(charToRaw("test")))
})

# Test for TLRequest methods
test_that("TLRequest methods work as expected", {
  req <- TLRequest$new()
  expect_error(req$resolve(NULL, NULL), "Not implemented")
  expect_error(req$read_result(NULL), "Not implemented")
})
