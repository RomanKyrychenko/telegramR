library(testthat)

make_message <- function(id, date, text, views = 0, forwards = 0, replies = NULL,
                         reactions = NULL, media = NULL, fwd_from = NULL, edit_date = NULL) {
  list(
    id = id,
    date = date,
    message = text,
    views = views,
    forwards = forwards,
    replies = replies,
    reactions = reactions,
    media = media,
    fwd_from = fwd_from,
    edit_date = edit_date
  )
}

test_that("download_channel_messages returns compact schema", {
  ch <- structure(list(id = 1463721328, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = TRUE, restricted = FALSE, broadcast = TRUE), class = "Channel")

  reactions <- list(results = list(
    list(count = 2, reaction = list(emoticon = "❤"))
  ))
  media <- list(`_` = "MessageMediaPhoto")
  fwd <- list(from_id = list(channel_id = 123), from_name = "Orig")

  msgs <- list(
    make_message(10, 1700000000, "Hello", views = 5, forwards = 1, replies = list(replies = 2), reactions = reactions, media = media, fwd_from = fwd, edit_date = 1700000100),
    make_message(9, 1690000000, "World", views = 0, forwards = 0, replies = list(replies = 0), reactions = list(results = list()), media = NULL, fwd_from = NULL, edit_date = NULL)
  )

  client <- make_fake_client(msgs, ch)

  out <- download_channel_messages(client, "chan", limit = 2, show_progress = FALSE)

  expect_true(all(c(
    "message_id", "channel_id", "channel_username", "channel_title",
    "date", "text", "views", "forwards", "replies", "reactions_total",
    "reactions_json", "media_type", "is_forward", "forward_from_id",
    "forward_from_name", "reply_to_msg_id", "edit_date", "post_author"
  ) %in% names(out)))

  expect_equal(nrow(out), 2)
  expect_s3_class(out$date, "POSIXct")
  expect_equal(out$reactions_total[[1]], 2)
  expect_equal(out$media_type[[1]], "photo")
})

test_that("download_channel_messages respects date range", {
  ch <- structure(list(id = 1, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = FALSE, restricted = FALSE, broadcast = TRUE), class = "Channel")

  msgs <- list(
    make_message(3, as.numeric(as.POSIXct("2025-01-10", tz = "UTC")), "A"),
    make_message(2, as.numeric(as.POSIXct("2025-01-05", tz = "UTC")), "B"),
    make_message(1, as.numeric(as.POSIXct("2024-12-31", tz = "UTC")), "C")
  )

  client <- make_fake_client(msgs, ch)

  out <- download_channel_messages(
    client, "chan",
    start_date = "2025-01-01",
    end_date = "2025-01-31",
    limit = Inf,
    show_progress = FALSE
  )

  expect_equal(nrow(out), 2)
  expect_true(all(out$text %in% c("A", "B")))
})

test_that("estimate_channel_post_count uses last message id", {
  ch <- structure(list(id = 1, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = FALSE, restricted = FALSE, broadcast = TRUE), class = "Channel")
  msgs <- list(
    make_message(99, as.numeric(Sys.time()), "A"),
    make_message(98, as.numeric(Sys.time()) - 10, "B")
  )
  client <- make_fake_client(msgs, ch)

  est <- estimate_channel_post_count(client, "chan")
  expect_equal(est$last_message_id[[1]], 99)
})

test_that("download_channel_info returns about and subscribers", {
  ch <- structure(list(id = 42, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = TRUE, restricted = FALSE, broadcast = TRUE), class = "Channel")
  msgs <- list(make_message(5, as.numeric(Sys.time()), "A"))
  full_chat <- list(about = "Desc", participants_count = 321, linked_chat_id = 777)

  client <- make_fake_client(msgs, ch, full_chat = full_chat)

  info <- download_channel_info(client, "chan", include_raw = FALSE)
  expect_equal(info$description[[1]], "Desc")
  expect_equal(info$subscribers[[1]], 321)
  expect_equal(info$linked_chat_id[[1]], 777)
  expect_true(inherits(info$created_date[[1]], "POSIXct"))
  expect_true(inherits(info$download_date[[1]], "POSIXct"))
  expect_equal(info$last_message_id[[1]], 5)
})
