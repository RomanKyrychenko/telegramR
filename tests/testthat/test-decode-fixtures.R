# Decoding checks against a real layer-229 messages.channelMessages payload
# (10 channel posts with Cyrillic text, entities, reactions, replies and
# photos) encoded by Telethon. Expected values come from Telethon's own
# decoding; see data-raw/benchmarks/make_fixtures.py.

fixture_bytes <- function() {
  readBin(testthat::test_path("fixtures", "channel_messages_10.bin"), "raw", 1e6)
}
fixture_truth <- function() {
  jsonlite::fromJSON(testthat::test_path("fixtures", "channel_messages_10.json"), simplifyVector = FALSE)
}
decode_fixture <- function(lite = FALSE) {
  withr::local_options(telegramR.lite_messages = lite)
  BinaryReader$new(fixture_bytes())$tgread_object()
}
test_channel <- list(id = 1234567890, username = "testchan", title = "Test channel")

test_that("channelMessages fixture decodes to Telethon's values", {
  res <- decode_fixture()
  truth <- fixture_truth()
  expect_length(res$messages, length(truth))
  expect_length(res$users, 10)
  expect_false(isTRUE(res$incomplete))
  for (i in seq_along(truth)) {
    m <- res$messages[[i]]
    t <- truth[[i]]
    expect_s3_class(m, "Message")
    expect_equal(m$id, t$id)
    expect_identical(m$message, t$message)
    expect_equal(m$views, t$views)
    expect_equal(m$forwards, t$forwards)
    expect_equal(as.numeric(m$date), t$date)
    expect_equal(m$replies$replies, t$replies)
    total <- sum(vapply(m$reactions$results, function(x) as.numeric(x$count), numeric(1)))
    expect_equal(total, t$reactions)
    expect_equal(inherits(m$media, "MessageMediaPhoto"), isTRUE(t$has_photo))
  }
})

test_that("decoded strings are marked UTF-8 regardless of locale", {
  m <- decode_fixture()$messages[[1]]
  expect_identical(Encoding(m$message), "UTF-8")
  expect_match(m$message, "привіт|news|update|report|link")
})

test_that("decoded messages re-encode byte-for-byte", {
  res <- decode_fixture()
  bytes <- fixture_bytes()
  # Each message's encoding must appear verbatim in the original payload
  for (m in res$messages) {
    enc <- m$to_bytes()
    expect_true(length(grepRaw(enc, bytes, fixed = TRUE)) == 1)
  }
})

test_that("lite decoding yields plain lists with identical rows", {
  full <- decode_fixture(lite = FALSE)
  lite <- decode_fixture(lite = TRUE)
  expect_true(inherits(lite$messages[[1]], "telegramR_lite"))
  expect_false(inherits(lite$messages[[1]], "R6"))
  expect_s3_class(lite$messages[[1]], "Message")
  # users/chats stay full objects (they feed the entity cache)
  expect_true(inherits(lite$users[[1]], "R6"))

  rows <- function(msgs, f) dplyr::bind_rows(lapply(msgs, f))
  msg_row <- function(m) .telegramR_extract_message_row(m, test_channel)
  rx_row <- function(m) .telegramR_extract_reaction_row(m, test_channel)
  rep_row <- function(m) .telegramR_extract_reply_row(m, test_channel, 1)
  expect_identical(rows(lite$messages, msg_row), rows(full$messages, msg_row))
  expect_identical(rows(lite$messages, rx_row), rows(full$messages, rx_row))
  expect_identical(rows(lite$messages, rep_row), rows(full$messages, rep_row))
})

test_that("reaction rows keep reactions for R6 messages", {
  truth <- fixture_truth()
  full <- decode_fixture(lite = FALSE)
  row <- .telegramR_extract_reaction_row(full$messages[[1]], test_channel)
  expect_equal(row$reactions_total, truth[[1]]$reactions)
  expect_false(identical(row$reactions_json, "[]"))
})

test_that("an unknown constructor raises a classed parse warning", {
  bytes <- as.raw(c(0xef, 0xbe, 0xad, 0xde, 1, 2, 3, 4))
  expect_warning(
    out <- BinaryReader$new(bytes)$tgread_object(),
    class = "telegramR_parse_warning"
  )
  expect_true(.telegramR_is_unparsed(out))
  withr::local_options(telegramR.parse_warnings = FALSE)
  expect_no_warning(BinaryReader$new(bytes)$tgread_object())
})

test_that("a corrupted message marks the page incomplete", {
  bytes <- fixture_bytes()
  # Corrupt the constructor id of the 4th message
  starts <- grepRaw(as.raw(c(0xd3, 0xb9, 0x00, 0x76)), bytes, all = TRUE)
  skip_if(length(starts) < 4, "fixture layout changed")
  bytes[starts[4]:(starts[4] + 3)] <- as.raw(c(0xef, 0xbe, 0xad, 0xde))
  warns <- list()
  res <- withCallingHandlers(
    BinaryReader$new(bytes)$tgread_object(),
    telegramR_parse_warning = function(w) {
      warns[[length(warns) + 1L]] <<- w
      invokeRestart("muffleWarning")
    }
  )
  # one for the undecodable object, one summarising the truncated page
  expect_length(warns, 2)
  expect_match(conditionMessage(warns[[2]]), "decoded 3 of 10 messages")
  expect_true(res$incomplete)
  expect_length(res$messages, 3)
})

test_that("read_long decodes 64-bit edge values exactly", {
  enc <- function(v) {
    x <- gmp::as.bigz(v)
    if (x < 0) x <- x + gmp::as.bigz(2)^64
    h <- as.character(x, b = 16)
    h <- paste0(strrep("0", 16 - nchar(h)), h)
    rev(as.raw(strtoi(substring(h, seq(1, 15, 2), seq(2, 16, 2)), 16L)))
  }
  for (v in c("0", "1", "-1", "-42", "9223372036854775807", "-9223372036854775808", "1234567890123456789")) {
    expect_identical(as.character(BinaryReader$new(enc(v))$read_long()), v)
  }
  expect_identical(as.character(BinaryReader$new(enc("-1"))$read_long(signed = FALSE)), "18446744073709551615")
})

test_that("request $fromReader() works with a real BinaryReader", {
  req <- GetHistoryRequest$new(
    peer = InputPeerChannel$new(1234567890, 987654321), offsetId = 5L,
    offsetDate = NULL, addOffset = 0L, limit = 100L, maxId = 0L, minId = 0L, hash = 0
  )
  bytes <- req$bytes()
  reader <- BinaryReader$new(bytes)
  reader$read_int() # constructor id
  back <- GetHistoryRequest$fromReader(reader)
  expect_identical(back$bytes(), bytes)
})
