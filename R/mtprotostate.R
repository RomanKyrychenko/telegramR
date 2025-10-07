#' MTProtoState Class
#'
#' This class manages the state needed by MTProtoSender for encrypting and
#' decrypting incoming/outgoing messages and generating message IDs.
#'
#' @details
#' MTProtoState handles authentication key management, message sequencing,
#' and encryption/decryption required by Telegram's MTProto protocol.
#' It is not concerned with storing information to disk, as users may create
#' multiple senders for different data centers or CDNs.
#'
#' @importFrom digest digest
#' @importFrom stringr str_sub

# Constants
MAX_RECENT_MSG_IDS <- 500
MSG_TOO_NEW_DELTA <- 30
MSG_TOO_OLD_DELTA <- 300
MAX_CONSECUTIVE_IGNORED <- 10

#' Opaque Request Class
#'
#' Wraps a serialized request into a type that can be serialized again.
#'
#' @param data Raw vector containing the serialized request
#' @export
OpaqueRequest <- R6::R6Class("OpaqueRequest",
  public = list(
    #' @field data Raw vector of serialized request data
    data = NULL,

    #' @description Initialize with serialized request data
    #' @param data Raw vector of serialized request data
    initialize = function(data) {
      self$data <- data
    },

    #' @description Convert to bytes representation
    #' @return Raw vector of the wrapped data
    to_bytes = function() {
      return(self$data)
    }
  )
)

#' Unpack a 64-bit integer from a raw vector (little-endian)
#' @param raw_vector A raw vector containing the 64-bit integer
#' @return The unpacked 64-bit integer as a numeric value
unpackInt64 <- function(raw_vector) {
  if (length(raw_vector) != 8) {
    stop("Invalid input: raw_vector must be exactly 8 bytes long")
  }

  # Convert the raw vector to a numeric value (little-endian)
  value <- 0
  for (i in 1:8) {
    value <- value + as.numeric(raw_vector[i]) * (256^(i - 1))
  }

  return(value)
}

#' MTProto protocol state management
#'
#' @description
#' Manages the state needed for MTProto encryption, including message IDs,
#' sequence numbers, and server salt.
#' @export
MTProtoState <- R6::R6Class("MTProtoState",
  public = list(

    #' @field auth_key Authentication key for encryption
    auth_key = NULL,

    #' @field time_offset Time offset between local and server time
    time_offset = 0,

    #' @field salt Current server salt
    salt = 0,

    #' @field id Current session ID
    id = NULL,

    #' @description Initialize a new MTProto state
    #' @param auth_key Authentication key for encryption
    #' @param loggers Logger objects
    initialize = function(auth_key, loggers) {
      self$auth_key <- auth_key
      private$log <- loggers[["MTProtoState"]]  # Equivalent to __name__ in Python
      self$time_offset <- 0
      self$salt <- 0

      private$sequence <- NULL
      private$last_msg_id <- NULL
      private$recent_remote_ids <- deque(maxlen = MAX_RECENT_MSG_IDS)
      private$highest_remote_id <- 0
      private$ignore_count <- 0
      self$reset()
    },

    #' @description Reset the state
    reset = function() {
      # Session IDs can be random on every connection
      self$id <- as.numeric(packRandomLong())
      private$sequence <- 0
      private$last_msg_id <- 0
      private$recent_remote_ids$clear()
      private$highest_remote_id <- 0
      private$ignore_count <- 0
    },

    #' @description Update message ID when time offset changes
    #' @param message Message object to update
    update_message_id = function(message) {
      message$msg_id <- self$get_new_msg_id()
    },

    #' @description Write a message containing given data into buffer
    #' @param buffer Buffer to write to
    #' @param data Data to include in the message
    #' @param content_related Boolean indicating if message is content-related
    #' @param after_id Optional message ID to invoke after
    #' @return Message ID of the written message
    write_data_as_message = function(buffer, data, content_related, after_id = NULL) {
      msg_id <- self$get_new_msg_id()
      seq_no <- private$get_seq_no(content_related)

      if (is.null(after_id)) {
        body <- GzipPacked$gzip_if_smaller(content_related, data)
      } else {
        # Wrap the request in an InvokeAfterMsgRequest
        wrapped <- InvokeAfterMsgRequest$new(after_id, OpaqueRequest$new(data))
        body <- GzipPacked$gzip_if_smaller(content_related, wrapped$to_bytes())
      }

      # Write message header: msg_id (8 bytes), seq_no (4 bytes), length (4 bytes)
      buffer$write(packInt64(msg_id))
      buffer$write(packInt32(seq_no))
      buffer$write(packInt32(length(body)))
      buffer$write(body)
      return(msg_id)
    },

    #' @description Encrypt message data using current authorization key
    #' @param data Data to encrypt
    #' @return Encrypted message data
    encrypt_message_data = function(data) {
      # Combine salt, session ID and data
      data <- c(packInt64(self$salt), packInt64(self$id), data)
      padding_length <- -(length(data) + 12) %% 16 + 12
      padding <- packRandomBytes(padding_length)

      # Calculate message key following MTProto 2.0 guidelines
      msg_key_large <- digest::digest(
        c(self$auth_key$key[89:(88 + 32)], data, padding),
        algo = "sha256",
        serialize = FALSE,
        raw = TRUE
      )

      # Extract substring of message key (bytes 9-24)
      msg_key <- msg_key_large[9:24]

      # Calculate AES key and initialization vector
      key_iv <- private$calc_key(self$auth_key$key, msg_key, client = TRUE)
      aes_key <- key_iv$aes_key
      aes_iv <- key_iv$aes_iv

      # Return encrypted data with key ID and message key prepended
      key_id <- packInt64(self$auth_key$key_id)
      return(c(key_id, msg_key, AES$encrypt_ige(c(data, padding), aes_key, aes_iv)))
    },

    #' @description Decrypt message data from server
    #' @param body Encrypted message body
    #' @return Decrypted message or NULL if message should be ignored
    decrypt_message_data = function(body) {
      # Get current time as early as possible
      now <- as.numeric(Sys.time()) + self$time_offset

      if (length(body) < 8) {
        stop("InvalidBufferError: Buffer too small")
      }

      # Verify auth key
      key_id <- unpackInt64(body[1:8])
      if (key_id != self$auth_key$key_id) {
        stop("SecurityError: Server replied with an invalid auth key")
      }

      # Extract message key and decrypt
      msg_key <- body[9:24]
      key_iv <- private$calc_key(self$auth_key$key, msg_key, client = FALSE)
      aes_key <- key_iv$aes_key
      aes_iv <- key_iv$aes_iv
      body <- AES$decrypt_ige(body[25:length(body)], aes_key, aes_iv)

      # Verify message integrity
      our_key <- digest::digest(
        c(self$auth_key$key[97:(96 + 32)], body),
        algo = "sha256",
        serialize = FALSE,
        raw = TRUE
      )[9:24]

      if (!identical(msg_key, our_key)) {
        stop("SecurityError: Received msg_key doesn't match with expected one")
      }

      reader <- BinaryReader$new(body)
      reader$read_long()  # remote_salt

      # Verify session ID
      if (reader$read_long() != self$id) {
        stop("SecurityError: Server replied with a wrong session ID")
      }

      remote_msg_id <- reader$read_long()

      # Verify message ID is odd (server messages have odd IDs)
      if (remote_msg_id %% 2 != 1) {
        stop("SecurityError: Server sent an even msg_id")
      }

      # Check for duplicate message
      if (remote_msg_id <= private$highest_remote_id &&
          private$recent_remote_ids$contains(remote_msg_id)) {
        private$log$warning('Server resent the older message %d, ignoring', remote_msg_id)
        private$count_ignored()
        return(NULL)
      }

      remote_sequence <- reader$read_int()
      reader$read_int()  # msg_len for inner object, padding ignored

      # Read the TL object
      obj <- reader$tgread_object()

      # Skip time checks for certain message types
      if (!obj$CONSTRUCTOR_ID %in% c(BadServerSalt$CONSTRUCTOR_ID, BadMsgNotification$CONSTRUCTOR_ID)) {
        remote_msg_time <- bitwShiftR(remote_msg_id, 32)
        time_delta <- now - remote_msg_time

        # Check if message is too old
        if (time_delta > MSG_TOO_OLD_DELTA) {
          private$log$warning('Server sent a very old message with ID %d, ignoring', remote_msg_id)
          private$count_ignored()
          return(NULL)
        }

        # Check if message is too new (from the future)
        if (-time_delta > MSG_TOO_NEW_DELTA) {
          private$log$warning('Server sent a very new message with ID %d, ignoring', remote_msg_id)
          private$count_ignored()
          return(NULL)
        }
      }

      # Accept the message
      private$recent_remote_ids$append(remote_msg_id)
      private$highest_remote_id <- remote_msg_id
      private$ignore_count <- 0

      return(TLMessage$new(remote_msg_id, remote_sequence, obj))
    },

    #' @description Generate a new unique message ID
    #' @return New message ID
    get_new_msg_id = function() {
      now <- as.numeric(Sys.time()) + self$time_offset
      nanoseconds <- as.integer((now - as.integer(now)) * 1e+9)
      new_msg_id <- bitwOr(bitwShiftL(as.integer(now), 32), bitwShiftL(nanoseconds, 2))

      if (private$last_msg_id >= new_msg_id) {
        new_msg_id <- private$last_msg_id + 4
      }

      private$last_msg_id <- new_msg_id
      return(new_msg_id)
    },

    #' @description Update time offset based on a correct message ID
    #' @param correct_msg_id Known valid message ID
    #' @return Updated time offset
    update_time_offset = function(correct_msg_id) {
      bad <- self$get_new_msg_id()
      old <- self$time_offset

      now <- as.integer(Sys.time())
      correct <- bitwShiftR(correct_msg_id, 32)
      self$time_offset <- correct - now

      if (self$time_offset != old) {
        private$last_msg_id <- 0
        private$log$debug(
          'Updated time offset (old offset %d, bad %d, good %d, new %d)',
          old, bad, correct_msg_id, self$time_offset
        )
      }

      return(self$time_offset)
    }
  ),

  private = list(
    log = NULL,
    sequence = NULL,
    last_msg_id = NULL,
    recent_remote_ids = NULL,
    highest_remote_id = NULL,
    ignore_count = NULL,

    #' Calculate encryption key and initialization vector
    #' @param auth_key Authentication key
    #' @param msg_key Message key
    #' @param client Boolean indicating if this is for client or server
    #' @return List containing aes_key and aes_iv
    calc_key = function(auth_key, msg_key, client) {
      x <- 0
      if (!client) x <- 8

      sha256a <- digest::digest(
        c(msg_key, auth_key[(x + 1):(x + 36)]),
        algo = "sha256",
        serialize = FALSE,
        raw = TRUE
      )

      sha256b <- digest::digest(
        c(auth_key[(x + 41):(x + 76)], msg_key),
        algo = "sha256",
        serialize = FALSE,
        raw = TRUE
      )

      aes_key <- c(sha256a[1:8], sha256b[9:24], sha256a[25:32])
      aes_iv <- c(sha256b[1:8], sha256a[9:24], sha256b[25:32])

      return(list(aes_key = aes_key, aes_iv = aes_iv))
    },

    #' Generate next sequence number
    #' @param content_related Boolean indicating if message is content-related
    #' @return Next sequence number
    get_seq_no = function(content_related) {
      if (content_related) {
        result <- private$sequence * 2 + 1
        private$sequence <- private$sequence + 1
        return(result)
      } else {
        return(private$sequence * 2)
      }
    },

    #' Track ignored messages and throw error if too many consecutive
    count_ignored = function() {
      private$ignore_count <- private$ignore_count + 1
      if (private$ignore_count >= MAX_CONSECUTIVE_IGNORED) {
        stop("SecurityError: Too many messages had to be ignored consecutively")
      }
    }
  )
)

#' Double-Ended Queue Implementation
#'
#' @description Simple implementation of a deque with max length
#' @param maxlen Maximum length of the deque
#' @export
deque <- function(maxlen) {
  R6::R6Class("Deque",
    public = list(
      items = list(),
      maxlen = NULL,

      initialize = function(maxlen) {
        self$maxlen <- maxlen
      },

      append = function(item) {
        self$items <- c(self$items, list(item))
        if (!is.null(self$maxlen) && length(self$items) > self$maxlen) {
          self$items <- self$items[-1]
        }
      },

      clear = function() {
        self$items <- list()
      },

      contains = function(item) {
        return(item %in% unlist(self$items))
      }
    )
  )$new(maxlen)
}

#' Pack random bytes into a raw vector
#' @param n Number of random bytes to generate
#' @return Raw vector of random bytes
#' @export
packRandomBytes <- function(n) {
  raw(sample(0:255, n, replace = TRUE))
}

#' Pack a random 64-bit integer and return as raw vector
#' @return Raw vector representation of a random long integer
#' @export
packRandomLong <- function() {
  packInt64(sample(0:2^31, 1) * sample(0:2^31, 1))
}
