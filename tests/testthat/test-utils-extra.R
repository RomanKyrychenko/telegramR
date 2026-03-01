test_that("utils parse_phone handles numeric and formatted strings", {
  expect_equal(parse_phone(1234567890L), "1234567890")
  expect_equal(parse_phone("+1 (234) 567-890"), "1234567890")
  expect_null(parse_phone("invalid"))
})

test_that("utils parse_username handles usernames and joinchat links", {
  out <- parse_username("@UserName")
  expect_equal(out$username, "username")
  expect_false(out$is_join_chat)

  out2 <- parse_username("https://t.me/joinchat/abc123")
  expect_equal(out2$username, "abc123")
  expect_true(out2$is_join_chat)

  out3 <- parse_username("plainuser")
  expect_equal(out3$username, "plainuser")
  expect_false(out3$is_join_chat)
})

test_that("utils resolve_id and get_peer_id behave", {
  res <- resolve_id(-1000000000001)
  expect_equal(res[[1]], 1)
  expect_true(identical(res[[2]], PeerChannel))

  peer <- InputPeerChat$new(chat_id = 55)
  expect_equal(get_peer_id(peer, add_mark = FALSE), 55)
})

test_that("utils sanitize_parse_mode handles strings and functions", {
  md <- sanitize_parse_mode("markdown")
  expect_true(is.list(md) && is.function(md$parse))

  html <- sanitize_parse_mode("html")
  expect_true(is.list(html) && is.function(html$parse))

  fn <- function(x) x
  cm <- sanitize_parse_mode(fn)
  expect_true(inherits(cm, "CustomMode"))
  expect_error(cm$unparse("x", list()), "NotImplementedError")
})

test_that("utils file extension helpers work", {
  expect_equal(get_file_extension("a/b/c.txt"), "txt")
  doc <- structure(list(mime_type = "image/gif"), class = "Document")
  expect_true(is_gif(doc))
  doc2 <- structure(list(mime_type = "image/png"), class = "Document")
  expect_false(is_gif(doc2))
})

test_that("dialog_message_key includes channel id for PeerChannel", {
  peer <- PeerChannel$new(channel_id = 123)
  key <- dialog_message_key(peer, 10)
  expect_equal(key$channel_id, 123)
  expect_equal(key$message_id, 10)

  peer2 <- PeerUser$new(user_id = 1)
  key2 <- dialog_message_key(peer2, 7)
  expect_null(key2$channel_id)
})
