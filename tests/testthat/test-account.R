test_that("handles successful takeout initialization", {
  client <- local_mocked_bindings()
  session <- local_mocked_bindings()
  request <- local_mocked_bindings()
  client$session <- session
  session$takeout_id <- NULL
  request$id <- 12345
  client$invoke <- function(req) request

  takeout <- TakeoutClient$new(TRUE, client, request)
  result <- takeout$aenter()

  expect_equal(client$session$takeout_id, 12345)
  expect_equal(result, takeout)
})

test_that("throws error when takeout already in progress", {
  client <- local_mocked_bindings()
  session <- local_mocked_bindings()
  request <- local_mocked_bindings()
  client$session <- session
  session$takeout_id <- 12345

  takeout <- TakeoutClient$new(TRUE, client, request)

  expect_error(
    takeout$aenter(),
    "Can't send a takeout request while another takeout for the current session is still not finished."
  )
})

test_that("handles successful takeout exit", {
  client <- local_mocked_bindings()
  session <- local_mocked_bindings()
  client$session <- session
  session$takeout_id <- 12345
  client$invoke <- function(req) TRUE

  takeout <- TakeoutClient$new(TRUE, client, NULL)
  takeout$aexit(NULL, NULL, NULL)

  expect_null(client$session$takeout_id)
})

test_that("throws error when takeout exit fails", {
  client <- local_mocked_bindings()
  session <- local_mocked_bindings()
  client$session <- session
  session$takeout_id <- 12345
  client$invoke <- function(req) FALSE

  takeout <- TakeoutClient$new(TRUE, client, NULL)

  expect_error(takeout$aexit(NULL, NULL, NULL), "Failed to finish the takeout.")
})

test_that("initializes takeout session with parameters", {
  account <- local_mocked_bindings()
  account$session <- local_mocked_bindings()
  account$session$takeout_id <- NULL
  functions$account$InitTakeoutSessionRequest <- function(kwargs) kwargs

  methods <- AccountMethods$new()
  result <- methods$takeout(TRUE, contacts = TRUE, users = NULL)

  expect_equal(result$request$contacts, TRUE)
  expect_null(result$request$message_users)
})

test_that("returns false when end takeout fails", {
  account <- local_mocked_bindings()
  account$session <- local_mocked_bindings()
  account$session$takeout_id <- NULL

  methods <- AccountMethods$new()
  result <- methods$end_takeout(FALSE)

  expect_false(result)
})
