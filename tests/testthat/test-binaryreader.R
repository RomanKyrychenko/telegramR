test_that("BinaryReader works as expected", {
  # Sample binary data
  binary_data <- as.raw(c(0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A))

  # Initialize BinaryReader
  reader <- BinaryReader$new(binary_data)

  # Test read_byte
  expect_equal(reader$read_byte(), 1L)

  # Test read_int
  reader$set_position(0) # Reset position
  expect_equal(reader$read_int(), 67305985L) # Little-endian interpretation of 0x01, 0x02, 0x03, 0x04

  # Test read_long
  reader$set_position(0) # Reset position
  expect_equal(reader$read_long(), 578437695752307201L) # Little-endian interpretation of 8 bytes

  # Test read_float
  reader$set_position(0) # Reset position
  expect_error(reader$read_float(), "size = 4 is not supported") # Adjust based on actual behavior

  # Test read_double
  reader$set_position(0) # Reset position
  expect_error(reader$read_double(), "size = 8 is not supported") # Adjust based on actual behavior

  # Test read
  reader$set_position(0) # Reset position
  expect_equal(reader$read(2), as.raw(c(0x01, 0x02)))

  # Test get_bytes
  expect_equal(reader$get_bytes(), binary_data)

  # Test tell_position
  expect_equal(reader$tell_position(), 2L)

  # Test set_position
  reader$set_position(4)
  expect_equal(reader$tell_position(), 4L)

  # Test seek
  reader$seek(2)
  expect_equal(reader$tell_position(), 6L)

  # Test close
  reader$close()
  expect_error(reader$read_byte(), "invalid connection")
})
