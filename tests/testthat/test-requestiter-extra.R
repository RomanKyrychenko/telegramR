test_that("RequestIter collects items and respects limit", {
  iter <- RequestIter$new(client = list(), limit = 2)
  iter$buffer <- list(1, 2, 3)
  iter$left <- 2
  iter$index <- 0

  expect_equal(iter$.next(), 1)
  expect_equal(iter$.next(), 2)
  expect_error(iter$.next(), "StopIteration")
})

test_that("RequestIter reset restores state", {
  iter <- RequestIter$new(client = list(), limit = 5)
  iter$buffer <- list(1)
  iter$left <- 0
  iter$index <- 1
  iter$reset()
  expect_null(iter$buffer)
  expect_equal(iter$left, 5)
  expect_equal(iter$index, 0)
})
