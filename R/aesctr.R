#' R6 Class Representing AES CTR Mode
#'
#' @description
#' A wrapper around AES CTR mode with custom IV using the `pyaes` library.
#'
#' @details
#' This class provides methods to encrypt and decrypt data using AES CTR mode.
#' It initializes with a key and a 16-byte initialization vector (IV).

AESModeCTR <- R6::R6Class(
  "AESModeCTR",
  public = list(

    #' @field ._aes An instance of the AESModeOfOperationCTR from the `pyaes` library.
    ._aes = NULL,

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

      self$._aes <- pyaes$AESModeOfOperationCTR(key)
      self$._aes$._counter$._counter <- as.list(as.integer(iv))
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
      return(self$._aes$encrypt(data))
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
      return(self$._aes$decrypt(data))
    }
  )
)