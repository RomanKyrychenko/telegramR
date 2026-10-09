test_that("status messages respect telegramR.verbose", {
  withr::local_options(telegramR.verbose = TRUE)
  expect_message(.tg_success("Connected to Telegram"), "Connected to Telegram")
  expect_message(.tg_info("Connecting"), "Connecting")
  expect_message(.tg_warn("rate limit"), "rate limit")
  expect_silent(.tg_debug("hidden detail"))

  withr::local_options(telegramR.verbose = "debug")
  expect_message(.tg_debug("salt {1 + 1}"), "\\[debug\\] salt 2")

  withr::local_options(telegramR.verbose = FALSE)
  expect_silent(.tg_success("nothing"))
  expect_silent(.tg_warn("nothing"))
})

test_that("interpolated values are never parsed as cli markup", {
  withr::local_options(telegramR.verbose = TRUE)
  title <- "Odd {title} with {.strong braces}"
  expect_message(.tg_info("From {.strong {title}}"), "Odd \\{title\\} with \\{.strong braces\\}", fixed = FALSE)
})

test_that("number, plural and duration formatting", {
  expect_identical(.tg_num(1234567), "1,234,567")
  expect_identical(.tg_plural(1, "message"), "1 message")
  expect_identical(.tg_plural(2500, "message"), "2,500 messages")
  expect_identical(.tg_duration(4.24), "4.2s")
  expect_identical(.tg_duration(187), "3m 07s")
  expect_identical(.tg_duration(3900), "1h 05m")
  expect_identical(.tg_channel_label(list(username = "durov")), "@durov")
  expect_identical(.tg_channel_label(list(title = "News {1}")), "News {1}")
  expect_identical(.tg_date_range(0, 0), "1970-01-01")
  expect_null(.tg_date_range(Inf, -Inf))
})

test_that("progress bars are skipped when not interactive or not requested", {
  expect_null(.tg_progress_start(TRUE, 10, "messages"))
  expect_null(.tg_progress_start(FALSE, 10, "messages"))
  expect_silent(.tg_progress_update(NULL, 5))
  expect_silent(.tg_progress_done(NULL))
})
