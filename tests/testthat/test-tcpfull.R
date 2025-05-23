test_that("encodes packet with valid data correctly", {
  codec <- FullPacketCodec$new(mock())
  data <- raw(16)
  result <- codec$encode_packet(data)
  total_length <- as.integer(length(data) + 12L)
  header <- c(writeBin(total_length, raw(), size = 4, endian = "little"),
              writeBin(as.integer(0L), raw(), size = 4, endian = "little"))
  packet <- c(header, data)
  crc_value <- crc32(packet)
  crc_raw <- writeBin(as.integer(crc_value), raw(), size = 4, endian = "little")
  expected <- c(packet, crc_raw)
  expect_equal(result, expected)
})

test_that("throws error when encoding packet with invalid data", {
  codec <- FullPacketCodec$new(mock())
  expect_error(codec$encode_packet(NULL), "invalid 'length' argument")
})

test_that("reads packet with valid data successfully", {
  codec <- FullPacketCodec$new(mock())
  reader <- mock(
    readexactly = function(n) {
      if (n == 8L) {
        c(writeBin(as.integer(20L), raw(), size = 4, endian = "little"),
          writeBin(as.integer(0L), raw(), size = 4, endian = "little"))
      } else if (n == 12L) {
        body <- raw(8)
        crc_value <- crc32(c(writeBin(as.integer(20L), raw(), size = 4, endian = "little"),
                             writeBin(as.integer(0L), raw(), size = 4, endian = "little"),
                             body))
        c(body, writeBin(as.integer(crc_value), raw(), size = 4, endian = "little"))
      }
    }
  )
  result <- value(codec$read_packet(reader))
  expect_equal(length(result), 8)
})

test_that("throws error when packet length is less than 8", {
  codec <- FullPacketCodec$new(mock())
  reader <- mock(
    readexactly = function(n) {
      if (n == 8L) {
        c(writeBin(as.integer(4L), raw(), size = 4, endian = "little"),
          writeBin(as.integer(0L), raw(), size = 4, endian = "little"))
      }
    }
  )
  expect_error(value(codec$read_packet(reader)), "InvalidBufferError: packet length less than 8")
})

test_that("throws error when checksum is invalid", {
  codec <- FullPacketCodec$new(mock())
  reader <- mock(
    readexactly = function(n) {
      if (n == 8L) {
        c(writeBin(as.integer(20L), raw(), size = 4, endian = "little"),
          writeBin(as.integer(0L), raw(), size = 4, endian = "little"))
      } else if (n == 12L) {
        body <- raw(8)
        invalid_crc <- as.integer(12345L)
        c(body, writeBin(invalid_crc, raw(), size = 4, endian = "little"))
      }
    }
  )
  expect_error(value(codec$read_packet(reader)), "InvalidChecksumError")
})
