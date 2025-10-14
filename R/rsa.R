#' RSA Utilities
#'
#' This module holds several utilities regarding RSA and server fingerprints.
#'
#' @import digest
#' @import openssl

# Global dictionary to store server keys
server_keys <- list()

#' Converts an integer to a byte array.
#'
#' @param integer The integer to convert.
#' @return A raw vector representing the byte array.
#' @export
get_byte_array <- function(integer) {
  as.raw(intToBits(integer)[1:ceiling(log2(integer + 1) / 8) * 8])
}

#' Computes the fingerprint of an RSA key.
#'
#' @param key The RSA key as a list with `n` and `e` components.
#' @return The 8-byte fingerprint as an integer.
compute_fingerprint <- function(key) {
  n <- serialize_bytes(get_byte_array(key$n))
  e <- serialize_bytes(get_byte_array(key$e))
  fingerprint <- digest::digest(c(n, e), algo = "sha1", serialize = FALSE, raw = TRUE)
  as.integer(sum(as.integer(fingerprint[(length(fingerprint) - 7):length(fingerprint)]) * 256^(0:7)))
}

#' Adds a new public key to the server keys.
#'
#' @param pub The public key in PEM format.
#' @param old Logical indicating if the key is old.
add_key <- function(pub, old = FALSE) {
  key <- openssl::read_pubkey(pub)
  fingerprint <- compute_fingerprint(list(n = key$n, e = key$e))
  server_keys[[as.character(fingerprint)]] <- list(key = key, old = old)
}

#' Encrypts data using the specified RSA key fingerprint.
#'
#' @param fingerprint The fingerprint of the RSA key.
#' @param data The data to encrypt as a raw vector.
#' @param use_old Logical indicating if old keys should be used.
#' @return The encrypted data as a raw vector, or NULL if no matching key is found.
encrypt <- function(fingerprint, data, use_old = FALSE) {
  key_info <- server_keys[[as.character(fingerprint)]]
  if (is.null(key_info) || (key_info$old && !use_old)) {
    return(NULL)
  }

  to_encrypt <- c(digest::digest(data, algo = "sha1", serialize = FALSE, raw = TRUE), data, as.raw(sample(0:255, 235 - length(data), replace = TRUE)))
  payload <- sum(as.integer(to_encrypt) * 256^(seq_along(to_encrypt) - 1))
  encrypted <- openssl::rsa_encrypt(as.raw(payload), key_info$key)
  encrypted
}

#' Converts a raw vector to an odd-length string.
#'
#' @param raw_data The raw vector to convert.
#' @return A string with odd-length characters.
odcstring <- function(raw_data) {
  paste0(sprintf("%02x", raw_data), collapse = "")
}

# Add default keys
default_keys <- list(
  "-----BEGIN RSA PUBLIC KEY-----
MIIBCgKCAQEAruw2yP/BCcsJliRoW5eBVBVle9dtjJw+OYED160Wybum9SXtBBLX
riwt4rROd9csv0t0OHCaTmRqBcQ0J8fxhN6/cpR1GWgOZRUAiQxoMnlt0R93LCX/
j1dnVa/gVbCjdSxpbrfY2g2L4frzjJvdl84Kd9ORYjDEAyFnEA7dD556OptgLQQ2
e2iVNq8NZLYTzLp5YpOdO1doK+ttrltggTCy5SrKeLoCPPbOgGsdxJxyz5KKcZnS
Lj16yE5HvJQn0CNpRdENvRUXe6tBP78O39oJ8BTHp9oIjd6XWXAsp2CvK45Ol8wF
XGF710w9lwCGNbmNxNYhtIkdqfsEcwR5JwIDAQAB
-----END RSA PUBLIC KEY-----",
  "-----BEGIN RSA PUBLIC KEY-----
MIIBCgKCAQEAvfLHfYH2r9R70w8prHblWt/nDkh+XkgpflqQVcnAfSuTtO05lNPs
pQmL8Y2XjVT4t8cT6xAkdgfmmvnvRPOOKPi0OfJXoRVylFzAQG/j83u5K3kRLbae
7fLccVhKZhY46lvsueI1hQdLgNV9n1cQ3TDS2pQOCtovG4eDl9wacrXOJTG2990V
jgnIKNA0UMoP+KF03qzryqIt3oTvZq03DyWdGK+AZjgBLaDKSnC6qD2cFY81UryR
WOab8zKkWAnhw2kFpcqhI0jdV5QaSCExvnsjVaX0Y1N0870931/5Jb9ICe4nweZ9
kSDF/gip3kWLG0o8XQpChDfyvsqB9OLV/wIDAQAB
-----END RSA PUBLIC KEY-----",
  "-----BEGIN RSA PUBLIC KEY-----
MIIBCgKCAQEAs/ditzm+mPND6xkhzwFIz6J/968CtkcSE/7Z2qAJiXbmZ3UDJPGr
zqTDHkO30R8VeRM/Kz2f4nR05GIFiITl4bEjvpy7xqRDspJcCFIOcyXm8abVDhF+
th6knSU0yLtNKuQVP6voMrnt9MV1X92LGZQLgdHZbPQz0Z5qIpaKhdyA8DEvWWvS
Uwwc+yi1/gGaybwlzZwqXYoPOhwMebzKUk0xW14htcJrRrq+PXXQbRzTMynseCoP
Ioke0dtCodbA3qQxQovE16q9zz4Otv2k4j63cz53J+mhkVWAeWxVGI0lltJmWtEY
K6er8VqqWot3nqmWMXogrgRLggv/NbbooQIDAQAB
-----END RSA PUBLIC KEY-----",
  "-----BEGIN RSA PUBLIC KEY-----
MIIBCgKCAQEAvmpxVY7ld/8DAjz6F6q05shjg8/4p6047bn6/m8yPy1RBsvIyvuD
uGnP/RzPEhzXQ9UJ5Ynmh2XJZgHoE9xbnfxL5BXHplJhMtADXKM9bWB11PU1Eioc
3+AXBB8QiNFBn2XI5UkO5hPhbb9mJpjA9Uhw8EdfqJP8QetVsI/xrCEbwEXe0xvi
fRLJbY08/Gp66KpQvy7g8w7VB8wlgePexW3pT13Ap6vuC+mQuJPyiHvSxjEKHgqe
Pji9NP3tJUFQjcECqcm0yV7/2d0t/pbCm+ZH1sadZspQCEPPrtbkQBlvHb4OLiIW
PGHKSMeRFvp3IWcmdJqXahxLCUS1Eh6MAQIDAQAB
-----END RSA PUBLIC KEY-----"
)

# for (pub in default_keys) {
#  add_key(pub, old = FALSE)
# }
