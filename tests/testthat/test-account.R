handles_successful_takeout_initialization <- function() {
  client <- mock()
  session <- mock()
  request <- mock()
  client$session <- session
  session$takeout_id <- NULL
  request$id <- 12345
  client$invoke <- function(req) request

  takeout <- TakeoutClient$new(TRUE, client, request)
  result <- takeout$aenter()

  expect_equal(client$session$takeout_id, 12345)
  expect_equal(result, takeout)
}

throws_error_when_takeout_already_in_progress <- function() {
  client <- mock()
  session <- mock()
  request <- mock()
  client$session <- session
  session$takeout_id <- 12345

  takeout <- TakeoutClient$new(TRUE, client, request)

  expect_error(takeout$aenter(), "Can't send a takeout request while another takeout for the current session is still not finished.")
}

handles_successful_takeout_exit <- function() {
  client <- mock()
  session <- mock()
  client$session <- session
  session$takeout_id <- 12345
  client$invoke <- function(req) TRUE

  takeout <- TakeoutClient$new(TRUE, client, NULL)
  takeout$aexit(NULL, NULL, NULL)

  expect_null(client$session$takeout_id)
}

throws_error_when_takeout_exit_fails <- function() {
  client <- mock()
  session <- mock()
  client$session <- session
  session$takeout_id <- 12345
  client$invoke <- function(req) FALSE

  takeout <- TakeoutClient$new(TRUE, client, NULL)

  expect_error(takeout$aexit(NULL, NULL, NULL), "Failed to finish the takeout.")
}

# Tests for AccountMethods
initializes_takeout_session_with_parameters <- function() {
  account <- mock()
  account$session <- mock()
  account$session$takeout_id <- NULL
  functions$account$InitTakeoutSessionRequest <- function(kwargs) kwargs

  methods <- AccountMethods$new()
  result <- methods$takeout(TRUE, contacts = TRUE, users = NULL)

  expect_equal(result$request$contacts, TRUE)
  expect_null(result$request$message_users)
}

returns_false_when_end_takeout_fails <- function() {
  account <- mock()
  account$session <- mock()
  account$session$takeout_id <- NULL

  methods <- AccountMethods$new()
  result <- methods$end_takeout(FALSE)

  expect_false(result)
}
