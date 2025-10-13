#' Register some of the most common mime-types to avoid any issues.
mimetypes <- mime::mimemap

#' Extend the mimetypes character vector with additional common types.
mimetypes <- c(
  mimetypes,
  "image/png" = ".png",
  "image/jpeg" = ".jpeg",
  "image/webp" = ".webp",
  "image/gif" = ".gif",
  "image/bmp" = ".bmp",
  "image/x-tga" = ".tga",
  "image/tiff" = ".tiff",
  "image/vnd.adobe.photoshop" = ".psd",
  "video/mp4" = ".mp4",
  "video/quicktime" = ".mov",
  "video/avi" = ".avi",
  "audio/mpeg" = ".mp3",
  "audio/m4a" = ".m4a",
  "audio/aac" = ".aac",
  "audio/ogg" = ".ogg",
  "audio/flac" = ".flac",
  "application/x-tgsticker" = ".tgs"
)

#' Username Regular Expression
#'
#' Regular expression pattern for matching usernames in Telegram links or mentions.
USERNAME_RE <- "@|(?:https?://)?(?:www\\.)?(?:telegram\\.(?:me|dog)|t\\.me)/(@|\\+|joinchat/)?"

#' Telegram Join Regular Expression
#'
#' Regular expression pattern for matching Telegram join links.
TG_JOIN_RE <- "tg://(join)\\?invite="

#' Valid Username Regular Expression
#'
#' Regular expression pattern for validating Telegram usernames.
VALID_USERNAME_RE <- "^[a-z](?:(?!__)\\w){1,30}[a-z\\d]$"

#' FileInfo Class
#'
#' An R6 class representing file information with dc_id, location, and size.
#'
#' @field dc_id The data center ID.
#' @field location The file location.
#' @field size The file size.
FileInfo <- R6::R6Class(
  "FileInfo",
  public = list(
    #' @field dc_id The data center ID.
    dc_id = NULL,

    #' @field location The file location.
    location = NULL,

    #' @field size The file size.
    size = NULL,

    #' @description Initialize the FileInfo object.
    #' @param dc_id The data center ID.
    #' @param location The file location.
    #' @param size The file size.
    initialize = function(dc_id, location, size) {
      self$dc_id <- dc_id
      self$location <- location
      self$size <- size
    }
  )
)

#' Chunks
#'
#' Turns the given iterable into chunks of the specified size,
#' which is 100 by default since that's what Telegram uses the most.
#'
#' @param iterable A vector or list to be chunked.
#' @param size An integer specifying the size of each chunk. Default is 100L.
#' @return A list of vectors, each representing a chunk of the original iterable.
#' @examples
#' \dontrun{
#' chunks(1:10, 3)  # Returns list(c(1,2,3), c(4,5,6), c(7,8,9), c(10))
#' }
chunks <- function(iterable, size = 100L) {
  result <- list()
  i <- 1L
  while (i <= length(iterable)) {
    end <- min(i + size - 1L, length(iterable))
    result <- c(result, list(iterable[i:end]))
    i <- i + size
  }
  return(result)
}

#' Get Display Name
#'
#' Gets the display name for the given User, Chat or Channel. Returns an empty string otherwise.
#'
#' @param entity The entity object (User, Chat, or Channel).
#' @return A character string representing the display name.
#' @examples
#' \dontrun{
#' # Assuming entity is a User object
#' name <- get_display_name(entity)
#' }
get_display_name <- function(entity) {
  if (inherits(entity, "User")) {
    if (!is.null(entity$last_name) && !is.null(entity$first_name)) {
      return(sprintf("%s %s", entity$first_name, entity$last_name))
    } else if (!is.null(entity$first_name)) {
      return(entity$first_name)
    } else if (!is.null(entity$last_name)) {
      return(entity$last_name)
    } else {
      return("")
    }
  } else if (inherits(entity, c("Chat", "ChatForbidden", "Channel", "ChannelForbidden"))) {
    return(entity$title)
  }
  return("")
}

#' Get Extension
#'
#' Gets the corresponding extension for any Telegram media.
#'
#' @param media The media object to analyze.
#' @return A character string representing the file extension.
#' @examples
#' \dontrun{
#' # Assuming media is a Document object
#' ext <- get_extension(media)
#' }
get_extension <- function(media) {
  tryCatch({
    get_input_photo(media)
    return('.jpg')
  }, error = function(e) {
    if (inherits(media, c("UserProfilePhoto", "ChatPhoto"))) {
      return('.jpg')
    }
  })

  if (inherits(media, "MessageMediaDocument")) {
    media <- media$document
  }

  if (inherits(media, c("Document", "WebDocument", "WebDocumentNoProxy"))) {
    if (media$mime_type == 'application/octet-stream') {
      return('')
    } else {
      ext <- guess_extension(media$mime_type)
      return(ifelse(is.null(ext), '', ext))
    }
  }

  return('')
}

#' Raise Cast Fail
#'
#' Raises an error indicating that the entity cannot be cast to the target type.
#'
#' @param entity The entity object that failed to cast.
#' @param target A character string representing the target type.
#' @examples
#' \dontrun{
#' raise_cast_fail(some_entity, "InputPeer")
#' }
raise_cast_fail <- function(entity, target) {
  stop(sprintf('Cannot cast %s to any kind of %s.', class(entity)[1], target))
}


#' Get Input Peer
#'
#' Gets the input peer for the given "entity" (user, chat or channel).
#'
#' A `TypeError` is raised if the given entity isn't a supported type
#' or if `check_hash` is `TRUE` but the entity's `access_hash` is `NULL`
#' *or* the entity contains `min` information. In this case, the hash
#' cannot be used for general purposes, and thus is not returned to avoid
#' any issues which can derive from invalid access hashes.
#'
#' Note that `check_hash` **is ignored** if an input peer is already
#' passed since in that case we assume the user knows what they're doing.
#' This is key to getting entities by explicitly passing `hash = 0`.
#'
#' @param entity The entity object to convert.
#' @param allow_self Logical, whether to allow self as input. Default is `TRUE`.
#' @param check_hash Logical, whether to check for valid access hashes. Default is `TRUE`.
#' @return An InputPeer object.
#' @examples
#' \dontrun{
#' # Assuming entity is a User object
#' input_peer <- get_input_peer(entity)
#' }
get_input_peer <- function(entity, allow_self = TRUE, check_hash = TRUE) {
  # NOTE: It is important that this method validates the access hashes,
  #       because it is used when we *require* a valid general-purpose
  #       access hash. This includes caching, which relies on this method.
  #       Further, when resolving raw methods, they do e.g.,
  #           utils.get_input_channel(client.get_input_peer(...))
  #
  #       ...which means that the client's method verifies the hashes.
  #
  # Excerpt from a conversation with official developers (slightly edited):
  #     > We send new access_hash for Channel with min flag since layer 102.
  #     > Previously, we omitted it.
  #     > That one works just to download the profile picture.
  #
  #     < So, min hashes only work for getting files,
  #     < but the non-min hash is required for any other operation?
  #
  #     > Yes.
  #
  # More information: https://core.telegram.org/api/min
  tryCatch({
    if (entity$SUBCLASS_OF_ID == 0xc91c90b6) {  # crc32(b'InputPeer')
      return(entity)
    }
  }, error = function(e) {
    # e.g. custom.Dialog (can't cyclic import).
    if (allow_self && !is.null(entity$input_entity)) {
      return(entity$input_entity)
    } else if (!is.null(entity$entity)) {
      return(get_input_peer(entity$entity))
    } else {
      raise_cast_fail(entity, 'InputPeer')
    }
  })

  if (inherits(entity, "User")) {
    if (entity$is_self && allow_self) {
      return(types$InputPeerSelf())
    } else if ((!is.null(entity$access_hash) && !entity$min) || !check_hash) {
      return(types$InputPeerUser(entity$id, entity$access_hash))
    } else {
      stop('User without access_hash or min info cannot be input')
    }
  }

  if (inherits(entity, c("Chat", "ChatEmpty", "ChatForbidden"))) {
    return(types$InputPeerChat(entity$id))
  }

  if (inherits(entity, "Channel")) {
    if ((!is.null(entity$access_hash) && !entity$min) || !check_hash) {
      return(types$InputPeerChannel(entity$id, entity$access_hash))
    } else {
      stop('Channel without access_hash or min info cannot be input')
    }
  }

  if (inherits(entity, "ChannelForbidden")) {
    # "channelForbidden are never min", and since their hash is
    # also not optional, we assume that this truly is the case.
    return(types$InputPeerChannel(entity$id, entity$access_hash))
  }

  if (inherits(entity, "InputUser")) {
    return(types$InputPeerUser(entity$user_id, entity$access_hash))
  }

  if (inherits(entity, "InputChannel")) {
    return(types$InputPeerChannel(entity$channel_id, entity$access_hash))
  }

  if (inherits(entity, "InputUserSelf")) {
    return(types$InputPeerSelf())
  }

  if (inherits(entity, "InputUserFromMessage")) {
    return(types$InputPeerUserFromMessage(entity$peer, entity$msg_id, entity$user_id))
  }

  if (inherits(entity, "InputChannelFromMessage")) {
    return(types$InputPeerChannelFromMessage(entity$peer, entity$msg_id, entity$channel_id))
  }

  if (inherits(entity, "UserEmpty")) {
    return(types$InputPeerEmpty())
  }

  if (inherits(entity, "UserFull")) {
    return(get_input_peer(entity$user))
  }

  if (inherits(entity, "ChatFull")) {
    return(types$InputPeerChat(entity$id))
  }

  if (inherits(entity, "PeerChat")) {
    return(types$InputPeerChat(entity$chat_id))
  }

  raise_cast_fail(entity, 'InputPeer')
}

#' Get Input Channel
#'
#' Similar to `get_input_peer`, but for `InputChannel`'s alone.
#'
#' @param entity The entity object to convert.
#' @return An InputChannel object.
#' @examples
#' \dontrun{
#' # Assuming entity is a Channel object
#' input_channel <- get_input_channel(entity)
#' }
get_input_channel <- function(entity) {
  tryCatch({
    if (entity$SUBCLASS_OF_ID == 0x40f202fd) {  # crc32(b'InputChannel')
      return(entity)
    }
  }, error = function(e) {
    raise_cast_fail(entity, 'InputChannel')
  })

  if (inherits(entity, c("Channel", "ChannelForbidden"))) {
    return(types$InputChannel(entity$id, entity$access_hash %||% 0))
  }

  if (inherits(entity, "InputPeerChannel")) {
    return(types$InputChannel(entity$channel_id, entity$access_hash))
  }

  if (inherits(entity, "InputPeerChannelFromMessage")) {
    return(types$InputChannelFromMessage(entity$peer, entity$msg_id, entity$channel_id))
  }

  raise_cast_fail(entity, 'InputChannel')
}


#' Get Input User
#'
#' Similar to \code{get_input_peer}, but for \code{InputUser}'s alone.
#'
#' @param entity The entity object to convert.
#' @return An InputUser object.
#' @examples
#' \dontrun{
#' # Assuming entity is a User object
#' input_user <- get_input_user(entity)
#' }
get_input_user <- function(entity) {
  tryCatch({
    if (entity$SUBCLASS_OF_ID == 0xe669bf46) {  # crc32(b'InputUser')
      return(entity)
    }
  }, error = function(e) {
    raise_cast_fail(entity, 'InputUser')
  })

  if (inherits(entity, "User")) {
    if (entity$is_self) {
      return(types$InputUserSelf())
    } else {
      return(types$InputUser(entity$id, entity$access_hash %||% 0))
    }
  }

  if (inherits(entity, "InputPeerSelf")) {
    return(types$InputUserSelf())
  }

  if (inherits(entity, c("UserEmpty", "InputPeerEmpty"))) {
    return(types$InputUserEmpty())
  }

  if (inherits(entity, "UserFull")) {
    return(get_input_user(entity$user))
  }

  if (inherits(entity, "InputPeerUser")) {
    return(types$InputUser(entity$user_id, entity$access_hash))
  }

  if (inherits(entity, "InputPeerUserFromMessage")) {
    return(types$InputUserFromMessage(entity$peer, entity$msg_id, entity$user_id))
  }

  raise_cast_fail(entity, 'InputUser')
}

#' Get Input Dialog
#'
#' Similar to \code{get_input_peer}, but for dialogs.
#'
#' @param dialog The dialog object to convert.
#' @return An InputDialogPeer object.
#' @examples
#' \dontrun{
#' # Assuming dialog is a dialog object
#' input_dialog <- get_input_dialog(dialog)
#' }
get_input_dialog <- function(dialog) {
  tryCatch({
    if (dialog$SUBCLASS_OF_ID == 0xa21c9795) {  # crc32(b'InputDialogPeer')
      return(dialog)
    }
    if (dialog$SUBCLASS_OF_ID == 0xc91c90b6) {  # crc32(b'InputPeer')
      return(types$InputDialogPeer(dialog))
    }
  }, error = function(e) {
    raise_cast_fail(dialog, 'InputDialogPeer')
  })

  tryCatch({
    return(types$InputDialogPeer(get_input_peer(dialog)))
  }, error = function(e) {
    # Pass
  })

  raise_cast_fail(dialog, 'InputDialogPeer')
}

#' Get Input Document
#'
#' Similar to \code{get_input_peer}, but for documents.
#'
#' @param document The document object to convert.
#' @return An InputDocument object.
#' @examples
#' \dontrun{
#' # Assuming document is a Document object
#' input_doc <- get_input_document(document)
#' }
get_input_document <- function(document) {
  tryCatch({
    if (document$SUBCLASS_OF_ID == 0xf33fdb68) {  # crc32(b'InputDocument')
      return(document)
    }
  }, error = function(e) {
    raise_cast_fail(document, 'InputDocument')
  })

  if (inherits(document, "Document")) {
    return(types$InputDocument(
      id = document$id,
      access_hash = document$access_hash,
      file_reference = document$file_reference
    ))
  }

  if (inherits(document, "DocumentEmpty")) {
    return(types$InputDocumentEmpty())
  }

  if (inherits(document, "MessageMediaDocument")) {
    return(get_input_document(document$document))
  }

  if (inherits(document, "Message")) {
    return(get_input_document(document$media))
  }

  raise_cast_fail(document, 'InputDocument')
}

#' Bitwise Length
#'
#' Calculates the bitwise length of an integer.
#' @param x An integer value.
#' @return The bitwise length of the integer.
bitwLength <- function(x) {
  if (x == 0) return(1)
  floor(log2(abs(x))) + 1
}

#' Check Prime and Good Check
#'
#' Validates the prime number and generator g for cryptographic purposes.
#'
#' @param prime An integer representing the prime number.
#' @param g An integer representing the generator.
#' @return Raises an error if validation fails, otherwise returns nothing.
check_prime_and_good_check <- function(prime, g) {
  good_prime_bits_count <- 2048
  if (prime < 0 || bitwLength(prime) != good_prime_bits_count) {
    stop(sprintf('bad prime count %d, expected %d', bitwLength(prime), good_prime_bits_count))
  }

  # TODO This is awfully slow
  if (Factorization$new()$factorize(prime)[[1]] != 1) {
    stop('given "prime" is not prime')
  }

  if (g == 2) {
    if (prime %% 8 != 7) {
      stop(sprintf('bad g %d, mod8 %d', g, prime %% 8))
    }
  } else if (g == 3) {
    if (prime %% 3 != 2) {
      stop(sprintf('bad g %d, mod3 %d', g, prime %% 3))
    }
  } else if (g == 4) {
    # pass
  } else if (g == 5) {
    if (!(prime %% 5 %in% c(1, 4))) {
      stop(sprintf('bad g %d, mod5 %d', g, prime %% 5))
    }
  } else if (g == 6) {
    if (!(prime %% 24 %in% c(19, 23))) {
      stop(sprintf('bad g %d, mod24 %d', g, prime %% 24))
    }
  } else if (g == 7) {
    if (!(prime %% 7 %in% c(3, 5, 6))) {
      stop(sprintf('bad g %d, mod7 %d', g, prime %% 7))
    }
  } else {
    stop(sprintf('bad g %d', g))
  }

  prime_sub1_div2 <- (prime - 1) %/% 2
  if (Factorization$new()$factorize(prime_sub1_div2)[[1]] != 1) {
    stop('(prime - 1) // 2 is not prime')
  }

  # Else it's good
}

#' Check Prime and Good
#'
#' Checks if the prime bytes and generator are good.
#'
#' @param prime_bytes A raw vector representing the prime bytes.
#' @param g An integer representing the generator.
#' @return Raises an error if validation fails, otherwise returns nothing.
check_prime_and_good <- function(prime_bytes, g) {
  good_prime <- as.raw(c(
    0xC7, 0x1C, 0xAE, 0xB9, 0xC6, 0xB1, 0xC9, 0x04, 0x8E, 0x6C, 0x52, 0x2F, 0x70, 0xF1, 0x3F, 0x73,
    0x98, 0x0D, 0x40, 0x23, 0x8E, 0x3E, 0x21, 0xC1, 0x49, 0x34, 0xD0, 0x37, 0x56, 0x3D, 0x93, 0x0F,
    0x48, 0x19, 0x8A, 0x0A, 0xA7, 0xC1, 0x40, 0x58, 0x22, 0x94, 0x93, 0xD2, 0x25, 0x30, 0xF4, 0xDB,
    0xFA, 0x33, 0x6F, 0x6E, 0x0A, 0xC9, 0x25, 0x13, 0x95, 0x43, 0xAE, 0xD4, 0x4C, 0xCE, 0x7C, 0x37,
    0x20, 0xFD, 0x51, 0xF6, 0x94, 0x58, 0x70, 0x5A, 0xC6, 0x8C, 0xD4, 0xFE, 0x6B, 0x6B, 0x13, 0xAB,
    0xDC, 0x97, 0x46, 0x51, 0x29, 0x69, 0x32, 0x84, 0x54, 0xF1, 0x8F, 0xAF, 0x8C, 0x59, 0x5F, 0x64,
    0x24, 0x77, 0xFE, 0x96, 0xBB, 0x2A, 0x94, 0x1D, 0x5B, 0xCD, 0x1D, 0x4A, 0xC8, 0xCC, 0x49, 0x88,
    0x07, 0x08, 0xFA, 0x9B, 0x37, 0x8E, 0x3C, 0x4F, 0x3A, 0x90, 0x60, 0xBE, 0xE6, 0x7C, 0xF9, 0xA4,
    0xA4, 0xA6, 0x95, 0x81, 0x10, 0x51, 0x90, 0x7E, 0x16, 0x27, 0x53, 0xB5, 0x6B, 0x0F, 0x6B, 0x41,
    0x0D, 0xBA, 0x74, 0xD8, 0xA8, 0x4B, 0x2A, 0x14, 0xB3, 0x14, 0x4E, 0x0E, 0xF1, 0x28, 0x47, 0x54,
    0xFD, 0x17, 0xED, 0x95, 0x0D, 0x59, 0x65, 0xB4, 0xB9, 0xDD, 0x46, 0x58, 0x2D, 0xB1, 0x17, 0x8D,
    0x16, 0x9C, 0x6B, 0xC4, 0x65, 0xB0, 0xD6, 0xFF, 0x9C, 0xA3, 0x92, 0x8F, 0xEF, 0x5B, 0x9A, 0xE4,
    0xE4, 0x18, 0xFC, 0x15, 0xE8, 0x3E, 0xBE, 0xA0, 0xF8, 0x7F, 0xA9, 0xFF, 0x5E, 0xED, 0x70, 0x05,
    0x0D, 0xED, 0x28, 0x49, 0xF4, 0x7B, 0xF9, 0x59, 0xD9, 0x56, 0x85, 0x0C, 0xE9, 0x29, 0x85, 0x1F,
    0x0D, 0x81, 0x15, 0xF6, 0x35, 0xB1, 0x05, 0xEE, 0x2E, 0x4E, 0x15, 0xD0, 0x4B, 0x24, 0x54, 0xBF,
    0x6F, 0x4F, 0xAD, 0xF0, 0x34, 0xB1, 0x04, 0x03, 0x11, 0x9C, 0xD8, 0xE3, 0xB9, 0x2F, 0xCC, 0x5B))

  if (identical(good_prime, prime_bytes)) {
    if (g %in% c(3, 4, 5, 7)) {
      return()  # It's good
    }
  }

  check_prime_and_good_check(as.integer(prime_bytes, 'big'), g)
}

#' Is Good Large
#'
#' Checks if a number is good and large relative to p.
#'
#' @param number An integer.
#' @param p An integer.
#' @return A logical value.
is_good_large <- function(number, p) {
  return(number > 0 && p - number > 0)
}

SIZE_FOR_HASH <- 256

#' Num Bytes for Hash
#'
#' Prepends zero bytes to make the number 256 bytes.
#'
#' @param number A raw vector.
#' @return A raw vector.
num_bytes_for_hash <- function(number) {
  return(c(raw(SIZE_FOR_HASH - length(number)), number))
}

#' Big Num for Hash
#'
#' Converts an integer to 256 bytes big-endian.
#'
#' @param g An integer.
#' @return A raw vector.
big_num_for_hash <- function(g) {
  return(as.raw(intToBits(g)[1:256]))  # Simplified, adjust for big-endian
}

#' SHA256
#'
#' Computes SHA256 hash of concatenated inputs.
#'
#' @param ... Raw vectors to hash.
#' @return A raw vector of the hash.
sha256 <- function(...) {
  args <- list(...)
  hash <- digest::digest(do.call(c, args), algo = "sha256", serialize = FALSE, raw = TRUE)
  return(hash)
}

#' Is Good Mod Exp First
#'
#' Checks if modexp is good for modular exponentiation.
#'
#' @param modexp An integer.
#' @param prime An integer.
#' @return A logical value.
is_good_mod_exp_first <- function(modexp, prime) {
  diff <- prime - modexp
  min_diff_bits_count <- 2048 - 64
  max_mod_exp_size <- 256
  if (diff < 0 ||
      bitwLength(diff) < min_diff_bits_count ||
      bitwLength(modexp) < min_diff_bits_count ||
      ((bitwLength(modexp) + 7) %/% 8) > max_mod_exp_size) {
    return(FALSE)
  }
  return(TRUE)
}

#' XOR
#'
#' Performs XOR on two raw vectors.
#'
#' @param a A raw vector.
#' @param b A raw vector.
#' @return A raw vector.
xor <- function(a, b) {
  return(as.raw(bitwXor(as.integer(a), as.integer(b))))
}

#' PBKDF2 SHA512
#'
#' Computes PBKDF2 with SHA512.
#'
#' @param password A raw vector.
#' @param salt A raw vector.
#' @param iterations An integer.
#' @return A raw vector.
pbkdf2sha512 <- function(password, salt, iterations) {
  return(openssl::pbkdf2(password, salt, iterations, 64, "sha512"))
}

#' Compute Hash
#'
#' Computes the hash for password KDF.
#'
#' @param algo The algorithm object.
#' @param password A string.
#' @return A raw vector.
compute_hash <- function(algo, password) {
  hash1 <- sha256(algo$salt1, charToRaw(password), algo$salt1)
  hash2 <- sha256(algo$salt2, hash1, algo$salt2)
  hash3 <- pbkdf2sha512(hash2, algo$salt1, 100000)
  return(sha256(algo$salt2, hash3, algo$salt2))
}

#' Compute Digest
#'
#' Computes the digest for password.
#'
#' @param algo The algorithm object.
#' @param password A string.
#' @return A raw vector.
compute_digest <- function(algo, password) {
  tryCatch({
    check_prime_and_good(algo$p, algo$g)
  }, error = function(e) {
    stop('bad p/g in password')
  })

  value <- pow(algo$g,
               as.integer(compute_hash(algo, password), 'big'),
               as.integer(algo$p, 'big'))

  return(big_num_for_hash(value))
}

#' Compute Check
#'
#' Computes the check for SRP password.
#'
#' @param request The password request object.
#' @param password A string.
#' @return An InputCheckPasswordSRP object.
compute_check <- function(request, password) {
  algo <- request$current_algo
  if (!inherits(algo, "PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow")) {
    stop(sprintf('unsupported password algorithm %s', class(algo)))
  }

  pw_hash <- compute_hash(algo, password)

  p <- as.integer(algo$p, 'big')
  g <- algo$g
  B <- as.integer(request$srp_B, 'big')
  tryCatch({
    check_prime_and_good(algo$p, g)
  }, error = function(e) {
    stop('bad p/g in password')
  })

  if (!is_good_large(B, p)) {
    stop('bad b in check')
  }

  x <- as.integer(pw_hash, 'big')
  p_for_hash <- num_bytes_for_hash(algo$p)
  g_for_hash <- big_num_for_hash(g)
  b_for_hash <- num_bytes_for_hash(request$srp_B)
  g_x <- pow(g, x, p)
  k <- as.integer(sha256(p_for_hash, g_for_hash), 'big')
  kg_x <- (k * g_x) %% p

  generate_and_check_random <- function() {
    random_size <- 256
    while (TRUE) {
      random <- as.raw(runif(random_size, 0, 255))
      a <- as.integer(random, 'big')
      A <- pow(g, a, p)
      if (is_good_mod_exp_first(A, p)) {
        a_for_hash <- big_num_for_hash(A)
        u <- as.integer(sha256(a_for_hash, b_for_hash), 'big')
        if (u > 0) {
          return(list(a = a, a_for_hash = a_for_hash, u = u))
        }
      }
    }
  }

  res <- generate_and_check_random()
  a <- res$a
  a_for_hash <- res$a_for_hash
  u <- res$u
  g_b <- (B - kg_x) %% p
  if (!is_good_mod_exp_first(g_b, p)) {
    stop('bad g_b')
  }

  ux <- u * x
  a_ux <- a + ux
  S <- pow(g_b, a_ux, p)
  K <- sha256(big_num_for_hash(S))
  M1 <- sha256(
    xor(sha256(p_for_hash), sha256(g_for_hash)),
    sha256(algo$salt1),
    sha256(algo$salt2),
    a_for_hash,
    b_for_hash,
    K
  )

  return(types$InputCheckPasswordSRP(
    request$srp_id, a_for_hash, M1))
}


#' Get Input Media
#'
#' Similar to \code{get_input_peer}, but for media.
#'
#' If the media is \code{InputFile} and \code{is_photo} is known to be \code{TRUE},
#' it will be treated as an \code{InputMediaUploadedPhoto}. Else, the rest
#' of parameters will indicate how to treat it.
#'
#' @param media The media object to convert.
#' @param is_photo Logical, whether the media is a photo. Default is \code{FALSE}.
#' @param attributes A list of attributes for the media. Default is \code{NULL}.
#' @param force_document Logical, whether to force the media as a document. Default is \code{FALSE}.
#' @param voice_note Logical, whether the media is a voice note. Default is \code{FALSE}.
#' @param video_note Logical, whether the media is a video note. Default is \code{FALSE}.
#' @param supports_streaming Logical, whether the video supports streaming. Default is \code{FALSE}.
#' @param ttl The time-to-live in seconds. Default is \code{NULL}.
#' @return An InputMedia object.
get_input_media <- function(media, is_photo = FALSE, attributes = NULL, force_document = FALSE,
              voice_note = FALSE, video_note = FALSE, supports_streaming = FALSE,
              ttl = NULL) {
  tryCatch({
  if (media$SUBCLASS_OF_ID == 0xfaf846f4) {  # crc32(b'InputMedia')
    return(media)
  } else if (media$SUBCLASS_OF_ID == 0x846363e0) {  # crc32(b'InputPhoto')
    return(types$InputMediaPhoto(media, ttl_seconds = ttl))
  } else if (media$SUBCLASS_OF_ID == 0xf33fdb68) {  # crc32(b'InputDocument')
    return(types$InputMediaDocument(media, ttl_seconds = ttl))
  }
  }, error = function(e) {
  # AttributeError equivalent
  })

  if (inherits(media, "MessageMediaPhoto")) {
  return(types$InputMediaPhoto(
    id = get_input_photo(media$photo),
    spoiler = media$spoiler,
    ttl_seconds = ttl %||% media$ttl_seconds
  ))
  }

  if (inherits(media, c("Photo", "photos.Photo", "PhotoEmpty"))) {
  return(types$InputMediaPhoto(
    id = get_input_photo(media),
    ttl_seconds = ttl
  ))
  }

  if (inherits(media, "MessageMediaDocument")) {
  return(types$InputMediaDocument(
    id = get_input_document(media$document),
    spoiler = media$spoiler,
    ttl_seconds = ttl %||% media$ttl_seconds
  ))
  }

  if (inherits(media, c("Document", "DocumentEmpty"))) {
  return(types$InputMediaDocument(
    id = get_input_document(media),
    ttl_seconds = ttl
  ))
  }

  if (inherits(media, c("InputFile", "InputFileBig"))) {
  if (is_photo) {
    return(types$InputMediaUploadedPhoto(file = media, ttl_seconds = ttl))
  } else {
    attrs_mime <- get_attributes(
    media,
    attributes = attributes,
    force_document = force_document,
    voice_note = voice_note,
    video_note = video_note,
    supports_streaming = supports_streaming
    )
    return(types$InputMediaUploadedDocument(
    file = media, mime_type = attrs_mime[[2]], attributes = attrs_mime[[1]], force_file = force_document,
    ttl_seconds = ttl
    ))
  }
  }

  if (inherits(media, "MessageMediaGame")) {
  return(types$InputMediaGame(id = types$InputGameID(
    id = media$game$id,
    access_hash = media$game$access_hash
  )))
  }

  if (inherits(media, "MessageMediaContact")) {
  return(types$InputMediaContact(
    phone_number = media$phone_number,
    first_name = media$first_name,
    last_name = media$last_name,
    vcard = ''
  ))
  }

  if (inherits(media, "MessageMediaGeo")) {
  return(types$InputMediaGeoPoint(geo_point = get_input_geo(media$geo)))
  }

  if (inherits(media, "MessageMediaGeoLive")) {
  return(types$InputMediaGeoLive(
    geo_point = get_input_geo(media$geo),
    period = media$period,
    heading = media$heading,
    proximity_notification_radius = media$proximity_notification_radius
  ))
  }

  if (inherits(media, "MessageMediaVenue")) {
  return(types$InputMediaVenue(
    geo_point = get_input_geo(media$geo),
    title = media$title,
    address = media$address,
    provider = media$provider,
    venue_id = media$venue_id,
    venue_type = ''
  ))
  }

  if (inherits(media, "MessageMediaDice")) {
  return(types$InputMediaDice(media$emoticon))
  }

  if (inherits(media, c(
  "MessageMediaEmpty", "MessageMediaUnsupported",
  "ChatPhotoEmpty", "UserProfilePhotoEmpty",
  "ChatPhoto", "UserProfilePhoto"
  ))) {
  return(types$InputMediaEmpty())
  }

  if (inherits(media, "Message")) {
  return(get_input_media(media$media, is_photo = is_photo, ttl = ttl))
  }

  if (inherits(media, "MessageMediaPoll")) {
  if (media$poll$quiz) {
    if (length(media$results$results) == 0) {
    # A quiz has correct answers, which we don't know until answered.
    # If the quiz hasn't been answered we can't reconstruct it properly.
    stop('Cannot cast unanswered quiz to any kind of InputMedia.')
    }
    correct_answers <- sapply(media$results$results, function(r) if (r$correct) r$option else NULL)
    correct_answers <- correct_answers[!sapply(correct_answers, is.null)]
  } else {
    correct_answers <- NULL
  }

  return(types$InputMediaPoll(
    poll = media$poll,
    correct_answers = correct_answers,
    solution = media$results$solution,
    solution_entities = media$results$solution_entities
  ))
  }

  if (inherits(media, "Poll")) {
  return(types$InputMediaPoll(media))
  }

  raise_cast_fail(media, 'InputMedia')
}

#' Get Input Message
#'
#' Similar to \code{get_input_peer}, but for input messages.
#'
#' @param message The message object or ID to convert.
#' @return An InputMessage object.
get_input_message <- function(message) {
  tryCatch({
  if (is.integer(message)) {  # This case is really common too
    return(types$InputMessageID(message))
  } else if (message$SUBCLASS_OF_ID == 0x54b6bcc5) {  # crc32(b'InputMessage')
    return(message)
  } else if (message$SUBCLASS_OF_ID == 0x790009e3) {  # crc32(b'Message')
    return(types$InputMessageID(message$id))
  }
  }, error = function(e) {
  # Pass
  })

  raise_cast_fail(message, 'InputMessage')
}


#' Get Input Group Call
#'
#' Similar to \code{get_input_peer}, but for input calls.
#'
#' @param call The call object to convert.
#' @return An InputGroupCall object.
get_input_group_call <- function(call) {
  tryCatch({
    if (call$SUBCLASS_OF_ID == 0x58611ab1) {  # crc32(b'InputGroupCall')
      return(call)
    } else if (call$SUBCLASS_OF_ID == 0x20b4f320) {  # crc32(b'GroupCall')
      return(types$InputGroupCall(id = call$id, access_hash = call$access_hash))
    }
  }, error = function(e) {
    raise_cast_fail(call, 'InputGroupCall')
  })
}

#' Get Entity Pair
#'
#' Returns a list of \code{(entity, input_entity)} for the given entity ID.
#'
#' @param entity_id The entity ID.
#' @param entities A list or environment of entities.
#' @param cache A cache object.
#' @param get_input_peer A function to get input peer, defaults to \code{get_input_peer}.
#' @return A list containing entity and input_entity, or NULLs if not found.
get_entity_pair <- function(entity_id, entities, cache, get_input_peer = get_input_peer) {
  if (is.null(entity_id)) {
    return(list(NULL, NULL))
  }

  entity <- entities[[as.character(entity_id)]]
  input_entity <- NULL
  tryCatch({
    resolved_id <- resolve_id(entity_id)[[1]]
    cached <- cache$get(resolved_id)
    input_entity <- cached$`_as_input_peer`()
  }, error = function(e) {
    # AttributeError is unlikely, so another error won't hurt
    tryCatch({
      input_entity <- get_input_peer(entity)
    }, error = function(e2) {
      input_entity <- NULL
    })
  })

  return(list(entity, input_entity))
}

#' Get Message ID
#'
#' Similar to \code{get_input_peer}, but for message IDs.
#'
#' @param message The message object or ID.
#' @return The message ID as an integer, or NULL if invalid.
get_message_id <- function(message) {
  if (is.null(message)) {
    return(NULL)
  }

  if (is.integer(message)) {
    return(message)
  }

  if (inherits(message, "InputMessageID")) {
    return(message$id)
  }

  tryCatch({
    if (message$SUBCLASS_OF_ID == 0x790009e3) {  # hex(crc32(b'Message')) = 0x790009e3
      return(message$id)
    }
  }, error = function(e) {
    # Pass
  })

  stop('Invalid message type: ', typeof(message))
}


#' Get Metadata from File
#'
#' This function attempts to extract metadata from a file using available libraries.
#' It supports file paths (strings), raw bytes, or file-like objects. If the file is not
#' seekable or if metadata extraction fails, it returns NULL. This is a port from the
#' Python hachoir-based implementation, adapted to R using the exiftoolr package for
#' metadata extraction where possible.
#'
#' @param file The file to analyze. Can be a character string (file path), a raw vector
#'   (bytes), or a file connection object.
#' @return A list containing metadata if extraction succeeds, otherwise NULL.
#' @examples
#' \dontrun{
#' # Assuming exiftoolr is installed and file exists
#' metadata <- get_metadata("example.mp3")
#' if (!is.null(metadata)) {
#'   print(metadata)
#' }
#' }
get_metadata <- function(file) {
  # Check if required package is available (equivalent to checking hachoir in Python)
  if (!requireNamespace("exiftoolr", quietly = TRUE)) {
    return(NULL)
  }

  stream <- NULL
  close_stream <- TRUE
  seekable <- TRUE

  # Attempt to extract metadata, catching exceptions
  tryCatch({
    # Handle different input types
    if (is.character(file)) {
      stream <- file(file, "rb")
    } else if (is.raw(file)) {
      stream <- rawConnection(file, "rb")
    } else {
      stream <- file
      close_stream <- FALSE
    }

    # Check if seekable
    if (inherits(stream, "connection")) {
      seekable <- isSeekable(stream)
    } else {
      seekable <- FALSE
    }

    if (!seekable) {
      return(NULL)
    }

    # Save current position
    pos <- seek(stream)
    filename <- if (inherits(file, "connection") && !is.null(attr(file, "name"))) attr(file, "name") else ""

    # Extract metadata using exiftoolr (approximating hachoir functionality)
    # Note: exiftoolr returns a data.frame or list; adjust as needed
    metadata <- exiftoolr::exiftool(stream, args = c("-j", "-b"))

    # Convert to list if it's a data.frame
    if (is.data.frame(metadata)) {
      metadata <- as.list(metadata)
    }

    return(metadata)

  }, error = function(e) {
    warning(sprintf("Failed to analyze %s: %s", file, conditionMessage(e)))
    return(NULL)
  }, finally = {
    if (!is.null(stream) && close_stream) {
      close(stream)
    } else if (!is.null(stream) && seekable) {
      seek(stream, pos)
    }
  })
}

#' Get Attributes for File
#'
#' This function retrieves a list of attributes for the given file and the MIME type as a list.
#' It determines attributes such as filename, audio, and video based on the file's metadata and parameters.
#'
#' @param file The file object or path. Can be a string or an object with a 'name' attribute.
#' @param attributes A list of user-provided attributes to override defaults. Default is NULL.
#' @param mime_type The MIME type of the file. If NULL, it will be guessed. Default is NULL.
#' @param force_document Logical, whether to force the file as a document. Default is FALSE.
#' @param voice_note Logical, whether the file is a voice note. Default is FALSE.
#' @param video_note Logical, whether the file is a video note. Default is FALSE.
#' @param supports_streaming Logical, whether the video supports streaming. Default is FALSE.
#' @param thumb The thumbnail file for video attributes. Default is NULL.
#' @return A list containing the attributes list and the MIME type.
#' @examples
#' \dontrun{
#' # Assuming types and helper functions are defined
#' attrs <- get_attributes("example.mp3", voice_note = TRUE)
#' }
get_attributes <- function(file, attributes = NULL, mime_type = NULL,
              force_document = FALSE, voice_note = FALSE, video_note = FALSE,
              supports_streaming = FALSE, thumb = NULL) {
  # Determine the file name
  name <- if (is.character(file)) file else (file$name %||% "unnamed")

  # Guess MIME type if not provided
  if (is.null(mime_type)) {
  mime_type <- mimetypes$guess_type(name)[[1]]
  }

  # Initialize attributes list
  attributes_list <- list()

  # Add filename attribute
  attributes_list <- c(attributes_list, types$DocumentAttributeFilename(basename(name)))

  # Check for audio attributes
  if (is_audio(file)) {
  m <- get_metadata(file)
  if (!is.null(m)) {
    performer <- if (m$has('author')) m$get('author') else if (m$has('artist')) m$get('artist') else NULL
    attributes_list <- c(attributes_list, types$DocumentAttributeAudio(
    voice = voice_note,
    title = if (m$has('title')) m$get('title') else NULL,
    performer = performer,
    duration = if (m$has('duration')) as.integer(m$get('duration')$seconds) else 0L
    ))
  }
  }

  # Check for video attributes if not forcing document
  if (!force_document && is_video(file)) {
  m <- get_metadata(file)
  if (!is.null(m)) {
    doc <- types$DocumentAttributeVideo(
    round_message = video_note,
    w = if (m$has('width')) m$get('width') else 1L,
    h = if (m$has('height')) m$get('height') else 1L,
    duration = if (m$has('duration')) as.integer(m$get('duration')$seconds) else 1L,
    supports_streaming = supports_streaming
    )
  } else if (!is.null(thumb)) {
    t_m <- get_metadata(thumb)
    width <- 1L
    height <- 1L
    if (!is.null(t_m) && t_m$has("width")) width <- t_m$get("width")
    if (!is.null(t_m) && t_m$has("height")) height <- t_m$get("height")
    doc <- types$DocumentAttributeVideo(
    duration = 0L, w = width, h = height, round_message = video_note,
    supports_streaming = supports_streaming
    )
  } else {
    doc <- types$DocumentAttributeVideo(
    duration = 0L, w = 1L, h = 1L, round_message = video_note,
    supports_streaming = supports_streaming
    )
  }
  attributes_list <- c(attributes_list, doc)
  }

  # Handle voice note
  if (voice_note) {
  audio_attr_idx <- which(sapply(attributes_list, function(x) inherits(x, "DocumentAttributeAudio")))
  if (length(audio_attr_idx) > 0) {
    attributes_list[[audio_attr_idx]]$voice <- TRUE
  } else {
    attributes_list <- c(attributes_list, types$DocumentAttributeAudio(duration = 0L, voice = TRUE))
  }
  }

  # Override with user-provided attributes
  if (!is.null(attributes)) {
  for (a in attributes) {
    type_a <- class(a)
    idx <- which(sapply(attributes_list, function(x) class(x) == type_a))
    if (length(idx) > 0) {
    attributes_list[[idx]] <- a
    } else {
    attributes_list <- c(attributes_list, a)
    }
  }
  }

  # Ensure MIME type is set
  if (is.null(mime_type)) {
  mime_type <- 'application/octet-stream'
  }

  return(list(attributes_list, mime_type))
}


#' Sanitize Parse Mode
#'
#' Converts the given parse mode into an object with
#' \code{parse} and \code{unparse} callable properties.
#'
#' @param mode The parse mode to sanitize. Can be NULL, an object with parse and unparse methods,
#'   a callable function, or a string ('md', 'markdown', 'htm', 'html').
#' @return An object with parse and unparse methods, or NULL if mode is NULL.
#' @examples
#' \dontrun{
#' # Assuming markdown and html are defined elsewhere
#' mode <- sanitize_parse_mode('markdown')
#' parsed <- mode$parse('**bold**')
#' }
sanitize_parse_mode <- function(mode) {
  if (is.null(mode)) {
    return(NULL)
  }

  if (all(c('parse', 'unparse') %in% names(mode)) &&
      all(sapply(c(mode$parse, mode$unparse), is.function))) {
    return(mode)
  } else if (is.function(mode)) {
    custom_mode <- CustomMode$new()
    custom_mode$parse <- mode
    return(custom_mode)
  } else if (is.character(mode)) {
    mode_lower <- tolower(mode)
    if (mode_lower %in% c('md', 'markdown')) {
      return(markdown)
    } else if (mode_lower %in% c('htm', 'html')) {
      return(html)
    } else {
      stop(sprintf('Unknown parse mode %s', mode))
    }
  } else {
    stop(sprintf('Invalid parse mode type %s', typeof(mode)))
  }
}

#' @title CustomMode
#' @description An R6 class representing a custom parse mode with parse and unparse methods.
#' This class is used when a callable function is provided as the parse mode.
#' @field parse A function to parse text into entities.
#' @field unparse A function to unparse entities back to text (raises an error by default).
CustomMode <- R6::R6Class(
  "CustomMode",
  public = list(
    #' @field parse A function to parse text into entities.
    parse = NULL,

    #' @description Initialize the CustomMode object.
    initialize = function() {
      # Initialization if needed
    },

    #' @description Unparse entities back to text.
    #' @param text The text string.
    #' @param entities The entities list.
    #' @return Raises NotImplementedError.
    unparse = function(text, entities) {
      stop("NotImplementedError")
    }
  )
)


#' Get Input Location
#'
#' Similar to \code{get_input_peer}, but for input messages.
#'
#' Note that this returns a list \code{(dc_id, location)}, the
#' \code{dc_id} being present if known.
#'
#' @param location The location object.
#' @return A list with elements \code{dc_id} and \code{location}.
get_input_location <- function(location) {
  info <- get_file_info(location)
  return(list(dc_id = info$dc_id, location = info$location))
}

#' Get File Info
#'
#' Internal function to get file info.
#'
#' @param location The location object.
#' @return A list with elements \code{dc_id}, \code{location}, and \code{size}.
get_file_info <- function(location) {
  tryCatch({
    if (location$SUBCLASS_OF_ID == 0x1523d462) {
      return(list(dc_id = NULL, location = location, size = NULL))
    }
  }, error = function(e) {
    raise_cast_fail(location, 'InputFileLocation')
  })

  if (inherits(location, "Message")) {
    location <- location$media
  }

  if (inherits(location, "MessageMediaDocument")) {
    location <- location$document
  } else if (inherits(location, "MessageMediaPhoto")) {
    location <- location$photo
  }

  if (inherits(location, "Document")) {
    return(list(
      dc_id = location$dc_id,
      location = types$InputDocumentFileLocation(
        id = location$id,
        access_hash = location$access_hash,
        file_reference = location$file_reference,
        thumb_size = ''  # Presumably to download one of its thumbnails
      ),
      size = location$size
    ))
  } else if (inherits(location, "Photo")) {
    last_size <- location$sizes[[length(location$sizes)]]
    return(list(
      dc_id = location$dc_id,
      location = types$InputPhotoFileLocation(
        id = location$id,
        access_hash = location$access_hash,
        file_reference = location$file_reference,
        thumb_size = last_size$type
      ),
      size = photo_size_byte_count(last_size)
    ))
  }

  raise_cast_fail(location, 'InputFileLocation')
}

#' Get File Extension
#'
#' Gets the extension for the given file, which can be either a
#' string or an open file (which has a \code{name} attribute).
#'
#' @param file The file path or object.
#' @return The file extension as a string.
get_file_extension <- function(file) {
  if (is.character(file)) {
    return(tools::file_ext(file))
  } else if (inherits(file, "fs_path")) {  # Assuming fs package for path objects
    return(fs::path_ext(file))
  } else if (!is.null(file$name)) {
    return(get_file_extension(file$name))
  } else {
    return(get_extension(file))
  }
}


#' Check if File is an Image
#'
#' Returns `TRUE` if the file extension looks like an image file to Telegram.
#' If the extension does not match common image formats (png, jpg, jpeg),
#' it checks if resolving the file as a bot file ID returns a Photo object.
#'
#' @param file The file path or object to check.
#' @return A logical value indicating whether the file is an image.
is_image <- function(file) {
  ext <- get_extension(file)
  if (grepl("^\\.(png|jpe?g)$", ext, ignore.case = TRUE)) {
    return(TRUE)
  } else {
    resolved <- resolve_bot_file_id(file)
    return(inherits(resolved, "Photo"))
  }
}

#' Check if File is a GIF
#'
#' Returns `TRUE` if the file extension looks like a GIF file to Telegram.
#'
#' @param file The file path or object to check.
#' @return A logical value indicating whether the file is a GIF.
is_gif <- function(file) {
  ext <- get_extension(file)
  return(grepl("^\\.gif$", ext, ignore.case = TRUE))
}

#' Check if File is Audio
#'
#' Returns `TRUE` if the file has an audio mime type, either from metadata
#' or guessed from the file extension.
#'
#' @param file The file path or object to check.
#' @return A logical value indicating whether the file is audio.
is_audio <- function(file) {
  ext <- get_extension(file)
  if (!ext) {
    metadata <- get_metadata(file)
    if (!is.null(metadata) && metadata$has('mime_type')) {
      return(startsWith(metadata$get('mime_type'), 'audio/'))
    } else {
      return(FALSE)
    }
  } else {
    dummy_file <- paste0('a', ext)
    mime_type <- mimetypes$guess_type(dummy_file)[[1]]
    return(startsWith(mime_type %||% '', 'audio/'))
  }
}

#' Check if File is Video
#'
#' Returns `TRUE` if the file has a video mime type, either from metadata
#' or guessed from the file extension.
#'
#' @param file The file path or object to check.
#' @return A logical value indicating whether the file is video.
is_video <- function(file) {
  ext <- get_extension(file)
  if (!ext) {
    metadata <- get_metadata(file)
    if (!is.null(metadata) && metadata$has('mime_type')) {
      return(startsWith(metadata$get('mime_type'), 'video/'))
    } else {
      return(FALSE)
    }
  } else {
    dummy_file <- paste0('a', ext)
    mime_type <- mimetypes$guess_type(dummy_file)[[1]]
    return(startsWith(mime_type %||% '', 'video/'))
  }
}


#' Check if Object is List-Like
#'
#' Returns `TRUE` if the given object looks like a list.
#' This function checks for common list-like objects in R, such as lists, vectors,
#' matrices, arrays, data frames, and environments, while excluding strings and raw vectors
#' to avoid false positives (similar to Python's check ignoring str/bytes).
#'
#' @param obj The object to check.
#' @return A logical value indicating whether the object is list-like.
#' @examples
#' \dontrun{
#' is_list_like(list(1, 2, 3))  # TRUE
#' is_list_like(1:10)  # TRUE
#' is_list_like("string")  # FALSE
#' is_list_like(as.raw(c(1, 2)))  # FALSE
#' }
is_list_like <- function(obj) {
  # Exclude strings and raw vectors to match Python's behavior
  if (is.character(obj) && length(obj) == 1) return(FALSE)
  if (is.raw(obj)) return(FALSE)
  # Check for common list-like types
  return(is.list(obj) || is.vector(obj) || is.matrix(obj) || is.array(obj) || is.data.frame(obj) || is.environment(obj))
}

#' Parse Phone Number
#'
#' Parses the given phone number, removing non-digit characters, and returns it as a string
#' if it consists only of digits. Returns `NULL` if invalid.
#'
#' @param phone The phone number to parse, as an integer or string.
#' @return A character string of the parsed phone number, or `NULL` if invalid.
#' @examples
#' \dontrun{
#' parse_phone(1234567890)  # "1234567890"
#' parse_phone("+1 (234) 567-890")  # "1234567890"
#' parse_phone("invalid")  # NULL
#' }
parse_phone <- function(phone) {
  if (is.integer(phone)) {
    return(as.character(phone))
  } else {
    phone <- gsub("[+()\\s-]", "", as.character(phone))
    if (grepl("^\\d+$", phone)) {
      return(phone)
    }
  }
  return(NULL)
}

#' Parse Username
#'
#' Parses the given username or channel access hash from a string, username, or URL.
#' Returns a list consisting of the stripped, lowercase username and a logical indicating
#' whether it is a joinchat/hash (in which case it is not lowercased).
#' Returns `list(NULL, FALSE)` if the username or link is not valid.
#'
#' @param username The username string to parse.
#' @return A list with two elements: the parsed username (or `NULL`) and a logical for invite status.
#' @examples
#' \dontrun{
#' parse_username("@username")  # list("username", FALSE)
#' parse_username("https://t.me/joinchat/abc123")  # list("abc123", TRUE)
#' parse_username("invalid")  # list(NULL, FALSE)
#' }
parse_username <- function(username) {
  username <- trimws(username)
  # Define regex patterns (translated from Python)
  username_re <- "@|(?:https?://)?(?:www\\.)?(?:telegram\\.(?:me|dog)|t\\.me)/(@|\\+|joinchat/)?"
  tg_join_re <- "tg://(join)\\?invite="
  valid_username_re <- "^[a-z](?:[a-zA-Z0-9_]{0,30})?[a-z0-9]$"  # Simplified approximation without negative lookahead

  # Check USERNAME_RE
  m <- regexpr(username_re, username, perl = TRUE)
  if (m != -1) {
    match_start <- m
    match_length <- attr(m, "match.length")
    username_part <- substr(username, match_start + match_length, nchar(username))
    group1 <- substr(username, match_start, match_start + match_length - 1)
    is_invite <- grepl("@|\\+|joinchat", group1)
    if (is_invite) {
      return(list(username_part, TRUE))
    } else {
      username_part <- sub("/$", "", username_part)
      if (grepl(valid_username_re, username_part, ignore.case = TRUE)) {
        return(list(tolower(username_part), FALSE))
      }
    }
  }

  # Check TG_JOIN_RE
  m <- regexpr(tg_join_re, username, perl = TRUE)
  if (m != -1) {
    match_start <- m
    match_length <- attr(m, "match.length")
    username_part <- substr(username, match_start + match_length, nchar(username))
    return(list(username_part, TRUE))
  }

  return(list(NULL, FALSE))
}


#' Get Inner Text Surrounded by Entities
#'
#' Extracts the inner text that is surrounded by the given entities.
#' For example, if text = 'hey!' and entity has offset=2, length=2,
#' it returns 'y!'.
#'
#' @param text A character string representing the original text.
#' @param entities A list of entity objects, each with 'offset' and 'length' fields.
#' @return A list of character strings, each being the text surrounded by the corresponding entity.
get_inner_text <- function(text, entities) {
  text <- add_surrogate(text)
  result <- list()
  for (e in entities) {
    start <- e$offset + 1  # R is 1-indexed
    end <- e$offset + e$length
    result <- c(result, del_surrogate(substr(text, start, end)))
  }
  return(result)
}

#' Get Peer Object
#'
#' Converts the given peer representation into a Peer object (PeerUser, PeerChat, or PeerChannel).
#' Handles various input types such as integers, resolved peers, dialogs, etc.
#'
#' @param peer The peer object or integer to convert.
#' @return A Peer object (PeerUser, PeerChat, or PeerChannel).
get_peer <- function(peer) {
  tryCatch({
    if (is.integer(peer)) {
      pid_cls <- resolve_id(peer)
      return(pid_cls[[2]](pid_cls[[1]]))
    } else if (peer$SUBCLASS_OF_ID == 0x2d45687) {
      return(peer)
    } else if (inherits(peer, c("ResolvedPeer", "InputNotifyPeer", "TopPeer", "Dialog", "DialogPeer"))) {
      return(peer$peer)
    } else if (inherits(peer, "ChannelFull")) {
      return(types$PeerChannel(peer$id))
    } else if (inherits(peer, "UserEmpty")) {
      return(types$PeerUser(peer$id))
    } else if (inherits(peer, "ChatEmpty")) {
      return(types$PeerChat(peer$id))
    }

    if (peer$SUBCLASS_OF_ID %in% c(0x7d7c6f86, 0xd9c7fc18)) {
      # ChatParticipant, ChannelParticipant
      return(types$PeerUser(peer$user_id))
    }

    peer <- get_input_peer(peer, allow_self = FALSE, check_hash = FALSE)
    if (inherits(peer, c("InputPeerUser", "InputPeerUserFromMessage"))) {
      return(types$PeerUser(peer$user_id))
    } else if (inherits(peer, "InputPeerChat")) {
      return(types$PeerChat(peer$chat_id))
    } else if (inherits(peer, c("InputPeerChannel", "InputPeerChannelFromMessage"))) {
      return(types$PeerChannel(peer$channel_id))
    }
  }, error = function(e) {
    # Handle AttributeError or TypeError equivalent
  })
  raise_cast_fail(peer, 'Peer')
}


#' Get Peer ID
#'
#' Convert the given peer into its marked ID by default.
#'
#' This "mark" comes from the "bot api" format, and with it the peer type
#' can be identified back. User ID is left unmodified, chat ID is negated,
#' and channel ID is "prefixed" with -100:
#'
#' * \code{user_id}
#' * \code{-chat_id}
#' * \code{-100channel_id}
#'
#' The original ID and the peer type class can be returned with
#' a call to \code{resolve_id(marked_id)}.
#'
#' @param peer The peer object or integer to convert.
#' @param add_mark Logical, whether to add the mark (default TRUE).
#' @return The marked or unmarked peer ID as an integer.
#' @examples
#' \dontrun{
#' # Assuming peer is a PeerUser object
#' id <- get_peer_id(peer)
#' }
get_peer_id <- function(peer, add_mark = TRUE) {
  # First we assert it's a Peer TLObject, or early return for integers
  if (is.integer(peer)) {
    return(if (add_mark) peer else resolve_id(peer)[[1]])
  }

  # Tell the user to use their client to resolve InputPeerSelf if we got one
  if (inherits(peer, "InputPeerSelf")) {
    stop("Cannot cast InputPeerSelf to int (you might want to use client.get_peer_id)")
  }

  tryCatch({
    peer <- get_peer(peer)
  }, error = function(e) {
    stop("Cannot cast ", class(peer), " to int")
  })

  if (inherits(peer, "PeerUser")) {
    return(peer$user_id)
  } else if (inherits(peer, "PeerChat")) {
    # Check in case the user mixed things up to avoid blowing up
    if (!(0 < peer$chat_id && peer$chat_id <= 9999999999)) {
      peer$chat_id <- resolve_id(peer$chat_id)[[1]]
    }
    return(if (add_mark) -peer$chat_id else peer$chat_id)
  } else {  # PeerChannel
    # Check in case the user mixed things up to avoid blowing up
    if (!(0 < peer$channel_id && peer$channel_id <= 9999999999)) {
      peer$channel_id <- resolve_id(peer$channel_id)[[1]]
    }
    if (!add_mark) {
      return(peer$channel_id)
    }
    # Growing backwards from -100_0000_000_000 indicates it's a channel
    return(-(1000000000000 + peer$channel_id))
  }
}


#' Resolve Marked ID
#'
#' Given a marked ID, returns the original ID and its Peer type.
#'
#' @param marked_id An integer representing the marked ID.
#' @return A list containing the original ID and the Peer type (e.g., types$PeerUser, types$PeerChat, or types$PeerChannel).
resolve_id <- function(marked_id) {
  if (marked_id >= 0) {
    return(list(marked_id, types$PeerUser))
  }

  marked_id <- -marked_id
  if (marked_id > 1000000000000) {
    marked_id <- marked_id - 1000000000000
    return(list(marked_id, types$PeerChannel))
  } else {
    return(list(marked_id, types$PeerChat))
  }
}

#' Decode Run-Length-Encoded Data
#'
#' Decodes run-length-encoded data.
#'
#' @param data A raw vector representing the encoded data.
#' @return A raw vector of the decoded data.
rle_decode <- function(data) {
  if (length(data) == 0) {
    return(data)
  }

  new_data <- raw(0)
  last <- raw(0)
  for (cur in data) {
    cur <- as.raw(cur)
    if (length(last) > 0 && last == as.raw(0)) {
      new_data <- c(new_data, rep(last, as.integer(cur)))
      last <- raw(0)
    } else {
      new_data <- c(new_data, last)
      last <- cur
    }
  }
  return(c(new_data, last))
}

#' Encode Data with Run-Length Encoding
#'
#' Encodes a raw vector using run-length encoding.
#'
#' @param string A raw vector to encode.
#' @return A raw vector of the encoded data.
rle_encode <- function(string) {
  new_data <- raw(0)
  count <- 0
  for (cur in string) {
    cur <- as.raw(cur)
    if (cur == as.raw(0)) {
      count <- count + 1
    } else {
      if (count > 0) {
        new_data <- c(new_data, as.raw(0), as.raw(count))
        count <- 0
      }
      new_data <- c(new_data, cur)
    }
  }
  if (count != 0) {
    new_data <- c(new_data, as.raw(0), as.raw(count))
  }
  return(new_data)
}


#' Decode Telegram Base64
#'
#' Decodes a url-safe base64-encoded string into its bytes
#' by first adding the stripped necessary padding characters.
#'
#' This is the way Telegram shares binary data as strings,
#' such as Bot API-style file IDs or invite links.
#'
#' @param string A character string representing the url-safe base64-encoded data.
#' @return A raw vector of bytes if decoding succeeds, otherwise NULL.
decode_telegram_base64 <- function(string) {
  tryCatch({
    # Add padding to make length multiple of 4
    padded <- paste0(string, strrep("=", (4 - nchar(string) %% 4) %% 4))
    # Convert url-safe to standard base64
    standard <- chartr("-_", "+/", padded)
    # Decode
    base64enc::base64decode(standard)
  }, error = function(e) {
    NULL  # not valid base64, not valid ascii, not a string
  })
}

#' Encode Telegram Base64
#'
#' Inverse operation for `decode_telegram_base64`.
#' Encodes bytes into a url-safe base64 string, stripping padding.
#'
#' @param bytes A raw vector of bytes to encode.
#' @return A character string representing the url-safe base64-encoded data if encoding succeeds, otherwise NULL.
encode_telegram_base64 <- function(bytes) {
  tryCatch({
    # Encode to standard base64
    encoded <- base64enc::base64encode(bytes)
    # Convert to url-safe and strip padding
    urlsafe <- chartr("+/", "-_", encoded)
    sub("=+$", "", urlsafe)
  }, error = function(e) {
    NULL  # not valid base64, not valid ascii, not a string
  })
}


#' Resolve Bot File ID
#'
#' Given a Bot API-style `file_id`, returns the media it represents.
#' If the `file_id` is not valid, `NULL` is returned instead.
#'
#' Note that the `file_id` does not have information such as image dimensions
#' or file size, so these will be zero if present.
#'
#' For thumbnails, the photo ID and hash will always be zero.
#'
#' @param file_id A character string representing the Bot API-style file ID.
#' @return A `Document` or `Photo` object if valid, otherwise `NULL`.
resolve_bot_file_id <- function(file_id) {
  data <- rle_decode(decode_telegram_base64(file_id))
  if (is.null(data) || length(data) == 0) {
    return(NULL)
  }

  # This isn't officially documented anywhere, but
  # we assume the last byte is some kind of "version".
  version <- data[length(data)]
  data <- data[-length(data)]
  if (!(version %in% c(2, 4))) {
    return(NULL)
  }

  if ((version == 2 && length(data) == 24) || (version == 4 && length(data) == 25)) {
    con <- rawConnection(data, "rb")
    file_type <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    dc_id <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    media_id <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
    access_hash <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
    if (version == 4) {
      # TODO Figure out what the extra byte means
      extra <- readBin(con, "integer", size = 1, endian = "little", signed = TRUE)
    }
    close(con)

    if (!(1 <= dc_id && dc_id <= 5)) {
      # Valid `file_id`'s must have valid DC IDs. Since this method is
      # called when sending a file and the user may have entered a path
      # they believe is correct but the file doesn't exist, this method
      # may detect a path as "valid" bot `file_id` even when it's not.
      # By checking the `dc_id`, we greatly reduce the chances of this
      # happening.
      return(NULL)
    }

    attributes <- list()
    if (file_type == 3 || file_type == 9) {
      attributes <- c(attributes, types$DocumentAttributeAudio(
        duration = 0,
        voice = (file_type == 3)
      ))
    } else if (file_type == 4 || file_type == 13) {
      attributes <- c(attributes, types$DocumentAttributeVideo(
        duration = 0,
        w = 0,
        h = 0,
        round_message = (file_type == 13)
      ))
    } else if (file_type == 8) {
      attributes <- c(attributes, types$DocumentAttributeSticker(
        alt = '',
        stickerset = types$InputStickerSetEmpty()
      ))
    } else if (file_type == 10) {
      attributes <- c(attributes, types$DocumentAttributeAnimated())
    }

    return(types$Document(
      id = media_id,
      access_hash = access_hash,
      date = NULL,
      mime_type = '',
      size = 0,
      thumbs = NULL,
      dc_id = dc_id,
      attributes = attributes,
      file_reference = raw(0)
    ))
  } else if ((version == 2 && length(data) == 44) || (version == 4 && length(data) %in% c(49, 77))) {
    con <- rawConnection(data, "rb")
    file_type <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    dc_id <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    if (version == 2) {
      media_id <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      access_hash <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      volume_id <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      secret <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      local_id <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    } else if (length(data) == 49) {
      # TODO Figure out what the extra five bytes mean
      media_id <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      access_hash <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      volume_id <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      secret <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      local_id <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
      extra <- readBin(con, "raw", n = 5)
    } else if (length(data) == 77) {
      # See #1613.
      extra1 <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
      extra2 <- readBin(con, "raw", n = 28)
      media_id <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      access_hash <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      volume_id <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
      extra3 <- readBin(con, "raw", n = 12)
      local_id <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
      extra4 <- readBin(con, "integer", size = 1, endian = "little", signed = TRUE)
    }
    close(con)

    if (!(1 <= dc_id && dc_id <= 5)) {
      return(NULL)
    }

    # Thumbnails (small) always have ID 0; otherwise size 'x'
    photo_size <- if (media_id == 0 && access_hash == 0) 's' else 'x'
    return(types$Photo(
      id = media_id,
      access_hash = access_hash,
      file_reference = raw(0),
      date = NULL,
      sizes = list(types$PhotoSize(
        type = photo_size,
        w = 0,
        h = 0,
        size = 0
      )),
      dc_id = dc_id,
      has_stickers = NULL
    ))
  } else {
    return(NULL)
  }
}


#' Pack Bot File ID
#'
#' Inverse operation for `resolve_bot_file_id`. This function takes a Document or Photo
#' object and returns a variable-length base64-encoded `file_id` string. If an invalid
#' parameter is given, it returns NULL.
#'
#' @param file A Document or Photo object (or MessageMediaDocument/MessageMediaPhoto wrapper).
#' @return A base64-encoded string representing the file ID, or NULL if invalid.
pack_bot_file_id <- function(file) {
  if (inherits(file, "MessageMediaDocument")) {
    file <- file$document
  } else if (inherits(file, "MessageMediaPhoto")) {
    file <- file$photo
  }

  if (inherits(file, "Document")) {
    file_type <- 5
    for (attribute in file$attributes) {
      if (inherits(attribute, "DocumentAttributeAudio")) {
        file_type <- if (attribute$voice) 3 else 9
      } else if (inherits(attribute, "DocumentAttributeVideo")) {
        file_type <- if (attribute$round_message) 13 else 4
      } else if (inherits(attribute, "DocumentAttributeSticker")) {
        file_type <- 8
      } else if (inherits(attribute, "DocumentAttributeAnimated")) {
        file_type <- 10
      }
      if (file_type != 5) break
    }

    # Pack as little-endian: int (4), int (4), unsigned long long (8), unsigned long long (8), byte (1)
    con <- rawConnection(raw(0), "wb")
    writeBin(as.integer(file_type), con, size = 4, endian = "little")
    writeBin(as.integer(file$dc_id), con, size = 4, endian = "little")
    writeBin(as.integer(file$id), con, size = 8, endian = "little")
    writeBin(as.integer(file$access_hash), con, size = 8, endian = "little")
    writeBin(as.integer(2), con, size = 1, endian = "little")
    data <- rawConnectionValue(con)
    close(con)

    return(encode_telegram_base64(rle_encode(data)))
  } else if (inherits(file, "Photo")) {
    size <- NULL
    for (s in rev(file$sizes)) {
      if (inherits(s, c("PhotoSize", "PhotoCachedSize"))) {
        size <- s
        break
      }
    }

    if (is.null(size)) return(NULL)

    size <- size$location

    # Pack as little-endian: int (4), int (4), unsigned long long (8), unsigned long long (8), unsigned long long (8), unsigned long long (8), int (4), byte (1)
    con <- rawConnection(raw(0), "wb")
    writeBin(as.integer(2), con, size = 4, endian = "little")
    writeBin(as.integer(file$dc_id), con, size = 4, endian = "little")
    writeBin(as.integer(file$id), con, size = 8, endian = "little")
    writeBin(as.integer(file$access_hash), con, size = 8, endian = "little")
    writeBin(as.integer(size$volume_id), con, size = 8, endian = "little")
    writeBin(as.integer(0), con, size = 8, endian = "little")
    writeBin(as.integer(size$local_id), con, size = 4, endian = "little")
    writeBin(as.integer(2), con, size = 1, endian = "little")
    data <- rawConnectionValue(con)
    close(con)

    return(encode_telegram_base64(rle_encode(data)))
  } else {
    return(NULL)
  }
}


#' Resolve Invite Link
#'
#' Resolves the given invite link. Returns a list of
#' \code{(link creator user id, global chat id, random int)}.
#'
#' Note that for broadcast channels or with the newest link format, the link
#' creator user ID will be zero to protect their identity. Normal chats and
#' megagroup channels will have such ID.
#'
#' Note that the chat ID may not be accurate for chats with a link that were
#' upgraded to megagroup, since the link can remain the same, but the chat
#' ID will be correct once a new link is generated.
#'
#' @param link A character string representing the invite link.
#' @return A list containing link creator user id, global chat id, random int,
#'   or a list of three NULLs if invalid.
resolve_invite_link <- function(link) {
  link_hash_is_link <- parse_username(link)
  link_hash <- link_hash_is_link[[1]]
  is_link <- link_hash_is_link[[2]]

  if (!is_link) {
    # Perhaps the user passed the link hash directly
    link_hash <- link
  }

  # Little known fact, but invite links with a
  # hex-string of bytes instead of base64 also works.
  if (grepl("^[a-fA-F0-9]+$", link_hash) && nchar(link_hash) %in% c(24, 32)) {
    payload <- as.raw(strtoi(strsplit(link_hash, "")[[1]], base = 16L))
  } else {
    payload <- decode_telegram_base64(link_hash)
  }

  tryCatch({
    if (length(payload) == 12) {
      # Unpack as big-endian: unsigned long (8 bytes), unsigned long long (8 bytes)
      con <- rawConnection(payload, "rb")
      user_id <- readBin(con, "integer", size = 8, endian = "big", signed = FALSE)
      chat_id <- readBin(con, "integer", size = 8, endian = "big", signed = FALSE)
      close(con)
      return(list(0, user_id, chat_id))
    } else if (length(payload) == 16) {
      # Unpack as big-endian: unsigned long (4 bytes), unsigned long (4 bytes), unsigned long long (8 bytes)
      con <- rawConnection(payload, "rb")
      creator_id <- readBin(con, "integer", size = 4, endian = "big", signed = FALSE)
      chat_id <- readBin(con, "integer", size = 4, endian = "big", signed = FALSE)
      random_int <- readBin(con, "integer", size = 8, endian = "big", signed = FALSE)
      close(con)
      return(list(creator_id, chat_id, random_int))
    } else {
      return(list(NULL, NULL, NULL))
    }
  }, error = function(e) {
    return(list(NULL, NULL, NULL))
  })
}


#' Resolve Inline Message ID
#'
#' Resolves an inline message ID. Returns a list of
#' \code{(message_id, peer, dc_id, access_hash)}.
#'
#' The \code{peer} may either be a \code{PeerUser} referencing
#' the user who sent the message via the bot in a private
#' conversation or small group chat, or a \code{PeerChannel}
#' if the message was sent in a channel.
#'
#' The \code{access_hash} does not have any use yet.
#'
#' @param inline_msg_id A character string representing the inline message ID.
#' @return A list containing message_id, peer, dc_id, access_hash, or NULLs if invalid.
resolve_inline_message_id <- function(inline_msg_id) {
  tryCatch({
    data <- decode_telegram_base64(inline_msg_id)
    if (is.null(data)) {
      return(list(NULL, NULL, NULL, NULL))
    }
    # Unpack as little-endian: 3 ints (4 bytes each) and 1 long long (8 bytes)
    con <- rawConnection(data, "rb")
    dc_id <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    message_id <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    pid <- readBin(con, "integer", size = 4, endian = "little", signed = TRUE)
    access_hash <- readBin(con, "integer", size = 8, endian = "little", signed = TRUE)
    close(con)

    peer <- if (pid < 0) types$PeerChannel(-pid) else types$PeerUser(pid)
    return(list(message_id, peer, dc_id, access_hash))
  }, error = function(e) {
    return(list(NULL, NULL, NULL, NULL))
  })
}

#' Get Appropriated Part Size
#'
#' Gets the appropriated part size when uploading or downloading files,
#' given an initial file size.
#'
#' @param file_size An integer representing the file size in bytes.
#' @return An integer representing the part size.
get_appropriated_part_size <- function(file_size) {
  if (file_size <= 104857600) {  # 100MB
    return(128)
  }
  if (file_size <= 786432000) {  # 750MB
    return(256)
  }
  return(512)
}


#' Encode Waveform
#'
#' Encodes the input raw vector into a 5-bit byte-string
#' to be used as a voice note's waveform. See `decode_waveform`
#' for the reverse operation.
#'
#' @param waveform A raw vector representing the waveform bytes.
#' @return A raw vector containing the encoded waveform.
#' @examples
#' \dontrun{
#'   # Send 'my.ogg' with an ascending-triangle waveform
#'   waveform <- as.raw(0:31)  # 2^5 values for 5-bit
#'   encoded <- encode_waveform(waveform)
#'   # Use encoded in attributes
#'
#'   # Send 'my.ogg' with a square waveform
#'   waveform <- rep(as.raw(c(31, 31, 15, 15, 15, 15, 31, 31)), 4)
#'   encoded <- encode_waveform(waveform)
#' }
encode_waveform <- function(waveform) {
  bits_count <- length(waveform) * 5
  bytes_count <- (bits_count + 7) %/% 8
  result <- raw(bytes_count + 1)

  for (i in seq_along(waveform)) {
    byte_index <- (i - 1) * 5 %/% 8
    bit_shift <- (i - 1) * 5 %% 8
    value <- bitwShiftL(bitwAnd(as.integer(waveform[i]), 31L), bit_shift)

    # Read the current 2 bytes as little-endian unsigned short
    if (byte_index + 1 < length(result)) {
      or_what <- readBin(result[(byte_index + 1):(byte_index + 2)], "integer", size = 2, endian = "little", signed = FALSE)
    } else {
      # Handle edge case for last byte
      or_what <- as.integer(result[byte_index + 1])
      if (byte_index + 2 <= length(result)) {
        or_what <- or_what + as.integer(result[byte_index + 2]) * 256
      }
    }

    or_what <- bitwOr(or_what, value)

    # Pack back into result
    if (byte_index + 1 < length(result)) {
      result[(byte_index + 1):(byte_index + 2)] <- writeBin(or_what, raw(), size = 2, endian = "little")
    } else {
      result[byte_index + 1] <- as.raw(or_what %% 256)
      if (byte_index + 2 <= length(result)) {
        result[byte_index + 2] <- as.raw(or_what %/% 256)
      }
    }
  }

  return(result[1:bytes_count])
}


#' Decode Waveform
#'
#' Inverse operation of `encode_waveform`. Decodes a byte array into a 5-bit byte-string
#' representing a voice note's waveform.
#'
#' @param waveform A raw vector representing the encoded waveform bytes.
#' @return A raw vector containing the decoded 5-bit values.
#' @examples
#' \dontrun{
#'   # Example usage (assuming encoded waveform)
#'   encoded <- as.raw(c(0x00, 0x00))  # Placeholder
#'   decoded <- decode_waveform(encoded)
#' }
decode_waveform <- function(waveform) {
  bit_count <- length(waveform) * 8
  value_count <- bit_count %/% 5
  if (value_count == 0) {
    return(raw(0))
  }

  result <- raw(value_count)
  for (i in seq_len(value_count - 1)) {
    byte_index <- (i - 1) * 5 %/% 8
    bit_shift <- (i - 1) * 5 %% 8
    if (byte_index + 2 <= length(waveform)) {
      value <- as.integer(waveform[byte_index + 1]) + as.integer(waveform[byte_index + 2]) * 256L
    } else {
      value <- as.integer(waveform[byte_index + 1])
    }
    result[i] <- as.raw(bitwAnd(bitwShiftR(value, bit_shift), 31L))
  }

  byte_index <- (value_count - 1) * 5 %/% 8
  bit_shift <- (value_count - 1) * 5 %% 8
  if (byte_index + 2 <= length(waveform)) {
    value <- as.integer(waveform[byte_index + 1]) + as.integer(waveform[byte_index + 2]) * 256L
  } else {
    value <- as.integer(waveform[byte_index + 1])
  }

  result[value_count] <- as.raw(bitwAnd(bitwShiftR(value, bit_shift), 31L))
  return(result)
}


#' Split Text and Entities into Multiple Messages
#'
#' This function splits a message text and its associated entities into multiple
#' messages, each respecting the specified length and entity limits while preserving
#' formatting. It is useful for sending large messages as multiple parts without
#' breaking entity formatting.
#'
#' @param text A character string representing the message text.
#' @param entities A list of entity objects (e.g., lists with 'offset' and 'length' fields)
#'   representing the formatting entities in the text.
#' @param limit An integer specifying the maximum length of each individual message.
#'   Default is 4096.
#' @param max_entities An integer specifying the maximum number of entities allowed
#'   in each individual message. Default is 100.
#' @param split_at A character vector of regular expressions that determine where to
#'   split the text. By default, it splits at newlines, spaces, or any character.
#'   The last expression should match a character to ensure splitting.
#' @return A list of lists, where each sublist contains a pair of (split_text, split_entities).
#'   Each pair represents a portion of the original text and its corresponding entities.
#' @examples
#' \dontrun{
#'   # Assuming entities are lists like list(offset = 0, length = 5, ...)
#'   text <- "This is a very long message that needs to be split."
#'   entities <- list(list(offset = 0, length = 4))  # Example entity
#'   splits <- split_text(text, entities, limit = 20)
#'   for (split in splits) {
#'     # Send split[[1]] (text) with split[[2]] (entities)
#'   }
#' }
split_text <- function(text, entities, limit = 4096L, max_entities = 100L, split_at = c("\\n", "\\s", ".")) {
  # Helper function to update an entity with new values
  update_entity <- function(ent, ...) {
    new_ent <- ent
    updates <- list(...)
    for (name in names(updates)) {
      new_ent[[name]] <- updates[[name]]
    }
    new_ent
  }

  # Assume add_surrogate and del_surrogate are defined elsewhere (from helpers)
  # For now, treat as identity if not available
  if (!exists("add_surrogate")) {
    add_surrogate <- function(x) x
  }
  if (!exists("del_surrogate")) {
    del_surrogate <- function(x) x
  }

  text <- add_surrogate(text)
  results <- list()

  while (TRUE) {
    if (length(entities) > max_entities) {
      last_ent <- entities[[max_entities]]
      cur_limit <- min(limit, last_ent$offset + last_ent$length)
    } else {
      cur_limit <- limit
    }

    if (nchar(text) <= cur_limit) {
      break
    }

    split_found <- FALSE
    for (split_pattern in split_at) {
      for (i in seq(cur_limit, 1, by = -1)) {
        # Use gregexpr to find matches starting at position i
        matches <- gregexpr(split_pattern, text, fixed = FALSE)[[1]]
        # Find if there's a match at or after i
        valid_matches <- matches[matches >= i & matches <= cur_limit]
        if (length(valid_matches) > 0) {
          m_end <- valid_matches[1] + attr(matches, "match.length")[1] - 1
          cur_text <- substr(text, 1, m_end)
          new_text <- substr(text, m_end + 1, nchar(text))
          cur_ent <- list()
          new_ent <- list()
          for (ent in entities) {
            if (ent$offset < m_end) {
              if (ent$offset + ent$length > m_end) {
                cur_ent <- c(cur_ent, list(update_entity(ent, length = m_end - ent$offset)))
                new_ent <- c(new_ent, list(update_entity(ent, offset = 0, length = ent$offset + ent$length - m_end)))
              } else {
                cur_ent <- c(cur_ent, list(ent))
              }
            } else {
              new_ent <- c(new_ent, list(update_entity(ent, offset = ent$offset - m_end)))
            }
          }
          results <- c(results, list(list(del_surrogate(cur_text), cur_ent)))
          text <- new_text
          entities <- new_ent
          split_found <- TRUE
          break
        }
      }
      if (split_found) break
    }
    if (!split_found) {
      # Can't find where to split, just return the remaining text and entities
      break
    }
  }

  results <- c(results, list(list(del_surrogate(text), entities)))
  results
}


#' @title AsyncClassWrapper
#' @description An R6 class that wraps an object and provides asynchronous method wrapping.
#' This class mimics the behavior of a Python class that wraps objects to handle asynchronous calls.
#' @field wrapped The wrapped object.
AsyncClassWrapper <- R6::R6Class(
  "AsyncClassWrapper",
  public = list(
    #' @field wrapped The wrapped object.
    wrapped = NULL,

    #' @description Initialize the AsyncClassWrapper.
    #' @param wrapped The object to wrap.
    initialize = function(wrapped) {
      self$wrapped <- wrapped
    },

    #' @description Get an attribute from the wrapped object.
    #' If the attribute is a function, return a wrapper function that checks if the result is awaitable
    #' and awaits it if necessary (assuming the 'coro' package for async support).
    #' @param item The name of the attribute as a string.
    #' @return The attribute value or a wrapped function.
    get_attr = function(item) {
      w <- self$wrapped[[item]]
      if (is.function(w)) {
        wrapper <- function(...) {
          val <- w(...)
          if (coro::is_awaitable(val)) {
            coro::await(val)
          } else {
            val
          }
        }
        return(wrapper)
      } else {
        return(w)
      }
    }
  )
)


#' Add JPG Header and Footer to Stripped Image
#'
#' This function adds the JPG header and footer to a stripped image byte array.
#' It is ported from the Telegram Desktop source code.
#'
#' @param stripped A raw vector representing the stripped image bytes.
#' @return A raw vector with the JPG header and footer added, or the original
#'   stripped bytes if the conditions are not met.
#' @examples
#' \dontrun{
#' # Assuming stripped is a raw vector from a stripped photo
#' stripped <- as.raw(c(0x01, 0x80, 0x60, ...))  # example bytes
#' jpg_bytes <- stripped_photo_to_jpg(stripped)
#' }
stripped_photo_to_jpg <- function(stripped) {
  # NOTE: Changes here should update photo_size_byte_count
  if (length(stripped) < 3 || stripped[1] != as.raw(0x01)) {
    return(stripped)
  }

  header <- as.raw(c(
    0xff, 0xd8, 0xff, 0xe0, 0x00, 0x10, 0x4a, 0x46, 0x49, 0x46, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0xff, 0xdb, 0x00, 0x43, 0x00, 0x28, 0x1c, 0x1e, 0x23, 0x1e, 0x19, 0x28,
    0x21, 0x23, 0x21, 0x2d, 0x2b, 0x28, 0x30, 0x3c, 0x64, 0x41, 0x3c, 0x37, 0x37, 0x3c, 0x7b, 0x58,
    0x5d, 0x49, 0x64, 0x91, 0x80, 0x99, 0x96, 0x8f, 0x80, 0x8c, 0x8a, 0xa0, 0xb4, 0xe6, 0xc3, 0xa0,
    0xaa, 0xda, 0xad, 0x8a, 0x8c, 0xc8, 0xff, 0xcb, 0xda, 0xee, 0xf5, 0xff, 0xff, 0xff, 0x9b, 0xc1,
    0xff, 0xff, 0xff, 0xfa, 0xff, 0xe6, 0xfd, 0xff, 0xf8, 0xff, 0xdb, 0x00, 0x43, 0x01, 0x2b, 0x2d,
    0x2d, 0x3c, 0x35, 0x3c, 0x76, 0x41, 0x41, 0x76, 0xf8, 0xa5, 0x8c, 0xa5, 0xf8, 0xf8, 0xf8, 0xf8,
    0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8,
    0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8,
    0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8,
    0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8,
    0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xf8, 0xff, 0xc0, 0x00, 0x11, 0x08, 0x00, 0x00,
    0x00, 0x00, 0x03, 0x01, 0x22, 0x00, 0x02, 0x11, 0x01, 0x03, 0x11, 0x01, 0xff, 0xc4, 0x00, 0x1f,
    0x00, 0x00, 0x01, 0x05, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0xff, 0xc4, 0x00,
    0xb5, 0x10, 0x00, 0x02, 0x01, 0x03, 0x03, 0x02, 0x04, 0x03, 0x05, 0x05, 0x04, 0x04, 0x00, 0x00,
    0x01, 0x7d, 0x01, 0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 0x12, 0x21, 0x31, 0x41, 0x06, 0x13, 0x51,
    0x61, 0x07, 0x22, 0x71, 0x14, 0x32, 0x81, 0x91, 0xa1, 0x08, 0x23, 0x42, 0xb1, 0xc1, 0x15, 0x52,
    0xd1, 0xf0, 0x24, 0x33, 0x62, 0x72, 0x82, 0x09, 0x0a, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x25, 0x26,
    0x27, 0x28, 0x29, 0x2a, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x43, 0x44, 0x45, 0x46, 0x47,
    0x48, 0x49, 0x4a, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68,
    0x69, 0x6a, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88,
    0x89, 0x8a, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9a, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6,
    0xa7, 0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xc2, 0xc3, 0xc4,
    0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2, 0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xe1,
    0xe2, 0xe3, 0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9, 0xea, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7,
    0xf8, 0xf9, 0xfa, 0xff, 0xc4, 0x00, 0x1f, 0x01, 0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x08, 0x09, 0x0a, 0x0b, 0xff, 0xc4, 0x00, 0xb5, 0x11, 0x00, 0x02, 0x01, 0x02, 0x04, 0x04, 0x03,
    0x04, 0x07, 0x05, 0x04, 0x04, 0x00, 0x01, 0x02, 0x77, 0x00, 0x01, 0x02, 0x03, 0x11, 0x04, 0x05,
    0x21, 0x31, 0x06, 0x12, 0x41, 0x51, 0x07, 0x61, 0x71, 0x13, 0x22, 0x32, 0x81, 0x08, 0x14, 0x42,
    0x91, 0xa1, 0xb1, 0xc1, 0x09, 0x23, 0x33, 0x52, 0xf0, 0x15, 0x62, 0x72, 0xd1, 0x0a, 0x16, 0x24,
    0x34, 0xe1, 0x25, 0xf1, 0x17, 0x18, 0x19, 0x1a, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x35, 0x36, 0x37,
    0x38, 0x39, 0x3a, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x53, 0x54, 0x55, 0x56, 0x57,
    0x58, 0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78,
    0x79, 0x7a, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x92, 0x93, 0x94, 0x95, 0x96,
    0x97, 0x98, 0x99, 0x9a, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4,
    0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xc2, 0xc3, 0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2,
    0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xe2, 0xe3, 0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9,
    0xea, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xff, 0xda, 0x00, 0x0c, 0x03, 0x01,
    0x00, 0x02, 0x11, 0x03, 0x11, 0x00, 0x3f, 0x00
  ))
  footer <- as.raw(c(0xff, 0xd9))
  header[165] <- stripped[2]
  header[167] <- stripped[3]
  return(c(header, stripped[4:length(stripped)], footer))
}


#' Calculate Byte Count for Photo Size
#'
#' This function calculates the byte count for different types of photo sizes
#' in the Telegram API. It handles various photo size types and returns the
#' appropriate byte count based on the type and its properties.
#'
#' @param size An object representing a photo size, which can be of types
#'   such as PhotoSize, PhotoStrippedSize, PhotoCachedSize, PhotoSizeEmpty,
#'   or PhotoSizeProgressive.
#' @return The byte count as an integer, or NULL if the type is unrecognized.
#' @examples
#' \dontrun{
#' # Assuming types are defined elsewhere, e.g., types$PhotoSize
#' size <- types$PhotoSize(size = 1024)
#' photo_size_byte_count(size)  # Returns 1024
#' }
photo_size_byte_count <- function(size) {
  if (inherits(size, "PhotoSize")) {
    return(size$size)
  } else if (inherits(size, "PhotoStrippedSize")) {
    bytes <- size$bytes
    if (length(bytes) < 3 || as.integer(bytes[[1]]) != 1) {
      return(length(bytes))
    } else {
      return(length(bytes) + 622)
    }
  } else if (inherits(size, "PhotoCachedSize")) {
    return(length(size$bytes))
  } else if (inherits(size, "PhotoSizeEmpty")) {
    return(0)
  } else if (inherits(size, "PhotoSizeProgressive")) {
    return(max(size$sizes))
  } else {
    return(NULL)
  }
}


#' Maybe Async Utility Function
#'
#' This function checks if the provided coroutine or future is asynchronous.
#' If it is a future, it warns about experimental async support and resolves it synchronously.
#' Otherwise, it returns the input as-is. This is useful in contexts where asynchronous
#' operations need to be handled in a synchronous manner.
#'
#' @param coro A value that may be a future (from the 'future' package).
#' @return The resolved value if \code{coro} is a future, otherwise \code{coro} unchanged.
#' @examples
#' \dontrun{
#' # Assuming 'future' package is used for async operations
#' library(future)
#' f <- future({ Sys.sleep(1); 42 })
#' result <- maybe_async(f)  # Will warn and resolve to 42
#' }
maybe_async <- function(coro) {
  result <- coro
  if (future::is.future(result)) {
    warning('Using async sessions support is an experimental feature')
    result <- future::value(result)
  }
  return(result)
}
