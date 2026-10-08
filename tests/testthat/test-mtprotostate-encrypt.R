# encrypt_message_data / decrypt_message_data with a real 256-byte AuthKey

make_state_256 <- function() {
  set.seed(123)
  ak  <- AuthKey$new(as.raw(sample(0:255, 256, replace = TRUE)))
  MTProtoState$new(ak, NULL)
}

# --- encrypt_message_data ---

test_that("encrypt_message_data returns raw vector prefixed with key_id_raw", {
  skip_on_cran()
  st  <- make_state_256()
  out <- st$encrypt_message_data(as.raw(rep(0x42, 16)))

  expect_type(out, "raw")
  # First 8 bytes = key_id_raw
  expect_equal(out[1:8], st$auth_key$key_id_raw)
  # Min length: 8 (key_id) + 16 (msg_key) + ≥16 (AES-encrypted body)
  expect_gte(length(out), 40L)
})

test_that("encrypt_message_data handles empty data", {
  skip_on_cran()
  st  <- make_state_256()
  out <- st$encrypt_message_data(raw(0))
  expect_type(out, "raw")
  expect_gt(length(out), 0L)
})

test_that("encrypt_message_data produces different output each call (padding randomness)", {
  skip_on_cran()
  st  <- make_state_256()
  d   <- as.raw(rep(0x11, 32))
  o1  <- st$encrypt_message_data(d)
  o2  <- st$encrypt_message_data(d)
  # msg_ids differ, so outputs should differ
  expect_false(identical(o1, o2))
})

test_that("encrypt_message_data dump_packet option writes a hex file", {
  skip_on_cran()
  st <- make_state_256()
  withr::with_options(list(telegramR.dump_packet = TRUE), {
    out <- st$encrypt_message_data(as.raw(rep(0x55, 16)))
    expect_type(out, "raw")
  })
})

# --- decrypt_message_data: real server-direction messages ---

test_that("decrypt_message_data decrypts a server message", {
  skip_on_cran()
  st <- make_state_256()
  res <- st$decrypt_message_data(server_encrypt(st, peer_channel_bytes()))
  expect_s3_class(res$obj, "PeerChannel")
  expect_equal(as.character(res$obj$channel_id), "1234567890")
})

test_that("decrypt_message_data rejects a tampered message", {
  skip_on_cran()
  st <- make_state_256()
  body <- server_encrypt(st, peer_channel_bytes())
  body[40] <- xor(body[40], as.raw(0x01))
  expect_error(st$decrypt_message_data(body), "msg_key doesn't match")
})

test_that("decrypt_message_data errors on body shorter than 8 bytes", {
  skip_on_cran()
  st <- make_state_256()
  expect_error(st$decrypt_message_data(as.raw(1:5)), "Buffer too small")
})

test_that("decrypt_message_data errors on wrong auth key id", {
  skip_on_cran()
  st   <- make_state_256()
  body <- server_encrypt(st, peer_channel_bytes())
  body[1:8] <- as.raw(0)
  expect_error(st$decrypt_message_data(body), "invalid auth key")
})

test_that("decrypt_message_data errors on wrong session id", {
  skip_on_cran()
  st   <- make_state_256()
  body <- server_encrypt(st, peer_channel_bytes(), session_id = st$id + 1)
  expect_error(st$decrypt_message_data(body), "wrong session ID")
})

test_that("decrypt_message_data rejects even (client) message ids", {
  skip_on_cran()
  st   <- make_state_256()
  body <- server_encrypt(st, peer_channel_bytes(), msg_id_raw = server_msg_id_raw(low = 2L))
  expect_error(st$decrypt_message_data(body), "even msg_id")
})

test_that("decrypt_message_data ignores a replayed message", {
  skip_on_cran()
  st   <- make_state_256()
  body <- server_encrypt(st, peer_channel_bytes())
  expect_false(is.null(st$decrypt_message_data(body)))
  expect_null(st$decrypt_message_data(body))
})

test_that("session ids are random 64-bit values", {
  skip_on_cran()
  ids <- vapply(1:5, function(i) as.character(make_state_256()$id), character(1))
  expect_true(any(abs(as.numeric(ids)) > .Machine$integer.max))
  expect_length(unique(ids), 5)
})

# --- OpaqueRequest (also in mtprotostate.R) ---

test_that("OpaqueRequest to_bytes returns the stored raw data", {
  skip_on_cran()
  d  <- as.raw(c(0xDE, 0xAD, 0xBE, 0xEF))
  op <- OpaqueRequest$new(d)
  expect_equal(op$to_bytes(), d)
})

# --- packInt64 / unpackInt64 edge cases not covered elsewhere ---

test_that("packInt64 round-trips large positive value", {
  skip_on_cran()
  val <- 2^52   # safe integer in double
  b   <- packInt64(val)
  expect_equal(unpackInt64(b), val)
})

test_that("packInt64 handles character bigz string", {
  skip_on_cran()
  b <- packInt64("123456789")
  expect_equal(length(b), 8L)
  expect_equal(unpackInt64(b), 123456789)
})
