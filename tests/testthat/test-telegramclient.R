test_that("creates Telegram client with all components", {

  telegram_client <- TelegramClient$new(api_id = 1, api_hash="ss", session="ssd")

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


test_that("creates Telegram client with minimal components", {

  telegram_client <- TelegramClient$new(api_id = 1, api_hash="ss", session="ssd")

  expect_true(inherits(telegram_client$auth, "AuthMethods"))
  expect_true(inherits(telegram_client$message, "MessageMethods"))
})
