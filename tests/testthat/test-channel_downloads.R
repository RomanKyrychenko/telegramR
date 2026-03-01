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

test_that("download_channel_messages accepts numeric channel id", {
  ch <- structure(list(id = 1463721328, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = TRUE, restricted = FALSE, broadcast = TRUE), class = "Channel")
  msgs <- list(
    make_message(10, 1700000000, "Hello"),
    make_message(9, 1690000000, "World")
  )
  client <- make_fake_client(msgs, ch)

  out <- download_channel_messages(client, 1463721328, limit = 1, show_progress = FALSE)
  expect_equal(nrow(out), 1)
  expect_equal(out$message_id[[1]], 10)
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

test_that("download_channel_reactions returns reaction summary per message", {
  ch <- structure(list(id = 99, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = FALSE, restricted = FALSE, broadcast = TRUE), class = "Channel")
  reactions <- list(results = list(
    list(count = 3, reaction = list(emoticon = "👍")),
    list(count = 1, reaction = list(emoticon = "❤"))
  ))
  msgs <- list(
    make_message(1, 1700000000, "A", reactions = reactions),
    make_message(2, 1690000000, "B", reactions = list(results = list()))
  )
  client <- make_fake_client(msgs, ch)

  out <- download_channel_reactions(client, "chan", limit = 2, show_progress = FALSE)
  expect_true(all(c("message_id", "reactions_total", "reactions_json") %in% names(out)))
  expect_equal(out$reactions_total[[1]], 4)
})

test_that("download_channel_replies returns comments per root message", {
  ch <- structure(list(id = 99, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = FALSE, restricted = FALSE, broadcast = TRUE), class = "Channel")
  root_msgs <- list(
    make_message(10, 1700000000, "Root A"),
    make_message(9, 1690000000, "Root B")
  )
  reply_msg <- list(id = 100, date = 1700001000, message = "Reply", from_id = list(user_id = 1))
  replies_by_id <- list("10" = list(reply_msg), "9" = list())

  client <- make_fake_client(root_msgs, ch, replies_by_id = replies_by_id)
  out <- download_channel_replies(client, "chan", message_limit = 2, reply_limit = Inf, show_progress = FALSE)

  expect_true(all(c("root_message_id", "comment_message_id", "text") %in% names(out)))
  expect_equal(out$root_message_id[[1]], 10)
})

test_that("download_channel_members returns participant rows", {
  ch <- structure(list(id = 99, access_hash = 1, username = "chan", title = "Channel", date = as.numeric(Sys.time()), verified = FALSE, restricted = FALSE, broadcast = TRUE), class = "Channel")
  user <- structure(list(
    id = 1,
    username = "u1",
    first_name = "A",
    last_name = "B",
    bot = FALSE,
    deleted = FALSE,
    verified = FALSE,
    restricted = FALSE,
    scam = FALSE,
    fake = FALSE,
    status = list(`_` = "UserStatusOnline")
  ), class = "User")
  user$participant <- list(`_` = "ChannelParticipant", date = 1700000000, inviter_id = 2)

  client <- make_fake_client(list(), ch, participants = list(user))
  out <- download_channel_members(client, "chan", limit = 1, show_progress = FALSE)

  expect_true(all(c("user_id", "participant_type", "joined_date") %in% names(out)))
  expect_equal(out$user_id[[1]], 1)
  expect_equal(out$participant_type[[1]], "ChannelParticipant")
})
