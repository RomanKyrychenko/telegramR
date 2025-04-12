test_that("TelegramBaseClient initializes with valid parameters", {
  session <- "test_session"
  api_id <- 3611613
  api_hash <- "41d882999e5db5a653359a6b2ddb907f"

  client <- TelegramBaseClient$new(
    session = session,
    api_id = api_id,
    api_hash = api_hash#,
    #phone = "+380980018456"
  )

  print(client)

  expect_equal(client$get_version(), "1.0.0")
  expect_true(client$is_connected())
})

test_that("TelegramBaseClient throws error when API ID or hash is missing", {
  expect_error(
    TelegramBaseClient$new(session = "test_session", api_id = NULL, api_hash = "test_api_hash"),
    "Your API ID or Hash cannot be empty or NULL"
  )
  expect_error(
    TelegramBaseClient$new(session = "test_session", api_id = 12345, api_hash = NULL),
    "Your API ID or Hash cannot be empty or NULL"
  )
})

test_that("TelegramBaseClient connects to Telegram successfully", {
  session <- "test_session"
  api_id <- 12345
  api_hash <- "test_api_hash"

  client <- TelegramBaseClient$new(
    session = session,
    api_id = api_id,
    api_hash = api_hash
  )

  result <- value(client$connect())
  expect_true(result)
  expect_true(client$is_connected())
})

test_that("TelegramBaseClient disconnects from Telegram successfully", {
  session <- "test_session"
  api_id <- 12345
  api_hash <- "test_api_hash"

  client <- TelegramBaseClient$new(
    session = session,
    api_id = api_id,
    api_hash = api_hash
  )

  client$connect()
  result <- value(client$disconnect())
  expect_true(result)
  expect_false(client$is_connected())
})

test_that("TelegramBaseClient sets and gets proxy configuration", {
  session <- "test_session"
  api_id <- 12345
  api_hash <- "test_api_hash"
  proxy <- list(ip = "127.0.0.1", port = 8080)

  client <- TelegramBaseClient$new(
    session = session,
    api_id = api_id,
    api_hash = api_hash
  )

  client$set_proxy(proxy)
  expect_equal(client$get_proxy(), proxy)
})

test_that("TelegramBaseClient handles invalid disconnect call", {
  session <- "test_session"
  api_id <- 12345
  api_hash <- "test_api_hash"

  client <- TelegramBaseClient$new(
    session = session,
    api_id = api_id,
    api_hash = api_hash
  )

  expect_error(client$disconnect(), "TelegramClient instance cannot be reused after logging out")
})
