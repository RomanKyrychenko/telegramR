test_that("check_prime_and_good_check errors on bad g", {
  expect_error(check_prime_and_good_check(11, 9), "bad g")
})

test_that("PasswordKdf xor and modexp checks work", {
  kdf <- PasswordKdf$new()
  out <- kdf$xor(as.raw(c(0x0f, 0x00)), as.raw(c(0x0f, 0x0f)))
  expect_equal(out, as.raw(c(0x00, 0x0f)))

  # Small numbers fail size checks and should return FALSE
  expect_false(kdf$is_good_mod_exp_first(10, 23))
})
