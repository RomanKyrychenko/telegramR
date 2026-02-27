library(testthat)


test_that("datetime_to_timestamp handles POSIXct", {
  dt <- as.POSIXct("2024-01-02 03:04:05", tz = "UTC")
  ts <- datetime_to_timestamp(dt)
  expect_type(ts, "double")
  expect_equal(ts, as.numeric(dt))
})

test_that("serialize_datetime returns 4 bytes for POSIXct and numeric", {
  dt <- as.POSIXct("2024-01-02 03:04:05", tz = "UTC")
  raw_dt <- serialize_datetime(dt)
  expect_true(is.raw(raw_dt))
  expect_equal(length(raw_dt), 4L)

  raw_num <- serialize_datetime(123456)
  expect_true(is.raw(raw_num))
  expect_equal(length(raw_num), 4L)
})

test_that("get_int_little decodes little-endian", {
  expect_equal(as.numeric(get_int_little(as.raw(c(0x01, 0x00)))), 1)
  expect_equal(as.numeric(get_int_little(as.raw(c(0xFF, 0xFF)), signed = FALSE)), 65535)
})

test_that("packInt32 and packInt64 produce expected raw", {
  expect_equal(packInt32(1), as.raw(c(0x01, 0x00, 0x00, 0x00)))
  expect_equal(packInt32(-1), as.raw(c(0xFF, 0xFF, 0xFF, 0xFF)))

  r <- packInt64(1)
  expect_true(is.raw(r))
  expect_equal(length(r), 8L)
  expect_equal(r[1], as.raw(0x01))
})

test_that("int_to_raw_le writes little-endian", {
  expect_equal(int_to_raw_le(0x01020304, width = 4L), as.raw(c(0x04, 0x03, 0x02, 0x01)))
})

test_that("strip_text trims whitespace", {
  text <- "  Hello, World!  "
  trimmed <- strip_text(text, entities = list())
  expect_equal(trimmed, "Hello, World!")
})

test_that("parse_html_to_telegram and unparse_telegram_to_html round-trip", {
  res <- parse_html_to_telegram("<b>Hi</b>")
  expect_equal(res$text, "Hi")
  expect_true(length(res$entities) >= 1L)
  expect_equal(res$entities[[1]]$type, "bold")

  html <- unparse_telegram_to_html(res$text, res$entities)
  expect_true(grepl("<strong>Hi</strong>", html, fixed = TRUE))
})
