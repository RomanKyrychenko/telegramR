test_that(".onLoad sets default options when missing", {
  old <- options()
  on.exit(options(old), add = TRUE)

  options(
    telegramR.debug_parse = NULL,
    telegramR.debug_pump = NULL,
    telegramR.debug_process = NULL,
    telegramR.auth_status_message = NULL
  )

  telegramR:::.onLoad(NULL, "telegramR")

  expect_identical(getOption("telegramR.debug_parse"), FALSE)
  expect_identical(getOption("telegramR.debug_pump"), FALSE)
  expect_identical(getOption("telegramR.debug_process"), FALSE)
  expect_identical(getOption("telegramR.auth_status_message"), TRUE)
})

test_that("compat_promises value unwraps Future", {
  future::plan("sequential")
  f <- future::future(1, seed = FALSE)
  expect_equal(telegramR:::value(f), 1)
})

test_that("skip_if_no_integration skips when env is not set", {
  old <- Sys.getenv("TELEGRAMR_INTEGRATION", unset = "")
  on.exit(Sys.setenv(TELEGRAMR_INTEGRATION = old), add = TRUE)
  Sys.setenv(TELEGRAMR_INTEGRATION = "")
  testthat::expect_condition(telegramR:::skip_if_no_integration(), class = "skip")
})
