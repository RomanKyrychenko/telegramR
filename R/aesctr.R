#' @title R6 Class Representing AES CTR Mode
#' @description
#' A wrapper around AES CTR mode with custom IV using the `pyaes` library.
#' @details
#' This class provides methods to encrypt and decrypt data using AES CTR mode.
#' It initializes with a key and a 16-byte initialization vector (IV).
#' @export
AESModeCTR <- R6::R6Class(
  "AESModeCTR",
  public = list(

    #' @field ._key The encryption key.
    ._key = NULL,

    #' @field ._iv The initialization vector.
    ._iv = NULL,

    #' @field ._counter The counter for AES CTR mode.
    ._counter = NULL,

    #' @description
    #' Initialize the AES CTR mode with the given key and IV.
    #' @param key A raw vector representing the encryption key.
    #' @param iv A raw vector representing the initialization vector (16 bytes).
    #' @examples
    #' key <- as.raw(rep(0x01, 16))
    #' iv <- as.raw(rep(0x02, 16))
    #' aes_ctr <- AESModeCTR$new(key, iv)
    initialize = function(key, iv) {
      stopifnot(is.raw(key))
      stopifnot(is.raw(iv), length(iv) == 16)

      self$._key <- key
      self$._iv <- iv
      self$._counter <- as.integer(iv)
    },

    #' @description
    #' Encrypt the given plain text using AES CTR mode.
    #' @param data A raw vector representing the plain text to encrypt.
    #' @return A raw vector representing the encrypted cipher text.
    #' @examples
    #' key <- as.raw(rep(0x01, 16))
    #' iv <- as.raw(rep(0x02, 16))
    #' aes_ctr <- AESModeCTR$new(key, iv)
    #' plain_text <- as.raw(c(0x00, 0x01, 0x02, 0x03))
    #' cipher_text <- aes_ctr$encrypt(plain_text)
    encrypt = function(data) {
      result <- raw(length(data))
      for (i in seq_along(data)) {
        # Generate keystream block
        counter_bytes <- as.raw(self$._counter)
        keystream <- digest::AES(self$._key, counter_bytes, mode = "ECB")

        # XOR data with keystream
        result[i] <- as.raw(bitwXor(as.integer(data[i]), as.integer(keystream[1])))

        # Increment counter
        self$._increment_counter()
      }
      return(result)
    },

    #' @description
    #' Decrypt the given cipher text using AES CTR mode.
    #' @param data A raw vector representing the cipher text to decrypt.
    #' @return A raw vector representing the decrypted plain text.
    #' @examples
    #' key <- as.raw(rep(0x01, 16))
    #' iv <- as.raw(rep(0x02, 16))
    #' aes_ctr <- AESModeCTR$new(key, iv)
    #' cipher_text <- as.raw(c(0x8d, 0x6c, 0x63, 0x7c))
    #' plain_text <- aes_ctr$decrypt(cipher_text)
    decrypt = function(data) {
      result <- raw(length(data))
      for (i in seq_along(data)) {
      # Generate keystream block
      counter_bytes <- as.raw(self$._counter)
      keystream <- digest::AES(self$._key, counter_bytes, mode = "ECB")

      # XOR data with keystream
      result[i] <- as.raw(bitwXor(as.integer(data[i]), as.integer(keystream[1])))

      # Increment counter
      self$._increment_counter()
      }
      return(result)
    },

    #' @description
    #' Increment the counter for the next block.
    ._increment_counter = function() {
      counter_vec <- self$._counter

      for (i in length(counter_vec):1) {
        counter_vec[i] <- (counter_vec[i] + 1) %% 256
        if (counter_vec[i] != 0) break
      }
      self$._counter <- counter_vec
    }
  )
)
