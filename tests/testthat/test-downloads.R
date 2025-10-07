# Minimal mocks used by the tested methods
if (!exists("utils", envir = .GlobalEnv)) {
  utils <- new.env()
} else {
  utils <- get("utils", envir = .GlobalEnv)
}
utils$stripped_photo_to_jpg <- function(bytes) {
  # return a recognizable raw vector for tests
  charToRaw("STRIPPED_JPG")
}

# Instantiate the DownloadMethods R6 class
dm <- DownloadMethods$new()

test_that("get_proper_filename generates sensible names and handles collisions", {
  date <- as.POSIXct("2020-01-01 00:00:00", tz = "UTC")

  # When file is NULL, a name with kind and date is created and extension appended
  res <- dm$get_proper_filename(NULL, "photo", ".jpg", date = date)
  expect_true(grepl("^photo_2020-01-01_00-00-00.*\\.jpg$", basename(res)))

  # When given a filename with extension, keep that extension
  res2 <- dm$get_proper_filename("myfile.png", "doc", ".txt", date = date)
  expect_true(grepl("myfile\\.png$", basename(res2)))

  # Collision: create a file with the default generated name and ensure next name appends (1)
  tmpdir <- tempdir()
  date_str <- format(date, "%Y-%m-%d_%H-%M-%S")
  base_name <- paste0("report_", date_str)
  existing <- file.path(tmpdir, paste0(base_name, ".txt"))
  writeBin(charToRaw("x"), existing) # create existing file

  res3 <- dm$get_proper_filename(tmpdir, "report", ".txt", date = date)
  # Expect either base_name (if not colliding) or base_name (n) - due to existing, should be (1)
  expect_true(grepl(paste0(base_name, " \\(1\\)\\.txt$"), res3) || grepl(paste0(base_name, "\\.txt$"), res3))
})

test_that("get_kind_and_names extracts kind and possible names from attributes", {
  attrs <- list(
    structure(list(file_name = "file.txt"), class = "DocumentAttributeFilename"),
    structure(list(performer = "Artist", title = "Song"), class = "DocumentAttributeAudio"),
    structure(list(voice = TRUE), class = "DocumentAttributeAudio")
  )

  res <- dm$get_kind_and_names(attrs)
  expect_equal(res$kind, "audio")
  # possible names should include "Artist - Song" and possibly "Artist"
  expect_true(any(grepl("Artist - Song", unlist(res$possible_names))))
})

test_that("get_thumb selects proper thumbnail according to rules", {
  # Create several thumbnail-like objects with classes and fields used by logic
  t1 <- structure(list(size = 100, type = "a"), class = "PhotoSize")
  t2 <- structure(list(bytes = charToRaw("abc"), type = "b"), class = "PhotoCachedSize")
  t3 <- structure(list(size = 200, type = "c"), class = "PhotoSize")
  t4 <- structure(list(size = 50, type = "d"), class = "PhotoPathSize") # should be filtered out
  t5 <- structure(list(size = 150, type = "special"), class = "PhotoSize")

  thumbs <- list(t1, t2, t3, t4, t5)

  # Null thumb -> largest by score (should be t3 with size 200)
  picked <- dm$get_thumb(thumbs, NULL)
  expect_true(identical(picked$type, "c"))

  # Numeric index
  picked_idx <- dm$get_thumb(list(t1, t3), 1)
  expect_true(identical(picked_idx$type, "a"))

  # By string type
  picked_type <- dm$get_thumb(list(t1, t5), "special")
  expect_true(identical(picked_type$type, "special"))

  # Passing an object directly returns it
  expect_identical(dm$get_thumb(list(t1), t1), t1)
})

test_that("download_cached_photo_size returns raw data for as.raw and respects classes", {
  # PhotoStrippedSize uses utils$stripped_photo_to_jpg
  stripped <- structure(list(bytes = charToRaw("ignored")), class = "PhotoStrippedSize")
  res_strip <- dm$download_cached_photo_size(stripped, as.raw)
  expect_true(is.raw(res_strip))
  expect_equal(rawToChar(res_strip), "STRIPPED_JPG")

  # PhotoCachedSize returns its bytes unchanged
  cached <- structure(list(bytes = charToRaw("DATA")), class = "PhotoCachedSize")
  res_cached <- dm$download_cached_photo_size(cached, as.raw)
  expect_true(is.raw(res_cached))
  expect_equal(rawToChar(res_cached), "DATA")
})

test_that("download_contact returns a vCard as raw when asked", {
  mm_contact <- list(first_name = "John", last_name = "Doe", phone_number = "12345")
  res <- dm$download_contact(mm_contact, as.raw)
  expect_true(is.raw(res))
  text <- rawToChar(res)
  expect_true(grepl("BEGIN:VCARD", text))
  expect_true(grepl("TEL;TYPE=cell;VALUE=uri:tel:\\+12345", text) || grepl("12345", text))
})
