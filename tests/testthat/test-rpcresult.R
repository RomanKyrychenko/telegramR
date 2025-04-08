test_that("RpcResult initializes correctly", {
  result <- RpcResult$new(req_msg_id = 12345, body = "test_body", error = NULL)
  expect_equal(result$req_msg_id, 12345)
  expect_equal(result$body, "test_body")
  expect_null(result$error)
})

test_that("RpcResult from_reader handles RpcError correctly", {
  mock_reader <- list(
    read_long = function() 12345,
    read_int = function(signed) RpcError$CONSTRUCTOR_ID,
    seek = function(offset) NULL
  )
  mock_reader$read <- function() NULL
  RpcError$from_reader <- function(reader) "mock_error"

  result <- RpcResult$from_reader(mock_reader)
  expect_equal(result$req_msg_id, 12345)
  expect_null(result$body)
  expect_equal(result$error, "mock_error")
})

test_that("RpcResult from_reader handles GzipPacked correctly", {
  mock_reader <- list(
    read_long = function() 12345,
    read_int = function(signed) GzipPacked$CONSTRUCTOR_ID,
    seek = function(offset) NULL
  )
  mock_reader$read <- function() NULL
  GzipPacked$from_reader <- function(reader) list(data = "mock_data")

  result <- RpcResult$from_reader(mock_reader)
  expect_equal(result$req_msg_id, 12345)
  expect_equal(result$body, "mock_data")
  expect_null(result$error)
})

test_that("RpcResult to_dict works correctly", {
  result <- RpcResult$new(req_msg_id = 12345, body = "test_body", error = "test_error")
  dict <- result$to_dict()
  expect_equal(dict$`_`, "RpcResult")
  expect_equal(dict$req_msg_id, 12345)
  expect_equal(dict$body, "test_body")
  expect_equal(dict$error, "test_error")
})
