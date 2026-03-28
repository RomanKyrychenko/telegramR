# Deep coverage for BinaryReader methods not covered by test-binaryreader.R

# Helper: build TG-encoded byte payload (short format, length < 254)
make_tg_bytes <- function(payload) {
  n <- length(payload)
  total_with_len <- n + 1L
  padding_needed <- if (total_with_len %% 4 == 0) 0L else 4L - (total_with_len %% 4)
  c(as.raw(n), payload, raw(padding_needed))
}

# Helper: build TG-encoded byte payload (long format, length >= 254)
make_tg_bytes_long <- function(payload) {
  n <- length(payload)
  padding_needed <- if (n %% 4 == 0) 0L else 4L - (n %% 4)
  c(
    as.raw(254L),
    as.raw(n %% 256L),
    as.raw((n %/% 256L) %% 256L),
    as.raw((n %/% 65536L) %% 256L),
    payload,
    raw(padding_needed)
  )
}

# --- read() edge cases ---

test_that("BinaryReader read(0) returns empty raw vector", {
  r <- BinaryReader$new(as.raw(c(0x01, 0x02)))
  expect_equal(r$read(0L), raw(0))
  expect_equal(r$tell_position(), 0L)
})

test_that("BinaryReader read(-1) returns all remaining bytes", {
  r <- BinaryReader$new(as.raw(c(0xAA, 0xBB, 0xCC)))
  r$set_position(1L)
  rest <- r$read(-1L)
  expect_equal(rest, as.raw(c(0xBB, 0xCC)))
  expect_equal(r$tell_position(), 3L)
})

test_that("BinaryReader read() past end throws error", {
  r <- BinaryReader$new(as.raw(c(0x01)))
  expect_error(r$read(5L), "No more data")
})

# --- read_float / read_double ---

test_that("BinaryReader read_float parses 4-byte float correctly", {
  # Pack 1.5 as little-endian 4-byte float
  b <- writeBin(1.5, raw(), size = 4L, endian = "little")
  r <- BinaryReader$new(b)
  expect_equal(r$read_float(), 1.5)
})

test_that("BinaryReader read_double parses 8-byte double correctly", {
  b <- writeBin(3.141592653589793, raw(), size = 8L, endian = "little")
  r <- BinaryReader$new(b)
  expect_true(abs(r$read_double() - pi) < 1e-12)
})

# --- bytes_to_int ---

test_that("bytes_to_int handles unsigned 32-bit values > INT_MAX", {
  r <- BinaryReader$new(raw(0))
  bytes <- as.raw(c(0xFF, 0xFF, 0xFF, 0xFF))  # 4294967295
  val <- r$bytes_to_int(bytes, signed = FALSE)
  expect_equal(val, 4294967295)
})

test_that("bytes_to_int handles negative signed 32-bit values", {
  r <- BinaryReader$new(raw(0))
  # -1 in little-endian 4 bytes
  bytes <- as.raw(c(0xFF, 0xFF, 0xFF, 0xFF))
  val <- r$bytes_to_int(bytes, signed = TRUE)
  expect_equal(val, -1L)
})

test_that("bytes_to_int handles 8-byte signed value", {
  r <- BinaryReader$new(raw(0))
  # -1 in 8 bytes
  bytes <- as.raw(rep(0xFF, 8))
  val <- r$bytes_to_int(bytes, signed = TRUE)
  expect_equal(as.numeric(val), -1)
})

test_that("bytes_to_int handles 8-byte unsigned large value", {
  r <- BinaryReader$new(raw(0))
  # 2^63 in little-endian
  bytes <- c(as.raw(rep(0x00, 7)), as.raw(0x80))
  val <- r$bytes_to_int(bytes, signed = FALSE)
  expect_equal(as.numeric(val), 2^63)
})

# --- read_large_int ---

test_that("BinaryReader read_large_int reads 128-bit value", {
  b <- c(as.raw(rep(0x01, 16)))  # 16 bytes = 128 bits
  r <- BinaryReader$new(b)
  val <- r$read_large_int(128L)
  expect_true(inherits(val, "bigz") || is.numeric(val))
  expect_gt(as.numeric(val), 0)
})

test_that("BinaryReader read_large_int reads 256-bit value", {
  b <- c(as.raw(rep(0x01, 32)))  # 32 bytes = 256 bits
  r <- BinaryReader$new(b)
  val <- r$read_large_int(256L)
  expect_true(inherits(val, "bigz") || is.numeric(val))
})

# --- tgread_bytes ---

test_that("BinaryReader tgread_bytes reads short format (< 254 bytes)", {
  payload <- charToRaw("hello")
  encoded <- make_tg_bytes(payload)
  r <- BinaryReader$new(encoded)
  expect_equal(r$tgread_bytes(), payload)
})

test_that("BinaryReader tgread_bytes reads long format (>= 254 bytes)", {
  payload <- as.raw(seq_len(300) %% 256)
  encoded <- make_tg_bytes_long(payload)
  r <- BinaryReader$new(encoded)
  result <- r$tgread_bytes()
  expect_equal(result, payload)
})

test_that("BinaryReader tgreadbytes alias works", {
  payload <- charToRaw("test")
  encoded <- make_tg_bytes(payload)
  r <- BinaryReader$new(encoded)
  expect_equal(r$tgreadbytes(), payload)
})

# --- tgread_string ---

test_that("BinaryReader tgread_string decodes UTF-8 string", {
  s       <- "Привіт"
  payload <- charToRaw(s)
  encoded <- make_tg_bytes(payload)
  r <- BinaryReader$new(encoded)
  expect_equal(r$tgread_string(), s)
})

test_that("BinaryReader tgread_string decodes empty string", {
  encoded <- make_tg_bytes(raw(0))
  r <- BinaryReader$new(encoded)
  expect_equal(r$tgread_string(), "")
})

# --- tgread_date ---

test_that("BinaryReader tgread_date returns NULL for timestamp 0", {
  b <- writeBin(0L, raw(), size = 4L, endian = "little")
  r <- BinaryReader$new(b)
  expect_null(r$tgread_date())
})

test_that("BinaryReader tgread_date returns POSIXct for non-zero timestamp", {
  ts <- 1700000000L
  b  <- writeBin(ts, raw(), size = 4L, endian = "little")
  r  <- BinaryReader$new(b)
  dt <- r$tgread_date()
  expect_s3_class(dt, "POSIXct")
  expect_equal(as.integer(dt), ts)
})

# --- read_int signed/unsigned ---

test_that("BinaryReader read_int unsigned returns numeric for value > INT_MAX", {
  b <- as.raw(c(0xFF, 0xFF, 0xFF, 0xFF))
  r <- BinaryReader$new(b)
  val <- r$read_int(signed = FALSE)
  expect_equal(val, 4294967295)
})

test_that("BinaryReader read_int signed returns negative for 0xFFFFFFFF", {
  b <- as.raw(c(0xFF, 0xFF, 0xFF, 0xFF))
  r <- BinaryReader$new(b)
  val <- r$read_int(signed = TRUE)
  expect_equal(val, -1L)
})

# --- tgread_object: Vector ---

test_that("BinaryReader tgread_object parses empty Vector (0x1cb5c415)", {
  # Vector constructor: 0x1cb5c415, count = 0
  b <- c(
    as.raw(c(0x15, 0xc4, 0xb5, 0x1c)),  # Vector constructor (little-endian)
    writeBin(0L, raw(), size = 4L, endian = "little")
  )
  r   <- BinaryReader$new(b)
  obj <- r$tgread_object()
  expect_true(is.list(obj))
  expect_equal(length(obj), 0L)
})

# --- tgread_object: unknown constructor ---

test_that("BinaryReader tgread_object returns list with CONSTRUCTOR_ID for unknown ctor", {
  # Use a constructor id that is very unlikely to match any known type
  b <- c(
    writeBin(0xDEADBEEFL, raw(), size = 4L, endian = "little")
  )
  r   <- BinaryReader$new(b)
  obj <- r$tgread_object()
  expect_true(is.list(obj))
  expect_true(!is.null(obj$CONSTRUCTOR_ID))
})
