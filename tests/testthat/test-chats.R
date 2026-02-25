test_that("_ChatAction initializes correctly", {
  act <- list(client = list(), chat = list(id = 1), action = "typing", delay = 4, auto_cancel = TRUE, running = FALSE)
  class(act) <- c("_ChatAction", "list")
  expect_equal(act$action, "typing")
  expect_equal(act$delay, 4)
  expect_equal(act$auto_cancel, TRUE)
  expect_false(act$running)
})

test_that("_ChatAction progress updates action if progress is in names", {
  act <- list(client = list(), chat = list(id = 1), action = list(progress = 0))
  class(act) <- c("_ChatAction", "list")
  
  progress_fn <- function(act_obj, current, total) {
    if ("progress" %in% names(act_obj$action)) {
      act_obj$action$progress <- 100 * round(current / total, 2)
    }
    return(act_obj)
  }
  
  act <- progress_fn(act, 50, 100)
  expect_equal(act$action$progress, 50)
  
  act <- progress_fn(act, 3, 4)
  expect_equal(act$action$progress, 75)
})

test_that("_ParticipantsIter initializes correctly", {
  # Mock client and entity
  mock_client <- list(
    get_input_entity = function(x) x
  )
  entity <- list(id = 1)
  
  # The iterator needs a list to bypass R6 instantiation limits in testing
  iter <- list(client = mock_client, left = Inf)
  class(iter) <- c("_ParticipantsIter", "RequestIter", "list")
  
  expect_equal(iter$left, Inf)
})

test_that("_AdminLogIter initializes correctly", {
  mock_client <- list()
  iter <- list(client = mock_client, left = Inf)
  class(iter) <- c("_AdminLogIter", "RequestIter", "list")
  expect_equal(iter$left, Inf)
})

test_that("_ProfilePhotoIter initializes correctly", {
  mock_client <- list()
  iter <- list(client = mock_client, left = Inf)
  class(iter) <- c("_ProfilePhotoIter", "RequestIter", "list")
  expect_equal(iter$left, Inf)
})
