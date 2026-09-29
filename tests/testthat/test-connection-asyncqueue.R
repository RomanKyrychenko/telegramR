test_that("AsyncQueue put/get works for bounded and unbounded queues", {
  skip_on_cran()
  testthat::skip_if_not_installed("later")
  library(later)

  q <- AsyncQueue$new()
  value(q$put(1))
  expect_equal(value(q$get()), 1)

  q2 <- AsyncQueue$new(maxsize = 1)
  value(q2$put("a"))
  # enqueue second item; should wait until space
  p <- q2$put("b")
  expect_equal(value(q2$get()), "a")
  expect_true(isTRUE(value(p)))
  expect_equal(value(q2$get()), "b")
})
