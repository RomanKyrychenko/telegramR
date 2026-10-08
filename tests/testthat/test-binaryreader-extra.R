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

test_that("auth.authorization is decoded into AuthAuthorization", {
  user <- UserEmpty$new(id = 42)
  body <- c(
    writeBin(as.integer(0x2ea2c0d4), raw(), size = 4, endian = "little"),
    writeBin(3L, raw(), size = 4, endian = "little"), # flags.0 and flags.1
    writeBin(7L, raw(), size = 4, endian = "little"), # otherwise_relogin_days
    writeBin(2L, raw(), size = 4, endian = "little"), # tmp_sessions
    user$bytes()
  )
  obj <- expect_silent(BinaryReader$new(body)$tgread_object())
  expect_s3_class(obj, "AuthAuthorization")
  expect_true(obj$setup_password_required)
  expect_identical(obj$otherwise_relogin_days, 7L)
  expect_identical(obj$tmp_sessions, 2L)
  expect_s3_class(obj$user, "UserEmpty")
})
