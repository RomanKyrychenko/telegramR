test_that("FileStream handles raw vectors correctly", {
  raw_data <- as.raw(1:10)
  fs <- FileStream$new(raw_data)
  expect_equal(fs$file_size, length(raw_data))
  expect_equal(fs$name, "unnamed")
  chunk <- fs$read(4)
  expect_true(is.raw(chunk))
  expect_equal(length(chunk), 4)
  expect_equal(chunk, raw_data[1:4])
})

test_that("FileStream handles file paths and explicit file_size", {
  tmp <- tempfile(fileext = ".bin")
  on.exit(unlink(tmp), add = TRUE)
  writeBin(as.raw(1:6), tmp)
  fs <- FileStream$new(tmp)
  expect_equal(fs$file_size, file.info(tmp)$size)
  expect_equal(fs$name, basename(tmp))
  chunk <- fs$read(10)
  expect_true(is.raw(chunk))
  expect_equal(length(chunk), 6)
  expect_equal(chunk, as.raw(1:6))

  fs2 <- FileStream$new(tmp, file_size = 12345)
  expect_equal(fs2$file_size, 12345)
})

test_that("file_to_media returns nulls for NULL input and external media for URLs", {
  um <- UploadMethods$new(NULL, NULL, NULL)

  res_null <- um$file_to_media(NULL)
  expect_true(is.list(res_null))
  expect_equal(res_null$file_handle, NULL)
  expect_equal(res_null$media, NULL)
  expect_equal(res_null$as_image, NULL)

  url <- "http://example.com/somefile.pdf"
  res_url <- um$file_to_media(url)
  expect_equal(res_url$file_handle, NULL)
  expect_true(is.list(res_url$media))
  expect_equal(res_url$media$type, "InputMediaDocumentExternal")
  expect_false(res_url$as_image)
})

test_that("get_appropriated_part_size returns expected KB values", {
  um <- UploadMethods$new(NULL, NULL, NULL)
  expect_equal(um$get_appropriated_part_size(104857600), 64)       # 100MB
  expect_equal(um$get_appropriated_part_size(200 * 1024^2), 128)  # 200MB
  expect_equal(um$get_appropriated_part_size(1073741824), 256)     # 1GB
})

test_that("resize_photo_if_needed returns original when not an image", {
  um <- UploadMethods$new(NULL, NULL, NULL)
  tmp <- tempfile(fileext = ".jpg")
  on.exit(unlink(tmp), add = TRUE)
  writeBin(as.raw(1:10), tmp)
  res <- um$resize_photo_if_needed(tmp, is_image = FALSE)
  expect_equal(res, tmp)

  # raw input, not an image flag -> returns raw unchanged
  raw_in <- as.raw(1:5)
  res_raw <- um$resize_photo_if_needed(raw_in, is_image = FALSE)
  expect_equal(res_raw, raw_in)
})

test_that("is_image detects file extensions correctly", {
  um <- UploadMethods$new(NULL, NULL, NULL)
  img <- tempfile(fileext = ".jpg")
  on.exit(unlink(img), add = TRUE)
  file.create(img)
  expect_true(um$is_image(img))

  non_img <- tempfile(fileext = ".txt")
  on.exit(unlink(non_img), add = TRUE)
  writeLines("hello", non_img)
  expect_false(um$is_image(non_img))
})
