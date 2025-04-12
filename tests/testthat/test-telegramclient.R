creates_telegram_client_with_all_components <- function() {
  client <- mock()
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
}

throws_error_when_initialization_fails <- function() {
  client <- NULL

  expect_error(TelegramClient$new(client = client), "attempt to apply non-function")
}

throws_error_when_initialization_fails <- function() {
  client <- NULL

  expect_error(TelegramClient$new(client = client), "attempt to apply non-function")
}

creates_telegram_client_with_minimal_components <- function() {
  client <- mock()
  telegram_client <- TelegramClient$new(client = client)

  expect_true(inherits(telegram_client$auth, "AuthMethods"))
  expect_true(inherits(telegram_client$message, "MessageMethods"))
}