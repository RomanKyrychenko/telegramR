test_that("AccountMethods initializes", {
  acc <- AccountMethods$new(client = list())
  expect_true(is.list(acc$client))
})

test_that("TakeoutClient aenter/aexit and call work with fake client", {
  calls <- list()
  fake_client <- new.env(parent = emptyenv())
  fake_client$session <- list(takeout_id = NULL)
  fake_client$invoke <- function(req, ordered = FALSE) {
    calls[[length(calls) + 1L]] <<- req
    if (is.list(req) && !is.null(req$id)) return(req)
    TRUE
  }

  request <- list(id = 1)
  tc <- TakeoutClient$new(finalize = TRUE, client = fake_client, request = request)

  tc$aenter()
  expect_true(!is.null(fake_client$session$takeout_id))

  req <- new.env(parent = emptyenv())
  class(req) <- "TLRequest"
  req$resolve <- function(self, utils) NULL
  fake_client$invoke <- function(req, ordered = FALSE) {
    calls[[length(calls) + 1L]] <<- req
    TRUE
  }
  tc$call(req)

  tc$aexit(NULL, NULL, NULL)
  expect_true(is.null(fake_client$session$takeout_id))
})
