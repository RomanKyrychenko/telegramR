# Minimal global stubs used by the methods under test.
# They are assigned in the global environment so the R6 methods can find them.
assign("helpers", list(), envir = .GlobalEnv)
assign("functions", list(), envir = .GlobalEnv)
assign("errors", list(), envir = .GlobalEnv)

test_that("fmt_flood formats messages correctly", {
  req <- structure(list(), class = "MyRequest")
  s1 <- fmt_flood(5, req, early = FALSE, td = function(x, units) as.difftime(x, units = units))
  expect_true(grepl("^Sleeping for 5s \\(", s1))
  expect_true(grepl("on MyRequest flood wait$", s1))

  s2 <- fmt_flood(2, req, early = TRUE, td = function(x, units) as.difftime(x, units = units))
  expect_true(grepl("^Sleeping early for 2s", s2))
})

test_that("UserMethods initializes and returns self_id", {
  client <- list(
    mb_entity_cache = list(self_id = 42),
    flood_waited_requests = list(),
    no_updates = FALSE
  )
  um <- UserMethods$new(client)
  expect_identical(um$client, client)
  expect_equal(um$self_id(), 42)
})

test_that("get_peer_id numeric path delegates to utils$get_peer_id", {
  # Provide a utils stub that multiplies numeric ids by 10 to make behavior observable.
  assign("utils", list(
    get_peer_id = function(x, add_mark = TRUE) { x * 10 }
  ), envir = .GlobalEnv)

  client <- list(mb_entity_cache = list(self_id = NULL), flood_waited_requests = list(), no_updates = FALSE)
  um <- UserMethods$new(client)

  res <- future::value(um$get_peer_id(5))
  expect_equal(res, 50)
})

test_that("get_input_entity returns InputPeerSelf for 'me' string", {
  # utils$get_input_peer should error to force the code path that checks known strings.
  assign("utils", list(
    get_input_peer = function(x) stop("not an input peer"),
    get_peer_id = function(x, add_mark = FALSE) 1
  ), envir = .GlobalEnv)

  assign("types", list(
    InputPeerSelf = function() structure(list(), class = "InputPeerSelf")
  ), envir = .GlobalEnv)

  client <- list(
    mb_entity_cache = list(self_id = NULL, self_bot = NULL),
    flood_waited_requests = list(),
    no_updates = FALSE,
    session = list()
  )
  um <- UserMethods$new(client)
  res <- future::value(um$get_input_entity("me"))
  expect_true(inherits(res, "InputPeerSelf"))
})
