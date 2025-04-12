#' Execute the authentication process with the Telegram servers.
#'
#' @param sender A connected MTProtoPlainSender-like object with a send method.
#' @return A list with elements \code{auth_key} and \code{time_offset}.
#' @export
do_authentication <- function(sender) {
  ## Step 1: Sending PQ Request
  nonce_raw <- openssl::rand_bytes(16)
  nonce <- get_int(nonce_raw, signed = TRUE)

  res_pq <- sender$send(ReqPqMultiRequest(nonce))
  if (res_pq$nonce != nonce) {
    stop("Step 1: invalid nonce from server")
  }

  pq <- get_int(res_pq$pq)

  ## Step 2: DH Exchange
  fact <- Factorization$factorize(pq)
  p <- rsa$get_byte_array(fact$p)
  q <- rsa$get_byte_array(fact$q)

  new_nonce_raw <- openssl::rand_bytes(32)
  new_nonce <- get_int_little(new_nonce_raw, signed = TRUE)

  pq_inner_data <- PQInnerData(
    pq = rsa$get_byte_array(pq),
    p = p,
    q = q,
    nonce = res_pq$nonce,
    server_nonce = res_pq$server_nonce,
    new_nonce = new_nonce
  )

  cipher_text <- NULL
  target_fingerprint <- NULL
  # Try normal keys
  for (fingerprint in res_pq$server_public_key_fingerprints) {
    cipher_text <- rsa$encrypt(fingerprint, pq_inner_data)
    if (!is.null(cipher_text)) {
      target_fingerprint <- fingerprint
      break
    }
  }
  # Try using old keys if needed
  if (is.null(cipher_text)) {
    for (fingerprint in res_pq$server_public_key_fingerprints) {
      cipher_text <- rsa$encrypt(fingerprint, pq_inner_data, use_old = TRUE)
      if (!is.null(cipher_text)) {
        target_fingerprint <- fingerprint
        break
      }
    }
  }
  if (is.null(cipher_text)) {
    stop("Step 2: could not find a valid key for the provided fingerprints")
  }

  server_dh_params <- sender$send(ReqDHParamsRequest(
    nonce = res_pq$nonce,
    server_nonce = res_pq$server_nonce,
    p = p,
    q = q,
    public_key_fingerprint = target_fingerprint,
    encrypted_data = cipher_text
  ))

  if (server_dh_params$nonce != res_pq$nonce ||
      server_dh_params$server_nonce != res_pq$server_nonce) {
    stop("Step 2: nonce validation failed")
  }
  if ("ServerDHParamsFail" %in% class(server_dh_params)) {
    nnh <- get_int(substr(sha1(as.raw(new_nonce)), 5, 20), signed = TRUE)
    if (server_dh_params$new_nonce_hash != nnh) {
      stop("Step 2: invalid DH fail nonce from server")
    }
  }
  if (!("ServerDHParamsOk" %in% class(server_dh_params))) {
    stop(paste("Step 2: unexpected response", server_dh_params))
  }

  ## Step 3: Complete DH Exchange
  key_iv <- helpers$generate_key_data_from_nonce(res_pq$server_nonce, new_nonce)
  key <- key_iv$key
  iv <- key_iv$iv

  if (length(server_dh_params$encrypted_answer) %% 16 != 0) {
    stop("Step 3: AES block size mismatch")
  }
  plain_text_answer <- AES$decrypt_ige(server_dh_params$encrypted_answer, key, iv)

  reader <- BinaryReader(plain_text_answer)
  reader$read(20)  # Discard hash sum
  server_dh_inner <- reader$tgread_object()

  if (server_dh_inner$nonce != res_pq$nonce ||
      server_dh_inner$server_nonce != res_pq$server_nonce) {
    stop("Step 3: invalid nonces in encrypted answer")
  }

  dh_prime <- get_int(server_dh_inner$dh_prime, signed = FALSE)
  g <- server_dh_inner$g
  g_a <- get_int(server_dh_inner$g_a, signed = FALSE)
  time_offset <- server_dh_inner$server_time - as.integer(Sys.time())

  b <- get_int(openssl::rand_bytes(256), signed = FALSE)
  g_b <- modexp(g, b, dh_prime)
  gab <- modexp(g_a, b, dh_prime)

  if (!(1 < g && g < (dh_prime - 1)) ||
      !(1 < g_a && g_a < (dh_prime - 1)) ||
      !(1 < g_b && g_b < (dh_prime - 1))) {
    stop("Diffie-Hellman values are not in the valid range")
  }
  safety_range <- 2^(2048 - 64)
  if (!(g_a >= safety_range && g_a <= (dh_prime - safety_range)) ||
      !(g_b >= safety_range && g_b <= (dh_prime - safety_range))) {
    stop("Diffie-Hellman values are not within the safety range")
  }

  client_dh_inner <- ClientDHInnerData(
    nonce = res_pq$nonce,
    server_nonce = res_pq$server_nonce,
    retry_id = 0,
    g_b = rsa$get_byte_array(g_b)
  )
  client_dh_inner_hashed <- c(sha1(client_dh_inner), client_dh_inner)
  client_dh_encrypted <- AES$encrypt_ige(client_dh_inner_hashed, key, iv)

  dh_gen <- sender$send(SetClientDHParamsRequest(
    nonce = res_pq$nonce,
    server_nonce = res_pq$server_nonce,
    encrypted_data = client_dh_encrypted
  ))

  if (dh_gen$nonce != res_pq$nonce ||
      dh_gen$server_nonce != res_pq$server_nonce) {
    stop("Step 3: nonce validation failed in DH generation")
  }
  nonce_types <- c("DhGenOk", "DhGenRetry", "DhGenFail")
  nonce_number <- 1 + which(nonce_types %in% class(dh_gen)) - 1
  new_nonce_hash <- auth_key$calc_new_nonce_hash(new_nonce, nonce_number)

  if (dh_gen[[paste0("new_nonce_hash", nonce_number)]] != new_nonce_hash) {
    stop("Step 3: invalid new nonce hash")
  }
  if (!("DhGenOk" %in% class(dh_gen))) {
    stop(paste("Step 3: unexpected DH generation response", dh_gen))
  }

  auth_key <- AuthKey(rsa$get_byte_array(gab))

  return(list(auth_key = auth_key, time_offset = time_offset))
}

#' Convert a raw byte array to an integer.
#'
#' @param byte_array A raw vector representing the integer.
#' @param signed Logical; whether the integer is signed.
#' @return An integer converted from the byte array.
#' @export
get_int <- function(byte_array, signed = TRUE) {
  int_val <- as.numeric(strtoi(paste(as.character(byte_array), collapse = ""), base = 16L))
  if (signed) {
    return(as.integer(int_val))
  } else {
    return(as.double(int_val))
  }
}

#' Convert a raw byte array in little-endian order to an integer.
#'
#' @param byte_array A raw vector in little-endian order.
#' @param signed Logical; whether the integer is signed.
#' @return An integer converted from the byte array.
#' @export
get_int_little <- function(byte_array, signed = TRUE) {
  int_val <- as.numeric(strtoi(paste(as.character(rev(byte_array)), collapse = ""), base = 16L))
  if (signed) {
    return(as.integer(int_val))
  } else {
    return(as.double(int_val))
  }
}

#' Modular exponentiation.
#'
#' @param base The base value.
#' @param exp The exponent.
#' @param mod The modulus.
#' @return The result of \code{base^exp \% mod \%}.
#' @export
modexp <- function(base, exp, mod) {
  # Placeholder implementation: an actual implementation is required for large integers.
  return(as.integer((base ^ exp) %% mod))
}