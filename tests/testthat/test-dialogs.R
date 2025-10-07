test_that(".MAX_CHUNK_SIZE is defined and correct", {
  expect_true(exists(".MAX_CHUNK_SIZE", envir = .GlobalEnv) || exists(".MAX_CHUNK_SIZE"))
  expect_equal(.MAX_CHUNK_SIZE, 100)
})

test_that("dialog_message_key returns channel_id for PeerChannel and message_id", {
  peer_channel <- structure(list(channel_id = 12345), class = "PeerChannel")
  res <- dialog_message_key(peer_channel, 7)
  expect_equal(res$channel_id, 12345)
  expect_equal(res$message_id, 7)
})

test_that("dialog_message_key returns NULL channel_id for non-channel peers", {
  peer_user <- structure(list(id = 1), class = "PeerUser")
  res2 <- dialog_message_key(peer_user, 42)
  expect_null(res2$channel_id)
  expect_equal(res2$message_id, 42)
})

test_that("DialogMethods.iter_dialogs maps archived to folder correctly", {
  # Backup original DialogsIter
  old_DialogsIter <- if (exists("DialogsIter", envir = .GlobalEnv)) get("DialogsIter", envir = .GlobalEnv) else NULL

  # Mock DialogsIter with a simple object exposing $new
  DialogsIter <- list(
    new = function(client, limit, offset_date = NULL, offset_id = 0,
                   offset_peer = NULL, ignore_pinned = FALSE,
                   ignore_migrated = FALSE, folder = NULL) {
      list(client = client, limit = limit, folder = folder,
           offset_date = offset_date, offset_id = offset_id,
           offset_peer = offset_peer, ignore_pinned = ignore_pinned,
           ignore_migrated = ignore_migrated)
    }
  )
  assign("DialogsIter", DialogsIter, envir = .GlobalEnv)

  dm <- DialogMethods$new()
  # Set the expected private$self that methods reference
  dm$.__enclos_env__$private$self <- "DUMMY_CLIENT"

  out_true <- dm$iter_dialogs(archived = TRUE)
  expect_equal(out_true$folder, 1)

  out_false <- dm$iter_dialogs(archived = FALSE)
  expect_equal(out_false$folder, 0)

  out_null <- dm$iter_dialogs()
  expect_null(out_null$folder)

  # Restore original DialogsIter
  if (!is.null(old_DialogsIter)) {
    assign("DialogsIter", old_DialogsIter, envir = .GlobalEnv)
  } else {
    rm("DialogsIter", envir = .GlobalEnv)
  }
})
