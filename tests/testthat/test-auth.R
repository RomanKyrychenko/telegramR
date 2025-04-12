handles_successful_login_with_phone_and_code <- function() {
  auth <- mock()
  auth$get_me <- function() NULL
  auth$send_code_request <- function(phone) TRUE
  auth$sign_in <- function(phone, code) list(id = 12345, first_name = "Test", last_name = "User")
  private <- environment(auth)$private
  private$parse_phone <- function(phone) phone

  result <- auth$start(phone = "1234567890", code_callback = function() "12345")

  expect_equal(result$id, 12345)
  expect_equal(result$first_name, "Test")
  expect_equal(result$last_name, "User")
}

throws_error_when_no_phone_or_bot_token_provided <- function() {
  auth <- mock()
  expect_error(auth$start(phone = NULL, bot_token = NULL), "No phone number or bot token provided.")
}

handles_successful_login_with_bot_token <- function() {
  auth <- mock()
  auth$get_me <- function() NULL
  auth$sign_in <- function(bot_token) list(id = 67890, first_name = "Bot", last_name = "Account")

  result <- auth$start(bot_token = "12345:abcdef")

  expect_equal(result$id, 67890)
  expect_equal(result$first_name, "Bot")
  expect_equal(result$last_name, "Account")
}

throws_error_when_code_callback_is_not_function <- function() {
  auth <- mock()
  expect_error(auth$start(phone = "1234567890", code_callback = "not_a_function"),
               "The code_callback parameter needs to be a callable function that returns the code you received by Telegram.")
}

handles_successful_logout <- function() {
  auth <- mock()
  auth$invoke <- function(request) TRUE
  private <- environment(auth)$private
  private$mb_entity_cache <- mock()
  private$mb_entity_cache$set_self_user <- function(...) NULL
  private$authorized <- TRUE
  auth$disconnect <- function() NULL
  auth$session <- mock()
  auth$session$delete <- function() NULL

  result <- auth$log_out()

  expect_true(result)
  expect_false(private$authorized)
  expect_null(auth$session)
}

returns_false_when_logout_fails <- function() {
  auth <- mock()
  auth$invoke <- function(request) stop("Logout failed")

  result <- auth$log_out()

  expect_false(result)
}
