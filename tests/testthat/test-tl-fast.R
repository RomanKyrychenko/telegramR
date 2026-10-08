# The compiled lite decoder (src/tl_decode.cpp) must return exactly what the
# R lite decoder returns. tl_random_objects.bin holds 400 random TL objects of
# different constructors (random flags, nesting and vectors), serialised by
# Telethon; see data-raw/benchmarks/make_fuzz_corpus.py.

read_records <- function(path) {
  raw <- readBin(path, "raw", file.size(path))
  recs <- list()
  p <- 1L
  while (p <= length(raw)) {
    n <- sum(as.integer(raw[p:(p + 3)]) * 256^(0:3))
    recs[[length(recs) + 1L]] <- raw[(p + 4):(p + 3 + n)]
    p <- p + 4 + n
  }
  recs
}

# R6 objects (from hand-written readers) are environments; compare by value.
normalize_tl <- function(x) {
  if (inherits(x, "R6")) {
    nms <- sort(setdiff(ls(x), ".__enclos_env__"))
    vals <- lapply(nms, function(n) {
      v <- x[[n]]
      if (is.function(v)) NULL else normalize_tl(v)
    })
    return(list(r6 = class(x), fields = stats::setNames(vals, nms)))
  }
  if (is.list(x)) {
    a <- attributes(x)
    x <- lapply(x, normalize_tl)
    attributes(x) <- a
  }
  x
}

decode_lite <- function(bytes, fast) {
  withr::local_options(telegramR.fast_decode = fast, telegramR.parse_warnings = FALSE)
  r <- BinaryReader$new(bytes)
  r$set_lite(TRUE)
  obj <- if (fast) r$tgread_object_lite() else r$tgread_object()
  list(obj = normalize_tl(obj), pos = as.numeric(r$tell_position()))
}

test_that("compiled decoder table covers the generated message types", {
  expect_false(is.null(.telegramR_tl_fast_ptr()))
  tbl <- .telegramR_tl_table
  expect_gt(length(tbl), 1000)
  for (cls in c("Message", "PeerChannel", "MessageMediaPhoto", "Document")) {
    key <- .telegramR_norm_ctor_id(get(cls)$public_fields$CONSTRUCTOR_ID)
    expect_false(is.null(tbl[[key]]), info = cls)
  }
})

test_that("compiled and R lite decoders agree on random TL objects", {
  skip_on_cran()
  recs <- read_records(test_path("fixtures", "tl_random_objects.bin"))
  expect_length(recs, 400)
  for (i in seq_along(recs)) {
    expect_identical(decode_lite(recs[[i]], TRUE), decode_lite(recs[[i]], FALSE), info = i)
  }
})

test_that("compiled and R lite decoders agree on truncated and corrupted input", {
  skip_on_cran()
  recs <- read_records(test_path("fixtures", "tl_random_objects.bin"))
  set.seed(42)
  for (i in seq_len(150)) {
    b <- recs[[i]]
    if (length(b) <= 8) next
    if (i %% 2) {
      b <- b[seq_len(sample.int(length(b) - 1L, 1L))]
    } else {
      k <- sample(5:length(b), min(3L, length(b) - 4L))
      b[k] <- as.raw(sample(0:255, length(k), replace = TRUE))
    }
    fast <- tryCatch(decode_lite(b, TRUE), error = function(e) "error")
    slow <- tryCatch(decode_lite(b, FALSE), error = function(e) "error")
    expect_identical(fast, slow, info = i)
  }
})

test_that("compiled decoder returns 64-bit longs identical to gmp", {
  values <- c("0", "1", "-1", "4294967295", "4294967296", "-4294967296",
              "9223372036854775807", "-9223372036854775808", "1234567890123456789")
  for (v in values) {
    # peerChannel#a2a5371e channel_id:long
    bytes <- c(as.raw(c(0x1e, 0x37, 0xa5, 0xa2)), packInt64(gmp::as.bigz(v)))
    out <- decode_lite(bytes, TRUE)$obj
    expect_identical(out$channel_id, gmp::as.bigz(v), info = v)
  }
})

test_that("the channel fixture decodes identically with and without the compiled decoder", {
  bytes <- readBin(test_path("fixtures", "channel_messages_10.bin"), "raw", 1e6)
  dec <- function(fast) {
    withr::local_options(telegramR.lite_messages = TRUE, telegramR.fast_decode = fast)
    BinaryReader$new(bytes)$tgread_object()$messages
  }
  expect_identical(dec(TRUE), dec(FALSE))
})

test_that("a corrupted vector count fails fast instead of allocating", {
  # A Vector constructor followed by a count of 2^31 - 1 and no elements: reading
  # it must error, not allocate ~16 GB.
  huge <- c(as.raw(c(0x15, 0xc4, 0xb5, 0x1c)), as.raw(c(0xff, 0xff, 0xff, 0x7f)))
  r <- BinaryReader$new(huge)
  expect_error(r$tgread_vector(), "Invalid vector length")
  expect_error(.telegramR_seq_count(BinaryReader$new(raw(8)), 3), "Invalid vector length")
  expect_identical(.telegramR_seq_count(BinaryReader$new(raw(12)), 3), 1:3)
  expect_identical(.telegramR_seq_count(list(), 2), 1:2)  # mock readers skip the check
})
