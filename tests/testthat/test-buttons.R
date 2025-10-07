btns <- ButtonMethods$new()

test_that("NULL input returns NULL", {
  expect_null(btns$build_reply_markup(NULL))
})

test_that("already-a-reply-markup is returned unchanged", {
  m <- list(dummy = TRUE)
  attr(m, "SUBCLASS_OF_ID") <- 0xe2e10ef2
  expect_identical(btns$build_reply_markup(m), m)
})

test_that("single keyboard button becomes ReplyKeyboardMarkup", {
  kb <- list(is_inline = FALSE)
  attr(kb, "SUBCLASS_OF_ID") <- 0xbad74a3
  res <- btns$build_reply_markup(kb)
  expect_equal(res[["_type"]], "ReplyKeyboardMarkup")
  expect_length(res$rows, 1)
  expect_equal(res$rows[[1]]$buttons[[1]]$is_inline, FALSE)
  expect_equal(attr(res$rows[[1]]$buttons[[1]], "SUBCLASS_OF_ID"), 0xbad74a3)
})

test_that("single inline button becomes ReplyInlineMarkup (empty rows if no keyboard buttons)", {
  inline <- list(is_inline = TRUE)
  attr(inline, "SUBCLASS_OF_ID") <- 123L
  res <- btns$build_reply_markup(inline)
  expect_equal(res[["_type"]], "ReplyInlineMarkup")
  expect_length(res$rows, 0)
})

test_that("mixing inline and normal buttons errors", {
  kb <- list(is_inline = FALSE); attr(kb, "SUBCLASS_OF_ID") <- 0xbad74a3
  inline <- list(is_inline = TRUE); attr(inline, "SUBCLASS_OF_ID") <- 123L
  expect_error(
    btns$build_reply_markup(list(list(kb), list(inline))),
    "You cannot mix inline with normal buttons"
  )
})

test_that("inline_only with normal button errors", {
  kb <- list(is_inline = FALSE); attr(kb, "SUBCLASS_OF_ID") <- 0xbad74a3
  expect_error(
    btns$build_reply_markup(kb, inline_only = TRUE),
    "You cannot use non-inline buttons here"
  )
})

test_that("CustomButton extracts flags and inner button", {
  inner <- list(is_inline = FALSE)
  attr(inner, "SUBCLASS_OF_ID") <- 0xbad74a3
  custom <- structure(
    list(button = inner, resize = TRUE, single_use = FALSE, selective = TRUE),
    class = "CustomButton"
  )
  res <- btns$build_reply_markup(list(custom))
  expect_equal(res[["_type"]], "ReplyKeyboardMarkup")
  expect_true(res$resize)
  expect_false(res$single_use)
  expect_true(res$selective)
  expect_equal(res$rows[[1]]$buttons[[1]]$is_inline, FALSE)
})

test_that("MessageButton unwraps to its inner button", {
  inline <- list(is_inline = TRUE); attr(inline, "SUBCLASS_OF_ID") <- 999L
  msgb <- structure(list(button = inline), class = "MessageButton")
  res <- btns$build_reply_markup(list(msgb))
  expect_equal(res[["_type"]], "ReplyInlineMarkup")
})
