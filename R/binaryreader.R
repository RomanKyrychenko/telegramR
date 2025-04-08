#' BinaryReader Class
#'
#' @description
#' A utility class to read binary data, inspired by Python's BinaryReader.
#'
#' @details
#' Provides methods to read various data types and handle stream positions.
#'
#' @export
BinaryReader <- R6::R6Class(
  "BinaryReader",
  public = list(

    #' @description
    #' Initializes the BinaryReader with the given binary data.
    #' @param data A raw vector representing the binary data to read.
    initialize = function(data) {
      private$stream <- rawConnection(data, "rb")
      private$.last <- NULL
    },

    #' @description
    #' Reads a single byte value.
    #' @return A single byte as an integer.
    read_byte = function() {
      return(self$read(1)[1])
    },

    #' @description
    #' Reads a 4-byte integer value.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return An integer value.
    read_int = function(signed = TRUE) {
      bytes <- self$read(4)
      return(self$bytes_to_int(bytes, signed))
    },

    #' @description
    #' Reads an 8-byte long integer value.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return A long integer value.
    read_long = function(signed = TRUE) {
      bytes <- self$read(8)
      return(self$bytes_to_int(bytes, signed))
    },

    #' @description
    #' Reads a 4-byte floating-point value.
    #' @return A numeric value.
    read_float = function() {
      bytes <- self$read(4)
      return(readBin(bytes, "double", size = 4, endian = "little"))
    },

    #' @description
    #' Reads an 8-byte floating-point value.
    #' @return A numeric value.
    read_double = function() {
      bytes <- self$read(8)
      return(readBin(bytes, "double", size = 8, endian = "little"))
    },

    #' @description
    #' Reads a specified number of bytes.
    #' @param length An integer specifying the number of bytes to read.
    #' @return A raw vector of the read bytes.
    read = function(length = -1) {
      result <- readBin(private$stream, "raw", n = length)
      if (length >= 0 && length(result) != length) {
        stop(sprintf(
          "No more data left to read (need %d, got %d); last read: %s",
          length, length(result), paste(private$.last, collapse = " ")
        ))
      }
      private$.last <- result
      return(result)
    },

    #' @description
    #' Gets the byte array representing the current buffer as a whole.
    #' @return A raw vector of the entire buffer.
    get_bytes = function() {
      seek(self$stream, 0)
      return(readBin(private$stream, "raw", n = file.info(summary(private$stream)$description)$size))
    },

    #' @description
    #' Closes the reader, freeing the raw connection.
    close = function() {
      close(private$stream)
    },

    #' @description
    #' Tells the current position in the stream.
    #' @return An integer representing the current position.
    tell_position = function() {
      return(seek(private$stream, origin = "current"))
    },

    #' @description
    #' Sets the current position in the stream.
    #' @param position An integer specifying the position to set.
    set_position = function(position) {
      seek(private$stream, position, origin = "start")
    },

    #' @description
    #' Seeks the stream position by a given offset.
    #' @param offset An integer specifying the offset to seek.
    seek = function(offset) {
      seek(private$stream, offset, origin = "current")
    },

    #' @description
    #' Converts a byte vector to an integer.
    #' @param bytes A raw vector representing the bytes.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return An integer value.
    bytes_to_int = function(bytes, signed = TRUE) {
      return(sum(as.integer(bytes) * 256^(seq_along(bytes) - 1)) * ifelse(signed, 1, 1))
    }
  ),
  private = list(
    stream = NULL,
    .last = NULL
  )
)
