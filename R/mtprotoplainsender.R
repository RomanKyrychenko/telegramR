#' This module contains the class used to communicate with Telegram's servers
#' in plain text, when no authorization key has been created yet.
#' @description
#' MTProto Mobile Protocol plain sender  - (https://core.telegram.org/mtproto/description#unencrypted-messages)
#' @export
MTProtoPlainSender <- R6::R6Class("MTProtoPlainSender",
  public = list(

    #' @description Initializes the MTProto plain sender.
    #' @param connection the Connection to be used.
    initialize = function(connection) {
      private$state <- MTProtoState$new(auth_key = NULL, loggers = NULL )
      private$connection <- connection
    },

    #' @description Sends and receives the result for the given request.
    #' @param request The request to send.
    #' @return The response object.
    send = function(request) {
      promises::future_promise({
        body <- as.raw(request)
        msg_id <- private$state$get_new_msg_id()

        # Pack data: <qqi format in Python struct is 8 bytes + 8 bytes + 4 bytes
        header <- packInt64(0) # auth_key_id (0 for plain messages)
        header <- c(header, packInt64(msg_id))
        header <- c(header, packInt32(length(body)))

        private$connection$send(c(header, body))

        body <- private$connection$recv()
        if (length(body) < 8) {
          stop("InvalidBufferError: Buffer too small")
        }

        reader <- BinaryReader$new(body)
        auth_key_id <- reader$read_long()
        if (auth_key_id != 0) {
          stop("Bad auth_key_id")
        }

        msg_id <- reader$read_long()
        if (msg_id == 0) {
          stop("Bad msg_id")
        }
        # We should make sure that the read 'msg_id' is greater
        # than our own 'msg_id'. However, under some circumstances
        # (bad system clock/working behind proxies) this seems to not
        # be the case, which would cause endless assertion errors.

        length <- reader$read_int()
        if (length <= 0) {
          stop("Bad length")
        }
        # We could read length bytes and use those in a new reader to read
        # the next TLObject without including the padding, but since the
        # reader isn't used for anything else after this, it's unnecessary.
        return(reader$tgread_object())
      })
    }
  ),
  private = list(
    state = NULL,
    connection = NULL
  )
)

#' Pack a 64-bit integer into a raw vector (little-endian)
#' @param value The integer value to pack
#' @return A raw vector representation of the integer
#' @export
packInt64 <- function(value) {
  # R doesn't have a direct equivalent to struct.pack, so we implement manually
  result <- raw(8)
  for (i in 1:8) {
    result[i] <- as.raw(bigBits::bigAnd(bigBits::bigShiftR(value, 8 * (i - 1)), 0xFF))
  }
  return(result)
}

#' Pack a 32-bit integer into a raw vector (little-endian)
#' @param value The integer value to pack
#' @return A raw vector representation of the integer
#' @export
packInt32 <- function(value) {
  result <- raw(4)
  for (i in 1:4) {
    result[i] <- as.raw(bigBits::bigAnd(bigBits::bigShiftR(value, 8 * (i - 1)), 0xFF))
  }
  return(result)
}
