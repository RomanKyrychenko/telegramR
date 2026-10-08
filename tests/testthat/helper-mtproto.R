# Build an encrypted MTProto 2.0 message the way the *server* does (x = 8),
# so MTProtoState$decrypt_message_data() can be tested end to end.
server_msg_id_raw <- function(time = as.numeric(Sys.time()), low = 1L) {
  # msg_id = unix_time << 32 | low (server ids are odd), little-endian
  c(packInt32(low), packInt32(as.integer(floor(time))))
}

server_encrypt <- function(state, inner, msg_id_raw = server_msg_id_raw(),
                           session_id = state$id, seq_no = 1L) {
  key <- state$auth_key$key
  plain <- c(packInt64(0), packInt64(session_id), msg_id_raw,
             packInt32(seq_no), packInt32(length(inner)), inner)
  pad <- 12L + ((-(length(plain) + 12L)) %% 16L)
  plain <- c(plain, as.raw(sample(0:255, pad, replace = TRUE)))
  msg_key <- digest::digest(c(key[97:128], plain), algo = "sha256",
                            serialize = FALSE, raw = TRUE)[9:24]
  kv <- state$.__enclos_env__$private$calc_key(key, msg_key, client = FALSE)
  c(state$auth_key$key_id_raw, msg_key, AES$new()$encrypt_ige(plain, kv$aes_key, kv$aes_iv))
}

# peerChannel#a2a5371e channel_id:long — a small, always-decodable TL object
peer_channel_bytes <- function(id = 1234567890) {
  c(as.raw(c(0x1e, 0x37, 0xa5, 0xa2)), packInt64(id))
}
