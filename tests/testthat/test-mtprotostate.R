test_that("initializes MTProtoState with valid authentication key", {
  auth_key <- list(key = raw(256), key_id = 123456789)
  loggers <- list(MTProtoState = mock())
  state <- MTProtoState$new(auth_key, loggers)
  expect_equal(state$auth_key, auth_key)
  expect_equal(state$time_offset, 0)
  expect_equal(state$salt, 0)
  expect_true(!is.null(state$id))
})

test_that("resets MTProtoState correctly", {
  auth_key <- list(key = raw(256), key_id = 123456789)
  loggers <- list(MTProtoState = mock())
  state <- MTProtoState$new(auth_key, loggers)
  state$reset()
  expect_equal(state$salt, 0)
  expect_true(!is.null(state$id))
})

test_that("generates unique message IDs", {
  auth_key <- list(key = raw(256), key_id = 123456789)
  loggers <- list(MTProtoState = mock())
  state <- MTProtoState$new(auth_key, loggers)
  msg_id1 <- state$get_new_msg_id()
  msg_id2 <- state$get_new_msg_id()
  expect_true(msg_id2 > msg_id1)
})

test_that("throws error when decrypting with invalid auth key", {
  auth_key <- list(key = raw(256), key_id = 123456789)
  loggers <- list(MTProtoState = mock())
  state <- MTProtoState$new(auth_key, loggers)
  body <- c(packInt64(987654321), raw(100))
  expect_error(state$decrypt_message_data(body), "SecurityError: Server replied with an invalid auth key")
})

test_that("throws error when session ID is invalid during decryption", {
  auth_key <- list(key = raw(256), key_id = 123456789)
  loggers <- list(MTProtoState = mock())
  state <- MTProtoState$new(auth_key, loggers)
  body <- c(packInt64(123456789), raw(100))
  mock_unpackInt64 <- function(data) if (identical(data, body[9:16])) return(987654321) else return(123456789)
  with_mock(unpackInt64 = mock_unpackInt64, {
    expect_error(state$decrypt_message_data(body), "SecurityError: Server replied with a wrong session ID")
  })
})

test_that("updates time offset correctly with valid message ID", {
  auth_key <- list(key = raw(256), key_id = 123456789)
  loggers <- list(MTProtoState = mock())
  state <- MTProtoState$new(auth_key, loggers)
  correct_msg_id <- bitwShiftL(as.integer(Sys.time()) + 10, 32)
  offset <- state$update_time_offset(correct_msg_id)
  expect_equal(offset, 10, tolerance = 1)
})
