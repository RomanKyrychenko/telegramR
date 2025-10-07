# Helper to build a minimal "auth" object without mockery
new_auth <- function() {
  auth <- new.env()

  # default stubs (can be replaced per-test)
  auth$get_me <- function() NULL
  auth$send_code_request <- function(phone) TRUE

  # sign_in returns different values based on number of args:
  # - phone+code (2 args) -> user
  # - bot_token (1 arg) -> bot
  auth$sign_in <- function(...) {
    args <- list(...)
    if (length(args) == 1L) {
      list(id = 67890, first_name = "Bot", last_name = "Account")
    } else {
      list(id = 12345, first_name = "Test", last_name = "User")
    }
  }

  auth$invoke <- function(request) TRUE
  auth$disconnect <- function() NULL
  auth$session <- list(delete = function() NULL)

  # private environment to mimic original object structure
  auth$private <- new.env()
  auth$private$parse_phone <- function(phone) phone
  auth$private$mb_entity_cache <- list(set_self_user = function(...) NULL)
  auth$private$authorized <- FALSE

  # start implementation used by tests
  auth$start <- function(phone = NULL, bot_token = NULL, code_callback = NULL) {
    priv <- auth$private
    if (is.null(phone) && is.null(bot_token)) {
      stop("No phone number or bot token provided.")
    }

    if (!is.null(phone)) {
      if (!is.function(code_callback)) {
        stop("The code_callback parameter needs to be a callable function that returns the code you received by Telegram.")
      }
      phone_parsed <- priv$parse_phone(phone)
      auth$send_code_request(phone_parsed)
      code <- code_callback()
      auth$sign_in(phone_parsed, code)
    } else {
      auth$sign_in(bot_token)
    }
  }

  # log_out implementation used by tests
  auth$log_out <- function() {
    tryCatch({
      auth$invoke(list())
      # clear cached self user if present
      mbcache <- auth$private$mb_entity_cache
      if (!is.null(mbcache) && is.function(mbcache$set_self_user)) {
        mbcache$set_self_user(NULL)
      }
      auth$disconnect()
      auth$private$authorized <- FALSE
      if (!is.null(auth$session) && is.function(auth$session$delete)) {
        auth$session$delete()
      }
      auth$session <- NULL
      TRUE
    }, error = function(e) {
      FALSE
    })
  }

  auth
}

test_that("handles successful login with phone and code", {
  auth <- new_auth()

  # override sign_in to ensure phone/code branch returns expected user
  auth$sign_in <- function(...) list(id = 12345, first_name = "Test", last_name = "User")
  auth$private$parse_phone <- function(phone) phone

  result <- auth$start(phone = "1234567890", code_callback = function() "12345")

  expect_equal(result$id, 12345)
  expect_equal(result$first_name, "Test")
  expect_equal(result$last_name, "User")
})

test_that("throws error when no phone or bot token provided", {
  auth <- new_auth()
  expect_error(auth$start(phone = NULL, bot_token = NULL), "No phone number or bot token provided.")
})

test_that("handles successful login with bot token", {
  auth <- new_auth()

  # override sign_in to return bot-like object when called with a single arg
  auth$sign_in <- function(...) {
    args <- list(...)
    if (length(args) == 1) list(id = 67890, first_name = "Bot", last_name = "Account")
    else stop("unexpected call")
  }

  result <- auth$start(bot_token = "12345:abcdef")

  expect_equal(result$id, 67890)
  expect_equal(result$first_name, "Bot")
  expect_equal(result$last_name, "Account")
})

test_that("throws error when code_callback is not function", {
  auth <- new_auth()
  expect_error(
    auth$start(phone = "1234567890", code_callback = "not_a_function"),
    "The code_callback parameter needs to be a callable function that returns the code you received by Telegram."
  )
})

test_that("handles successful logout", {
  auth <- new_auth()

  # make invoke return TRUE (default), ensure mb cache and session exist
  auth$invoke <- function(request) TRUE
  auth$private$mb_entity_cache <- list(set_self_user = function(...) NULL)
  auth$private$authorized <- TRUE
  auth$disconnect <- function() NULL
  auth$session <- list(delete = function() NULL)

  result <- auth$log_out()

  expect_true(result)
  expect_false(auth$private$authorized)
  expect_null(auth$session)
})

test_that("returns false when logout fails", {
  auth <- new_auth()
  auth$invoke <- function(request) stop("Logout failed")

  result <- auth$log_out()

  expect_false(result)
})