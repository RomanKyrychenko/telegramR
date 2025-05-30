test_that("encodes packet with length less than 127 correctly", {
  codec <- AbridgedPacketCodec$new()
  data <- raw(8)
  result <- codec$encode_packet(data)
  expected <- c(as.raw(2), data)
  expect_equal(result, expected)
})

test_that("encodes packet with length greater than or equal to 127 correctly", {
  codec <- AbridgedPacketCodec$new()
  data <- raw(512)
  result <- codec$encode_packet(data)
  expected <- c(as.raw(0x7f), as.raw(0x00), as.raw(0x02), as.raw(0x00), data)
  expect_equal(result, expected)
})

test_that("reads packet with length less than 127 successfully", {
  codec <- AbridgedPacketCodec$new()
  reader <- mock(
    readexactly = function(n) if (n == 1) as.raw(2) else raw(8)
  )
  result <- value(codec$read_packet(reader))
  expect_equal(length(result), 8)
})

test_that("reads packet with length greater than or equal to 127 successfully", {
  codec <- AbridgedPacketCodec$new()
  reader <- mock(
    readexactly = function(n) {
      if (n == 1) as.raw(0x7f)
      else if (n == 3) as.raw(c(0x00, 0x02, 0x00))
      else raw(512)
    }
  )
  result <- value(codec$read_packet(reader))
  expect_equal(length(result), 512)
})

test_that("throws error when reader fails to provide sufficient bytes", {
  codec <- AbridgedPacketCodec$new()
  reader <- mock(
    readexactly = function(n) stop("ReadError: insufficient bytes")
  )
  expect_error(value(codec$read_packet(reader)), "ReadError: insufficient bytes")
})
