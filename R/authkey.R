#' AuthKey Class
#'
#' @description
#' Represents an authorization key, used to encrypt and decrypt
#' messages sent to Telegram's data centers.
#'
#' @export
AuthKey <- R6::R6Class(
  "AuthKey",
  public = list(

    #' @description
    #' Initializes a new authorization key.
    #'
    #' @param data A raw vector representing the authorization key data.
    #' @return None.
    initialize = function(data) {
      private$.key <- data
    },

    #' @description
    #' Calculates the new nonce hash based on the current attributes.
    #'
    #' @param new_nonce A raw vector representing the new nonce.
    #' @param number An integer to prepend before the hash.
    #' @return An integer representing the hash for the given new nonce.
    calc_new_nonce_hash = function(new_nonce, number) {
      stopifnot(is.raw(new_nonce), length(new_nonce) == 32)
      new_nonce <- as.raw(new_nonce)
      data <- c(new_nonce, writeBin(as.integer(number), raw(), size = 8, endian = "little"),
                writeBin(as.integer(self$aux_hash), raw(), size = 8, endian = "little"))
      hash <- sha1(data)
      return(sum(as.integer(hash[5:20]) * 256^(seq_along(hash[5:20]) - 1)))
    },

    #' @description
    #' Checks if the authorization key is valid.
    #'
    #' @return A logical value indicating whether the key is valid.
    is_valid = function() {
      return(!is.null(private$.key))
    },

    #' @description
    #' Compares the current key with another key.
    #'
    #' @param other An instance of AuthKey to compare with.
    #' @return A logical value indicating whether the keys are equal.
    equals = function(other) {
      return(inherits(other, "AuthKey") && identical(other$active_key, private$.key))
    }
  ),
  active = list(

    #' @field active_key
    #' Gets or sets the authorization key.
    active_key = function(value) {
      if (missing(value)) {
        return(private$.key)
      }
      if (is.null(value)) {
        private$.key <- NULL
        private$aux_hash <- NULL
        private$key_id <- NULL
      } else {
        private$.key <- value
        hash <- sha1(private$.key)
        reader <- BinaryReader$new(hash)
        private$aux_hash <- reader$read_long(signed = FALSE)
        reader$read(4)
        private$key_id <- reader$read_long(signed = FALSE)
        reader$close()
      }
    },

    #' @field return_aux_hash
    #' Gets the auxiliary hash derived from the key.
    return_aux_hash = function() {
      return(private$aux_hash)
    },

    #' @field return_key_id
    #' Gets the key identifier derived from the key.
    return_key_id = function() {
      return(private$key_id)
    }
  ),
  private = list(
    .key = NULL,
    aux_hash = NULL,
    key_id = NULL
  )
)
