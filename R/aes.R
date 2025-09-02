#' R6 Class Representing AES Encryption and Decryption
#'
#' @description
#' Provides an interface to encrypt and decrypt text using the AES IGE mode.
#'
#' @details
#' A pure R implementation of AES IGE mode encryption and decryption.

AES <- R6::R6Class(
  "AES",
  public = list(

    #' @description
    #' Decrypts the given text in 16-byte blocks using the provided key and IV.
    #' @param cipher_text A raw vector representing the encrypted text.
    #' @param key A raw vector representing the encryption key.
    #' @param iv A raw vector representing the 32-byte initialization vector.
    #' @return A raw vector representing the decrypted text.
    #' @examples
    #' aes <- AES$new()
    #' cipher_text <- as.raw(c(0x00, 0x01, 0x02, 0x03))
    #' key <- as.raw(rep(0x01, 32))
    #' iv <- as.raw(rep(0x02, 32))
    #' aes$decrypt_ige(cipher_text, key, iv)
    decrypt_ige = function(cipher_text, key, iv) {
      iv1 <- iv[1:(length(iv) / 2)]
      iv2 <- iv[(length(iv) / 2 + 1):length(iv)]

      aes <- digest::AES(key)

      plain_text <- raw()
      blocks_count <- length(cipher_text) %/% 16

      for (block_index in seq_len(blocks_count)) {
        cipher_text_block <- xor(cipher_text[((block_index - 1) * 16 + 1):(block_index * 16)], iv2)
        plain_text_block <- aes$decrypt(cipher_text_block, raw=TRUE)
        plain_text_block <- xor(plain_text_block, iv1)

        iv1 <- cipher_text[((block_index - 1) * 16 + 1):(block_index * 16)]
        iv2 <- plain_text_block

        plain_text <- c(plain_text, plain_text_block)
      }

      return(plain_text)
    },

    #' @description
    #' Encrypts the given text in 16-byte blocks using the provided key and IV.
    #' @param plain_text A raw vector representing the text to encrypt.
    #' @param key A raw vector representing the encryption key.
    #' @param iv A raw vector representing the 32-byte initialization vector.
    #' @return A raw vector representing the encrypted text.
    #' @examples
    #' aes <- AES$new()
    #' plain_text <- as.raw(c(0x00, 0x01, 0x02, 0x03))
    #' key <- as.raw(rep(0x01, 32))
    #' iv <- as.raw(rep(0x02, 32))
    #' aes$encrypt_ige(plain_text, key, iv)
    encrypt_ige = function(plain_text, key, iv) {
      padding <- length(plain_text) %% 16
      if (padding > 0) {
        plain_text <- c(plain_text, as.raw(sample(0:255, 16 - padding, replace = TRUE)))
      }

      iv1 <- iv[1:(length(iv) / 2)]
      iv2 <- iv[(length(iv) / 2 + 1):length(iv)]

      aes <- digest::AES(key)

      cipher_text <- raw()
      blocks_count <- length(plain_text) %/% 16

      for (block_index in seq_len(blocks_count)) {
        plain_text_block <- xor(plain_text[((block_index - 1) * 16 + 1):(block_index * 16)], iv1)
        cipher_text_block <- aes$encrypt(plain_text_block)
        cipher_text_block <- xor(cipher_text_block, iv2)

        iv1 <- cipher_text_block
        iv2 <- plain_text[((block_index - 1) * 16 + 1):(block_index * 16)]

        cipher_text <- c(cipher_text, cipher_text_block)
      }

      return(cipher_text)
    }
  )
)
