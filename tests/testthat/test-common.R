test_that("ReadCancelledError initializes correctly", {
  error <- CommonErrors$new()$ReadCancelledError$new()
  expect_equal(error$message, "The read operation was cancelled.")
})

test_that("TypeNotFoundError initializes correctly", {
  error <- CommonErrors$new()$TypeNotFoundError$new(0x12345678, "remaining_bytes")
  expect_equal(error$message, "Could not find a matching Constructor ID for the TLObject that was supposed to be read with ID 12345678. See the FAQ for more details. Remaining bytes: remaining_bytes")
  expect_equal(error$invalid_constructor_id, 0x12345678)
  expect_equal(error$remaining, "remaining_bytes")
})

test_that("InvalidChecksumError initializes correctly", {
  error <- CommonErrors$new()$InvalidChecksumError$new("1234", "5678")
  expect_equal(error$message, "Invalid checksum (1234 when 5678 was expected). This packet should be skipped.")
  expect_equal(error$checksum, "1234")
  expect_equal(error$valid_checksum, "5678")
})

test_that("InvalidBufferError initializes correctly with HTTP code", {
  error <- CommonErrors$new()$InvalidBufferError$new(c(0, 0, 0, 404))
  expect_equal(error$message, "Invalid response buffer (HTTP code -404)")
  expect_equal(error$code, -404)
})

test_that("InvalidBufferError initializes correctly with short payload", {
  error <- CommonErrors$new()$InvalidBufferError$new("short")
  expect_equal(error$message, "Invalid response buffer (too short short)")
  expect_null(error$code)
})

test_that("AuthKeyNotFound initializes correctly", {
  error <- CommonErrors$new()$AuthKeyNotFound$new()
  expect_equal(error$message, "The server claims it doesn't know about the authorization key. If the issue persists, you may need to recreate the session file and login again.")
})

test_that("SecurityError initializes correctly", {
  error <- CommonErrors$new()$SecurityError$new("Custom security error")
  expect_equal(error$message, "Custom security error")
})

test_that("CdnFileTamperedError initializes correctly", {
  error <- CommonErrors$new()$CdnFileTamperedError$new()
  expect_equal(error$message, "The CDN file has been altered and its download cancelled.")
})

test_that("AlreadyInConversationError initializes correctly", {
  error <- CommonErrors$new()$AlreadyInConversationError$new()
  expect_equal(error$message, "Cannot open exclusive conversation in a chat that already has one open conversation.")
})

test_that("BadMessageError initializes correctly with known code", {
  error <- CommonErrors$new()$BadMessageError$new("request", 16)
  expect_equal(error$message, "Bad message error: msg_id too low (most likely, client time is wrong).")
  expect_equal(error$request, "request")
  expect_equal(error$code, 16)
})

test_that("BadMessageError initializes correctly with unknown code", {
  error <- CommonErrors$new()$BadMessageError$new("request", 999)
  expect_equal(error$message, "Bad message error: Unknown error code: 999")
  expect_equal(error$request, "request")
  expect_equal(error$code, 999)
})

test_that("MultiError initializes correctly", {
  exceptions <- list(CommonErrors$new()$ReadCancelledError$new(), NULL)
  results <- list("result1", "result2")
  requests <- list("request1", "request2")

  error <- CommonErrors$new()$MultiError$new(exceptions, results, requests)
  expect_equal(error$exceptions, exceptions)
  expect_equal(error$results, results)
  expect_equal(error$requests, requests)
})
