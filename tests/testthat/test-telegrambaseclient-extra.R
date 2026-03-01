test_that("TelegramBaseClient basic config helpers", {
  old <- options()
  on.exit(options(old), add = TRUE)
  options(telegramR.test_mode = TRUE, telegramR.skip_background = TRUE)

  client <- TelegramBaseClient$new(
    session = NULL,
    api_id = 1,
    api_hash = "hash",
    receive_updates = FALSE
  )

  client$set_proxy(list("socks5", "127.0.0.1", 9050))
  expect_true(is.list(client$get_proxy()))

  client$set_flood_sleep_threshold(10)
  expect_equal(client$get_flood_sleep_threshold(), 10)
  expect_true(nzchar(client$get_version()))
})

test_that("TelegramBaseClient connect/disconnect with fake sender", {
  old <- options()
  on.exit(options(old), add = TRUE)
  options(telegramR.test_mode = TRUE, telegramR.skip_background = TRUE)

  client <- TelegramBaseClient$new(
    session = NULL,
    api_id = 1,
    api_hash = "hash",
    receive_updates = FALSE
  )

  fake_sender <- list(
    is_connected = function() TRUE,
    connect = function(...) TRUE,
    set_auth_key_callback = function(cb) NULL,
    set_update_callback = function(cb) NULL,
    send = function(req) future::future(list(dc_options = list()), seed = FALSE),
    disconnect = function() TRUE
  )

  priv <- client$.__enclos_env__$private
  priv$sender <- fake_sender

  expect_silent(client$connect())
  expect_true(client$is_connected())
  expect_silent(future::value(client$disconnect()))
})
