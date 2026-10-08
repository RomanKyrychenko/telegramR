test_that("binaryreader ctor normalization works for negative and NA", {
  expect_equal(.telegramR_norm_ctor_id(-1), sprintf("%.0f", 2^32 - 1))
  expect_true(is.na(.telegramR_norm_ctor_id(NA)))
})

test_that("binaryreader ctor map is built once and resolves classes", {
  withr::local_options(telegramR.debug_parse = FALSE)
  map <- .telegramR_get_ctor_map()
  expect_identical(.telegramR_get_ctor_map(), map)
  expect_identical(map[[.telegramR_norm_ctor_id(0xa2a5371e)]]$classname[1], "PeerChannel")
  expect_null(map[[.telegramR_norm_ctor_id(0xdeadbeef)]])
})
