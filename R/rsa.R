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
  # Handle empty/NULL early
  if (is.null(integer) || length(integer) == 0) return(raw(0))

  # bignum from openssl
  if (inherits(integer, "bignum")) {
    ch <- as.character(integer)
    # Prefer hex strings if provided (0x...)
    if (grepl("^0x", ch)) {
      hex <- sub("^0x", "", ch)
      if ((nchar(hex) %% 2) == 1) hex <- paste0("0", hex)
      return(as.raw(strtoi(substring(hex, seq(1, nchar(hex), 2), seq(2, nchar(hex), 2)), 16L)))
    } else {
      # Fallback: use decimal string bytes (stable but not numeric bytes)
      return(charToRaw(ch))
    }
  }

  # Raw: return as-is
  if (is.raw(integer)) return(integer)

  # Numeric: convert to big-endian minimal-length bytes
  if (is.numeric(integer)) {
    x <- as.numeric(integer[1])
    if (!is.finite(x) || x < 0) stop("Unsupported numeric value in get_byte_array")
    if (x == 0) return(as.raw(0))
    bytes <- raw(0)
    while (x > 0) {
      # LSB-first (little-endian) order
      bytes <- c(bytes, as.raw(as.integer(x %% 256)))
      x <- floor(x / 256)
    }
    return(bytes)
  }

  stop("Unsupported type for get_byte_array")
}

#' Computes the fingerprint of an RSA key.
#'
#' @param key The RSA key as a list with `n` and `e` components, a PEM string, or an openssl pubkey.
#' @return The 8-byte fingerprint as a positive numeric.
compute_fingerprint <- function(key) {
  # If a PEM string is provided, use its DER payload directly
  if (is.character(key) && length(key) == 1L) {
    pem_lines <- strsplit(key, "\n", fixed = TRUE)[[1]]
    b64 <- pem_lines[!grepl("^-{3,}", pem_lines)]
    payload <- openssl::base64_decode(paste0(b64, collapse = ""))
  } else if (is.list(key) && !is.null(key$n) && !is.null(key$e)) {
    # Stable textual representation for list inputs
    n_str <- as.character(key$n)
    e_str <- as.character(key$e)
    payload <- charToRaw(paste0(n_str, ":", e_str))
  } else if (inherits(key, "pubkey")) {
    # Best-effort: try to extract components; otherwise ask caller to pass PEM
    comps <- tryCatch(as.list(key), error = function(e) NULL)
    if (is.list(comps) && !is.null(comps$n) && !is.null(comps$e)) {
      n_str <- as.character(comps$n)
      e_str <- as.character(comps$e)
      payload <- charToRaw(paste0(n_str, ":", e_str))
    } else {
      stop("Invalid key for compute_fingerprint: pass PEM string or list(n, e)")
    }
  } else {
    stop("Invalid key for compute_fingerprint: expected PEM string, list(n, e), or openssl pubkey")
  }

  h <- digest::digest(payload, algo = "sha1", serialize = FALSE, raw = TRUE)
  tail8 <- as.integer(h[(length(h) - 7):length(h)])
  # Use double arithmetic to avoid 32-bit integer overflow
  sum(as.numeric(tail8) * 256^(0:7))
}

#' Adds a new public key to the server keys.
#'
#' @param pub The public key in PEM format.
#' @param old Logical indicating if the key is old.
add_key <- function(pub, old = FALSE) {
  key <- openssl::read_pubkey(pub)
  fingerprint <- compute_fingerprint(pub) # consistent with PEM hashing
  entry <- list(key = key, old = old)

  update_env <- function(env) {
    if (!exists("server_keys", envir = env, inherits = FALSE)) return()
    locked <- bindingIsLocked("server_keys", env)
    if (locked) unlockBinding("server_keys", env)
    srv <- get("server_keys", envir = env, inherits = FALSE)
    srv[[as.character(fingerprint)]] <- entry
    assign("server_keys", srv, envir = env)
    if (locked) lockBinding("server_keys", env)
  }

  # Update namespace binding
  ns <- asNamespace(utils::packageName())
  update_env(ns)

  # Update attached package env if present (e.g. tests may read from here)
  pkg_env_name <- paste0("package:", utils::packageName())
  if (pkg_env_name %in% search()) {
    update_env(as.environment(pkg_env_name))
  }

  invisible(fingerprint)
}

#' Encrypts data using the specified RSA key fingerprint.
#'
#' @param fingerprint The fingerprint of the RSA key.
#' @param data The data to encrypt as a raw vector (or coercible).
#' @param use_old Logical indicating if old keys should be used.
#' @return The encrypted data as a raw vector, or NULL if no matching key is found.
encrypt <- function(fingerprint, data, use_old = FALSE) {
  key_info <- server_keys[[as.character(fingerprint)]]
  if (is.null(key_info) || (key_info$old && !use_old)) {
    return(NULL)
  }

  # Coerce input to raw
  data_raw <- if (is.raw(data)) {
    data
  } else if (is.character(data)) {
    charToRaw(paste0(data, collapse = ""))
  } else if (is.numeric(data)) {
    as.raw(as.integer(data))
  } else {
    stop("Unsupported data type for encrypt")
  }

  # Use PKCS#1 v1.5 padding (default) to produce a full-size RSA block
  openssl::rsa_encrypt(data_raw, key_info$key)
}

#' Converts a raw vector to an odd-length string.
#'
#' @param raw_data The raw vector to convert.
#' @return A string with odd-length characters.
odcstring <- function(raw_data) {
  # Coerce to integer vector for sprintf %02x
  bytes <- if (is.raw(raw_data)) {
    as.integer(raw_data)
  } else if (is.numeric(raw_data)) {
    as.integer(raw_data)
  } else {
    stop("Unsupported type for odcstring")
  }
  paste0(sprintf("%02x", bytes), collapse = "")
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

for (pub in default_keys) {
 add_key(pub, old = FALSE)
}
