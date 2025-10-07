# Ensure futures run synchronously for tests
old_plan <- future::plan()
future::plan(sequential)
withr::defer(future::plan(old_plan))

# Mock global helpers used by the code under test
events <- new.env()
events$get_handlers <- function(callback) NULL
events$Raw <- function() structure(list(), class = "RawEvent")

utils <- new.env()
utils$get_peer_id <- function(x) x$id

types <- new.env()
types$UpdatesTooLong <- function() "updates_too_long"

functions <- new.env()
functions$updates <- list(GetStateRequest = function() "get_state_req")

# Begin tests
test_that("get_running_loop returns POSIXct", {
  expect_s3_class(get_running_loop(), "POSIXct")
})

test_that("EventBuilderDict builds, caches and sets client for EventCommon", {
  # Define an R6 EventCommon to mimic behavior
  EventCommonClass <- R6Class("EventCommon",
                              public = list(
                                client = NULL,
                                original_update = NULL,
                                entities = NULL,
                                set_client = function(client) { self$client <- client }
                              )
  )

  # Fake client with a self_id
  fake_client <- new.env()
  fake_client$self_id <- 123

  ebd <- EventBuilderDict$new(fake_client, list(foo = "bar"), NULL)

  # Builder that returns an EventCommon instance
  builder_var <- list(
    build = function(update, others, self_id) {
      ev <- EventCommonClass$new()
      ev$original_update <- NULL
      ev$entities <- NULL
      ev
    }
  )

  # First get call should build and cache
  ev1 <- ebd$get(builder_var)
  expect_true(inherits(ev1, "EventCommon"))
  # cached
  ev2 <- ebd$get(builder_var)
  expect_identical(ev1, ev2)

  # Calling set_client should set client on the event
  ev1$set_client(fake_client)
  expect_identical(ev1$client, fake_client)
})

test_that("EventBuilderDict sets client for non-EventCommon objects and caches by name", {
  fake_client <- new.env()
  fake_client$self_id <- 999
  ebd <- EventBuilderDict$new(fake_client, list(a = 1), NULL)

  # Builder returning plain list (not EventCommon)
  builder_plain <- list(
    build = function(update, others, self_id) {
      lst <- list(x = 1)
      return(lst)
    }
  )

  ev_plain <- ebd$get(builder_plain)
  # For plain lists the code assigns client field if not NULL
  expect_true(!is.null(ev_plain$client))
  expect_identical(ev_plain$client, fake_client)

  # Cache key should be based on the symbol name used (builder_plain)
  expect_true("builder_plain" %in% names(ebd$cache))
})

test_that("preprocess_updates extends cache and populates entities in updates", {
  client <- new.env()
  # mb_entity_cache with extend method
  client$mb_entity_cache <- new.env()
  client$mb_entity_cache$extend_called <- FALSE
  client$mb_entity_cache$extend <- function(users, chats) {
    client$mb_entity_cache$extend_called <- TRUE
  }
  client$self_id <- 42

  um <- UpdateMethods$new(client)

  # prepare users and chats with id fields
  users <- list(list(id = 1, name = "u1"), list(id = 2, name = "u2"))
  chats <- list(list(id = 100, title = "c1"))

  updates <- list(list(msg = "hello"))

  processed <- um$preprocess_updates(updates, users, chats)

  # mb_entity_cache extend should be called
  expect_true(client$mb_entity_cache$extend_called)

  # Entities mapping should be present in each update
  expect_true(!is.null(processed[[1]]$entities))
  expect_true(all(c("1", "2", "100") %in% names(processed[[1]]$entities)))
  expect_identical(processed[[1]]$entities[["1"]]$name, "u1")
})

test_that("add_event_handler, on, remove_event_handler and list_event_handlers work", {
  # Setup client environment expected by UpdateMethods methods
  client <- new.env()
  client$event_builders <- list()

  um <- UpdateMethods$new(client)

  # Ensure events$get_handlers returns NULL so add_event_handler uses event or Raw
  events$get_handlers <- function(callback) NULL
  events$Raw <- function() structure(list(type = "raw"), class = "RawEvent")

  cb <- function(e) e

  # Add handler via add_event_handler (event = NULL => Raw)
  um$add_event_handler(cb, event = NULL)
  expect_length(client$event_builders, 1)
  expect_identical(client$event_builders[[1]][[2]], cb)

  # Add handler via on decorator
  decorator <- um$on(function() structure(list(type = "x"), class = "XEvent"))
  cb2 <- function(e) e
  decorator(cb2)
  expect_length(client$event_builders, 2)

  # List handlers
  lst <- um$list_event_handlers()
  expect_true(is.list(lst))
  expect_identical(lst[[1]]$callback, cb)

  # Remove a handler
  removed <- um$remove_event_handler(cb)
  expect_equal(removed, 1)
  expect_length(client$event_builders, 1)
})

test_that("catch_up schedules UpdatesTooLong via updates_queue", {
  client <- new.env()
  client$updates_queue <- new.env()
  client$updates_queue$put_called <- FALSE
  client$updates_queue$put <- function(x) {
    client$updates_queue$put_called <- TRUE
    assign("last_put", x, envir = client$updates_queue)
    invisible(NULL)
  }

  um <- UpdateMethods$new(client)

  fut <- um$catch_up()
  # Wait for future to complete (sequential plan ensures immediate)
  future::value(fut)
  expect_true(client$updates_queue$put_called)
  expect_identical(client$updates_queue$last_put, types$UpdatesTooLong())
})

test_that("set_receive_updates sets no_updates when FALSE", {
  client <- new.env()
  client$no_updates <- NULL
  um <- UpdateMethods$new(client)

  fut <- um$set_receive_updates(FALSE)
  future::value(fut)
  expect_true(client$no_updates)
})
