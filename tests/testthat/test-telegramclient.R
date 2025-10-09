test_that("creates Telegram client with all components", {
  # use a simple dummy function instead of mockery::mock()
  client <- function(...) {}

  telegram_client <- TelegramClient$new(client = client)

  expect_true(inherits(telegram_client$account, "AccountMethods"))
  expect_true(inherits(telegram_client$auth, "AuthMethods"))
  expect_true(inherits(telegram_client$download, "DownloadMethods"))
  expect_true(inherits(telegram_client$dialog, "DialogMethods"))
  expect_true(inherits(telegram_client$chat, "ChatMethods"))
  expect_true(inherits(telegram_client$bot, "BotMethods"))
  expect_true(inherits(telegram_client$message, "MessageMethods"))
  expect_true(inherits(telegram_client$upload, "UploadMethods"))
  expect_true(inherits(telegram_client$button, "ButtonMethods"))
  expect_true(inherits(telegram_client$update, "UpdateMethods"))
  expect_true(inherits(telegram_client$parser, "MessageParseMethods"))
  expect_true(inherits(telegram_client$user, "UserMethods"))
})

test_that("throws error when initialization fails", {
  client <- NULL

  expect_error(TelegramClient$new(client = client), "attempt to apply non-function")
})

test_that("creates Telegram client with minimal components", {
  # use a simple dummy function instead of mockery::mock()
  client <- function(...) {}

  telegram_client <- TelegramClient$new(client = client)

  expect_true(inherits(telegram_client$auth, "AuthMethods"))
  expect_true(inherits(telegram_client$message, "MessageMethods"))
})
