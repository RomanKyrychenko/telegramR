# Bulk-coverage sweep over the simpler request classes in functions_messages.R.
# Most generated R6 classes have lock_objects = TRUE with no field declarations,
# so $new() throws "cannot add bindings to a locked environment". We therefore
# call public_methods$bytes / public_methods$toDict directly with a hand-built
# `self`, which is the same pattern used in test-functions_messages-extra.R.

call_with_self <- function(fun, self_list) {
  fcopy <- fun
  newenv <- new.env(parent = environment(fun))
  environment(fcopy) <- newenv
  assign("self", self_list, envir = newenv)
  fcopy()
}

scalar_reader <- function(value) {
  r <- new.env(parent = emptyenv())
  r$readLong <- function() value
  r$readInt  <- function() value
  r
}

test_that("no-arg request classes expose stable wire format", {
  no_init <- c(
    "GetDefaultHistoryTTLRequest", "GetDialogFiltersRequest",
    "GetPaidReactionPrivacyRequest", "GetSplitRangesRequest",
    "GetSuggestedDialogFiltersRequest"
  )
  for (name in no_init) {
    cls <- get(name)
    req <- cls$new()
    expect_s3_class(req, name)
    b <- req$bytes()
    expect_true(is.raw(b))
    expect_length(b, 4)
    expect_equal(req$toDict()[["_"]], name)
    expect_s3_class(cls$fromReader(NULL), name)
  }
})

test_that("hash-only request classes (long) serialize and read back", {
  # Bytes are taken verbatim from each class's bytes() body so the test pins
  # the wire format regardless of the LE/BE conventions used in the generator.
  long_hash <- list(
    GetAllStickersRequest           = c(0xa8, 0xa1, 0xa0, 0xb8),
    GetAttachMenuBotsRequest        = c(0xcb, 0xc2, 0xfc, 0x16),
    GetDefaultTagReactionsRequest   = c(0xbd, 0xf9, 0x34, 0x28),
    GetEmojiStickersRequest         = c(0x8f, 0xa1, 0xfc, 0xfb),
    GetFavedStickersRequest         = c(0xa9, 0xaa, 0xf1, 0x04),
    GetFeaturedEmojiStickersRequest = c(0x36, 0x67, 0xcf, 0x0e),
    GetFeaturedStickersRequest      = c(0x14, 0x0b, 0x78, 0x64),
    GetMaskStickersRequest          = c(0xb8, 0x82, 0x0f, 0x64),
    GetQuickRepliesRequest          = c(0xa8, 0xf2, 0x83, 0xd4),
    GetSavedGifsRequest             = c(0x35, 0x96, 0xf0, 0x5c)
  )
  # Only classes with lock_objects = FALSE can round-trip through fromReader,
  # since fromReader hits Class$new(...) which fails on locked R6 envs.
  unlocked <- c("GetAllStickersRequest", "GetAttachMenuBotsRequest")
  for (name in names(long_hash)) {
    cls <- get(name)
    expected <- c(as.raw(long_hash[[name]]), pack("<q", 42))
    self_obj <- list(hash = 42)
    expect_equal(call_with_self(cls$public_methods$bytes, self_obj), expected,
                 info = paste("bytes mismatch for", name))
    d <- call_with_self(cls$public_methods$toDict, self_obj)
    expect_equal(d[["_"]], name)
    expect_equal(d[["hash"]], 42)

    if (name %in% unlocked) {
      rebuilt <- cls$fromReader(scalar_reader(7))
      expect_equal(rebuilt$hash, 7)
    }
  }
})

test_that("hash-only request classes (int) serialize and read back", {
  int_hash <- list(
    GetAvailableEffectsRequest        = c(0xde, 0xa2, 0x0a, 0x39),
    GetAvailableReactionsRequest      = c(0x18, 0xde, 0xa0, 0xac),
    GetEmojiGroupsRequest             = c(0x5b, 0xce, 0x88, 0x74),
    GetEmojiProfilePhotoGroupsRequest = c(0xf3, 0x48, 0xa5, 0x21),
    GetEmojiStatusGroupsRequest       = c(0xcd, 0x56, 0xcd, 0x2e),
    GetEmojiStickerGroupsRequest      = c(0xf5, 0x40, 0xd8, 0x1d)
  )
  for (name in names(int_hash)) {
    cls <- get(name)
    expected <- c(as.raw(int_hash[[name]]), pack("<i", 13L))
    self_obj <- list(hash = 13L)
    expect_equal(call_with_self(cls$public_methods$bytes, self_obj), expected,
                 info = paste("bytes mismatch for", name))
    expect_equal(call_with_self(cls$public_methods$toDict, self_obj)[["hash"]], 13L)
  }
})

test_that("single long-id request classes serialize and read back", {
  long_id <- list(
    list(name = "DeleteChatRequest",  cid = c(0x50, 0xee, 0xd0, 0x5b),
         arg = "chatId", dict = "chat_id"),
    list(name = "GetFullChatRequest", cid = c(0x34, 0x0b, 0xb0, 0xae),
         arg = "chatId", dict = "chat_id")
  )
  for (spec in long_id) {
    cls <- get(spec$name)
    self_obj <- setNames(list(123), spec$arg)
    expect_equal(
      call_with_self(cls$public_methods$bytes, self_obj),
      c(as.raw(spec$cid), pack("<q", 123)),
      info = paste("bytes mismatch for", spec$name)
    )
    expect_equal(call_with_self(cls$public_methods$toDict, self_obj)[[spec$dict]], 123)
  }
})

test_that("single int-id request classes serialize and read back", {
  int_id <- list(
    list(name = "DeleteQuickReplyShortcutRequest", cid = c(0x40, 0x47, 0xc0, 0x3c),
         arg = "shortcutId", dict = "shortcut_id"),
    list(name = "GetPinnedDialogsRequest",         cid = c(0xf2, 0x4d, 0xb9, 0xd6),
         arg = "folderId",   dict = "folder_id")
  )
  for (spec in int_id) {
    cls <- get(spec$name)
    self_obj <- setNames(list(5L), spec$arg)
    expect_equal(
      call_with_self(cls$public_methods$bytes, self_obj),
      c(as.raw(spec$cid), pack("<i", 5L)),
      info = paste("bytes mismatch for", spec$name)
    )
    expect_equal(call_with_self(cls$public_methods$toDict, self_obj)[[spec$dict]], 5L)
  }
})
