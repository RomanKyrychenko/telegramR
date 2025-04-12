test_that("encodes packet with random padding correctly", {
  codec <- RandomizedIntermediatePacketCodec$new()
  data <- raw(10)
  result <- codec$encode_packet(data)
  length_prefix <- writeBin(as.integer(length(result) - 4), raw(), size = 4, endian = "little")
  expect_equal(result[1:4], length_prefix)
  expect_true(length(result) %% 4 == 0)
})

test_that("reads packet with random padding successfully", {
  codec <- RandomizedIntermediatePacketCodec$new()
  padded_data <- c(raw(10), as.raw(c(0x01, 0x02)))
  reader <- mock(
    readexactly = function(n) {
      if (n == 4) writeBin(as.integer(length(padded_data)), raw(), size = 4, endian = "little")
      else padded_data
    }
  )
  result <- value(codec$read_packet(reader))
  expect_equal(length(result), 10)
})

test_that("throws error when encoded packet length exceeds maximum allowed", {
  codec <- RandomizedIntermediatePacketCodec$new()
  data <- raw(2^31)
  expect_error(codec$encode_packet(data), "packet length exceeds maximum allowed")
})

test_that("throws error when reader fails to provide length prefix", {
  codec <- RandomizedIntermediatePacketCodec$new()
  reader <- mock(
    readexactly = function(n) stop("ReadError: failed to read length prefix")
  )
  expect_error(value(codec$read_packet(reader)), "ReadError: failed to read length prefix")
})

test_that("throws error when reader fails to provide full packet data", {
  codec <- RandomizedIntermediatePacketCodec$new()
  reader <- mock(
    readexactly = function(n) {
      if (n == 4) writeBin(as.integer(20), raw(), size = 4, endian = "little")
      else stop("ReadError: failed to read full packet data")
    }
  )
  expect_error(value(codec$read_packet(reader)), "ReadError: failed to read full packet data")
})
