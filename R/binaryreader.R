#' BinaryReader Class
#'
#'
#' @details
#' Provides methods to read various data types and handle stream positions.
#'
#' @title BinaryReader
#' @description Telegram API type BinaryReader
#' @export
BinaryReader <- R6::R6Class(
  "BinaryReader",
  public = list(
    #' @description
    #' Initializes the BinaryReader with the given binary data.
    #' @param data A raw vector representing the binary data to read.
    initialize = function(data) {
      private$stream <- rawConnection(data, "rb")
      private$.last <- NULL
      private$.data <- data
    },

    #' @description
    #' Reads a single byte value.
    #' @return A single byte as an integer.
    read_byte = function() {
      return(as.integer(self$read(1L)[1]))
    },

    #' @description
    #' Reads a 4-byte integer value.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return An integer value.
    read_int = function(signed = TRUE) {
      bytes <- self$read(4)
      return(self$bytes_to_int(bytes, signed))
    },

    #' @description
    #' Reads an 8-byte long integer value.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return A long integer value.
    read_long = function(signed = TRUE) {
      bytes <- self$read(8)
      return(self$bytes_to_int(bytes, signed))
    },

    #' @description
    #' Reads a 4-byte floating-point value.
    #' @return A numeric value.
    read_float = function() {
      bytes <- self$read(4L)
      con <- rawConnection(bytes, "rb")
      on.exit(close(con))
      val <- readBin(con, what = "numeric", n = 1L, size = 4L, endian = "little")
      return(val)
    },

    #' @description
    #' Reads an 8-byte floating-point value.
    #' @return A numeric value.
    read_double = function() {
      bytes <- self$read(8L)
      con <- rawConnection(bytes, "rb")
      on.exit(close(con))
      val <- readBin(con, what = "numeric", n = 1L, size = 8L, endian = "little")
      return(val)
    },

    #' @description
    #' Reads a specified number of bytes.
    #' @param length An integer specifying the number of bytes to read.
    #' @return A raw vector of the read bytes.
    read = function(length = -1) {
      result <- readBin(private$stream, "raw", n = length)
      if (length >= 0 && length(result) != length) {
        stop(sprintf(
          "No more data left to read (need %d, got %d); last read: %s",
          length, length(result), paste(private$.last, collapse = " ")
        ))
      }
      private$.last <- result
      return(result)
    },

    #' @description
    #' Gets the byte array representing the current buffer as a whole.
    #' @return A raw vector of the entire buffer.
    get_bytes = function() {
      return(private$.data)
    },

    #' @description
    #' Closes the reader, freeing the raw connection.
    close = function() {
      close(private$stream)
    },

    #' @description
    #' Tells the current position in the stream.
    #' @return An integer representing the current position.
    tell_position = function() {
      return(seek(private$stream, origin = "current"))
    },

    #' @description
    #' Sets the current position in the stream.
    #' @param position An integer specifying the position to set.
    set_position = function(position) {
      seek(private$stream, position, origin = "start")
    },

    #' @description
    #' Seeks the stream position by a given offset.
    #' @param offset An integer specifying the offset to seek.
    seek = function(offset) {
      seek(private$stream, offset, origin = "current")
    },

    #' @description
    #' Converts a byte vector to an integer.
    #' @param bytes A raw vector representing the bytes.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return An integer value.
    bytes_to_int = function(bytes, signed = TRUE) {
      if (length(bytes) > 4) {
        # Use big integer arithmetic and return bigz to preserve
        # full 64-bit precision (R doubles only have 53-bit mantissa).
        hex <- paste(sprintf("%02x", as.integer(rev(bytes))), collapse = "")
        val <- gmp::as.bigz(paste0("0x", hex))
        if (signed) {
          # Handle sign for two's complement values.
          max_val <- gmp::pow.bigz(2, 8 * length(bytes))
          if (val >= max_val / 2) {
            val <- val - max_val
          }
        }
        return(val)
      } else {
        # 32-bit and smaller values.
        value <- sum(as.numeric(bytes) * 256^(seq_along(bytes) - 1))
        if (isTRUE(signed)) {
          max_val <- 256^length(bytes)
          if (value >= max_val / 2) {
            value <- value - max_val
          }
          return(as.integer(value))
        }
        # Unsigned 32-bit can exceed R integer range, return numeric.
        return(as.numeric(value))
      }
    },

    #' @description
    #' Reads a large integer (128, 256, etc bits).
    #' @param bits Number of bits to read.
    #' @return A bigz value.
    read_large_int = function(bits) {
      bytes <- self$read(bits / 8)
      hex <- paste(sprintf("%02x", as.integer(rev(bytes))), collapse = "")
      return(gmp::as.bigz(paste0("0x", hex)))
    },

    #' @description
    #' Reads a Telegram-encoded byte array.
    #' @return A raw vector.
    tgread_bytes = function() {
      first_byte <- as.integer(self$read(1))
      if (first_byte == 254) {
        length <- self$bytes_to_int(self$read(3), signed = FALSE)
      } else {
        length <- first_byte
      }
      data <- self$read(length)

      # Padding
      padding <- if (first_byte == 254) length %% 4 else (length + 1) %% 4
      if (padding > 0) {
        self$read(4 - padding)
      }

      return(data)
    },

    #' @description
    #' Alias for tgread_bytes (some generated code uses this name).
    #' @return A raw vector.
    tgreadbytes = function() {
      self$tgread_bytes()
    },

    #' @description
    #' Reads a Telegram-encoded string.
    #' @return A character string.
    tgread_string = function() {
      return(rawToChar(self$tgread_bytes()))
    },

    #' @description
    #' Reads a 32-bit Unix timestamp and returns it as a POSIXct datetime.
    #' @return A POSIXct datetime or NULL if the timestamp is 0.
    tgread_date = function() {
      value <- self$read_int(signed = FALSE)
      if (is.null(value) || value == 0) {
        return(NULL)
      }
      as.POSIXct(as.numeric(value), origin = "1970-01-01", tz = "UTC")
    },

    #' @description
    #' Reads a TL object.
    #' @return A TL object or raw bytes if type unknown.
    tgread_object = function() {
      constructor_id <- self$read_int(signed = FALSE)
      if (!is.null(constructor_id) && constructor_id == 481674261) { # Vector (0x1cb5c415)
        count <- self$read_int()
        res <- list()
        if (count > 0) {
          for (i in seq_len(count)) {
            res[[i]] <- self$tgread_object()
          }
        }
        return(res)
      }
      # Special-case User constructor (newer layer) to avoid parse failures
      if (!is.null(constructor_id) &&
        identical(.telegramR_norm_ctor_id(constructor_id), .telegramR_norm_ctor_id(34280482))) {
        return(.telegramR_read_user(self))
      }
      # Special-case contacts.ResolvedPeer (newer layer) to avoid parse failures
      if (!isTRUE(getOption("telegramR.disable_contacts_resolved_peer")) &&
        !is.null(constructor_id) &&
        identical(.telegramR_norm_ctor_id(constructor_id), .telegramR_norm_ctor_id(2131196633))) {
        return(.telegramR_read_contacts_resolved_peer(self))
      }
      # Special-case messages.ChannelMessages to ensure messages parse correctly
      if (!is.null(constructor_id) &&
        identical(.telegramR_norm_ctor_id(constructor_id), .telegramR_norm_ctor_id(3346446926))) {
        return(.telegramR_read_channel_messages(self))
      }
      ctor_key <- .telegramR_norm_ctor_id(constructor_id)
      ctor_map <- .telegramR_get_ctor_map()
      cls <- ctor_map[[ctor_key]]

      if (is.null(cls)) {
        cur <- self$tell_position()
        remaining <- length(private$.data) - cur
        if (remaining <= 0) {
          return(list(CONSTRUCTOR_ID = constructor_id, data = raw(0)))
        }
        return(list(CONSTRUCTOR_ID = constructor_id, data = self$read(remaining)))
      }

      # Save position right after reading constructor_id so we can rewind
      # on from_reader failure (it may have consumed bytes before failing).
      pos_after_ctor <- self$tell_position()

      # Most generated classes expose parser as private$from_reader.
      # Try to instantiate; if the constructor requires args, create with
      # a zero-arg tryCatch and fall back to using the class generator directly.
      obj <- tryCatch(cls$new(), error = function(e) NULL)

      # Try to get from_reader from private methods on the instance or generator
      from_reader_fn <- NULL
      if (!is.null(obj)) {
        private_env <- obj$.__enclos_env__$private
        if (is.environment(private_env) && is.function(private_env$from_reader)) {
          from_reader_fn <- private_env$from_reader
        }
      }
      if (is.null(from_reader_fn) && !is.null(cls$private_methods) && is.function(cls$private_methods$from_reader)) {
        from_reader_fn <- cls$private_methods$from_reader
        # Fix the function's environment so it can find the class it needs
        # to construct (e.g. BadServerSalt$new inside from_reader).
        # The extracted function's enclosing env may not have the class in scope.
        fn_env <- new.env(parent = environment(from_reader_fn))
        fn_env[[cls$classname]] <- cls
        # Provide a `self` proxy so from_reader methods that call
        # self$initialize(...) or self$new(...) work correctly outside R6 context.
        # The proxy delegates these calls to cls$new(...).
        self_proxy <- new.env(parent = emptyenv())
        self_proxy$initialize <- function(...) cls$new(...)
        self_proxy$new <- function(...) cls$new(...)
        fn_env$self <- self_proxy
        environment(from_reader_fn) <- fn_env
      }

      if (!is.null(from_reader_fn)) {
        parsed <- tryCatch(from_reader_fn(self), error = function(e) {
          # Rewind reader to position right after constructor_id so the
          # fallback data contains ALL the object bytes.
          tryCatch(self$set_position(pos_after_ctor), error = function(e2) NULL)
          cur <- self$tell_position()
          remaining <- length(private$.data) - cur
          if (remaining > 0) {
            list(CONSTRUCTOR_ID = constructor_id, data = self$read(remaining))
          } else {
            list(CONSTRUCTOR_ID = constructor_id, data = raw(0))
          }
        })
        if (inherits(parsed, "R6")) {
          return(parsed)
        }
        if (inherits(parsed, class(cls$classname)[1]) || inherits(parsed, cls$classname)) {
          return(parsed)
        }
        if (is.list(parsed)) {
          result <- tryCatch(do.call(cls$new, parsed), error = function(e) parsed)
          return(result)
        }
        if (!is.null(parsed)) {
          return(parsed)
        }
      }

      # Fallback: return blank object or raw data
      if (!is.null(obj)) {
        return(obj)
      }
      tryCatch(self$set_position(pos_after_ctor), error = function(e2) NULL)
      cur <- self$tell_position()
      remaining <- length(private$.data) - cur
      if (remaining > 0) {
        list(CONSTRUCTOR_ID = constructor_id, data = self$read(remaining))
      } else {
        list(CONSTRUCTOR_ID = constructor_id, data = raw(0))
      }
    }
  ),
  private = list(
    stream = NULL,
    .last = NULL,
    .data = NULL
  )
)

.telegramR_norm_ctor_id <- function(x) {
  v <- as.numeric(x)[1]
  if (is.na(v)) {
    return(NA_character_)
  }
  if (v < 0) v <- v + 2^32
  sprintf("%.0f", v)
}

.telegramR_get_ctor_map <- function() {
  cache <- getOption("telegramR.ctor_map")
  if (is.list(cache) && length(cache) > 0) {
    return(cache)
  }

  # Search multiple environments to handle both installed package and
  # devtools::load_all() / source() workflows.
  envs_to_search <- list()
  tryCatch(
    {
      pkg_name <- utils::packageName()
      if (!is.null(pkg_name) && nzchar(pkg_name)) {
        envs_to_search <- c(envs_to_search, list(asNamespace(pkg_name)))
      }
    },
    error = function(e) NULL
  )
  tryCatch(
    {
      ns <- asNamespace("telegramR")
      if (!any(vapply(envs_to_search, identical, logical(1), ns))) {
        envs_to_search <- c(envs_to_search, list(ns))
      }
    },
    error = function(e) NULL
  )
  # Also search the global environment (for source()'d code)
  envs_to_search <- c(envs_to_search, list(.GlobalEnv))

  out <- list()
  seen_names <- character(0)
  for (env in envs_to_search) {
    for (nm in ls(envir = env, all.names = TRUE)) {
      if (nm %in% seen_names) next
      seen_names <- c(seen_names, nm)
      obj <- tryCatch(get(nm, envir = env, inherits = FALSE), error = function(e) NULL)
      if (!inherits(obj, "R6ClassGenerator")) next
      cid <- NULL
      pf <- obj$public_fields
      if (!is.null(pf) && !is.null(pf$CONSTRUCTOR_ID)) {
        cid <- tryCatch(
          {
            v <- pf$CONSTRUCTOR_ID
            if (is.function(v)) v <- v()
            v
          },
          error = function(e) NULL
        )
      }
      if (is.null(cid)) {
        af <- obj$active
        if (!is.null(af) && !is.null(af$CONSTRUCTOR_ID) && is.function(af$CONSTRUCTOR_ID)) {
          cid <- tryCatch(af$CONSTRUCTOR_ID(), error = function(e) {
            tryCatch(
              {
                inst <- obj$new()
                inst$CONSTRUCTOR_ID
              },
              error = function(e2) NULL
            )
          })
        }
      }
      if (is.null(cid)) next

      key <- .telegramR_norm_ctor_id(cid)
      if (is.na(key)) next
      out[[key]] <- obj
    }
  }

  # Map newer User constructor ID (seen in Telegram layer) to existing User class
  if (!is.null(out) && is.null(out[[.telegramR_norm_ctor_id(34280482)]])) {
    user_cls <- out[[.telegramR_norm_ctor_id(0x57258a18)]]
    if (inherits(user_cls, "R6ClassGenerator")) {
      out[[.telegramR_norm_ctor_id(34280482)]] <- user_cls
    }
  }

  # Map newer contacts.ResolvedPeer constructor ID to existing class if needed
  if (!is.null(out) && is.null(out[[.telegramR_norm_ctor_id(2131196633)]])) {
    crp_cls <- out[[.telegramR_norm_ctor_id(0x7f077ad9)]]
    if (inherits(crp_cls, "R6ClassGenerator")) {
      out[[.telegramR_norm_ctor_id(2131196633)]] <- crp_cls
    }
  }

  # Only cache if we found at least some classes; otherwise retry next time
  if (length(out) > 0) {
    options(telegramR.ctor_map = out)
  }
  out
}

.telegramR_read_user_profile_photo <- function(reader) {
  ctor <- reader$read_int(signed = FALSE)
  ctor_key <- .telegramR_norm_ctor_id(ctor)
  up_key <- .telegramR_norm_ctor_id(UserProfilePhoto$public_fields$CONSTRUCTOR_ID)
  upe_key <- .telegramR_norm_ctor_id(UserProfilePhotoEmpty$public_fields$CONSTRUCTOR_ID)

  if (identical(ctor_key, up_key)) {
    flags <- reader$read_int()
    has_video <- bitwAnd(flags, 1) != 0
    personal <- bitwAnd(flags, 4) != 0
    photo_id <- reader$read_long()
    stripped_thumb <- if (bitwAnd(flags, 2) != 0) reader$tgread_bytes() else NULL
    dc_id <- reader$read_int()
    return(UserProfilePhoto$new(
      photo_id = photo_id, dc_id = dc_id,
      has_video = has_video, personal = personal,
      stripped_thumb = stripped_thumb
    ))
  }
  if (identical(ctor_key, upe_key)) {
    return(UserProfilePhotoEmpty$new())
  }

  # Fallback: rewind and parse generically
  reader$set_position(reader$tell_position() - 4)
  reader$tgread_object()
}

.telegramR_read_peer <- function(reader) {
  start_pos <- reader$tell_position()
  ctor <- reader$read_int(signed = FALSE)
  ctor_key <- .telegramR_norm_ctor_id(ctor)
  # PeerUser
  if (identical(ctor_key, .telegramR_norm_ctor_id(PeerUser$public_fields$CONSTRUCTOR_ID))) {
    user_id <- reader$read_long()
    return(PeerUser$new(user_id = user_id))
  }
  # PeerChat
  if (identical(ctor_key, .telegramR_norm_ctor_id(PeerChat$public_fields$CONSTRUCTOR_ID))) {
    chat_id <- reader$read_long()
    return(PeerChat$new(chat_id = chat_id))
  }
  # PeerChannel
  if (identical(ctor_key, .telegramR_norm_ctor_id(PeerChannel$public_fields$CONSTRUCTOR_ID))) {
    channel_id <- reader$read_long()
    return(PeerChannel$new(channel_id = channel_id))
  }
  # Fallback: rewind and let tgread_object handle it
  tryCatch(reader$set_position(start_pos), error = function(e) NULL)
  reader$tgread_object()
}

.telegramR_read_contacts_resolved_peer <- function(reader) {
  peer <- .telegramR_read_peer(reader)
  # Vector<User>
  vec_ctor <- reader$read_int(signed = FALSE)
  if (!identical(.telegramR_norm_ctor_id(vec_ctor), .telegramR_norm_ctor_id(481674261))) {
    # Not a vector; rewind 4 bytes and try generic parsing
    tryCatch(reader$set_position(reader$tell_position() - 4), error = function(e) NULL)
    return(list(peer = peer, users = list(), chats = list()))
  }
  n_users <- reader$read_int()
  users <- if (n_users > 0) lapply(seq_len(n_users), function(i) reader$tgread_object()) else list()
  # Vector<Chat>
  vec_ctor2 <- reader$read_int(signed = FALSE)
  if (!identical(.telegramR_norm_ctor_id(vec_ctor2), .telegramR_norm_ctor_id(481674261))) {
    tryCatch(reader$set_position(reader$tell_position() - 4), error = function(e) NULL)
    return(ContactsResolvedPeer$new(peer = peer, users = users, chats = list()))
  }
  n_chats <- reader$read_int()
  chats <- if (n_chats > 0) lapply(seq_len(n_chats), function(i) reader$tgread_object()) else list()
  ContactsResolvedPeer$new(peer = peer, users = users, chats = chats)
}

.telegramR_read_channel_messages <- function(reader) {
  flags <- reader$read_int()
  inexact <- bitwAnd(flags, 2) != 0
  pts <- reader$read_int()
  count <- reader$read_int()
  offset_id_offset <- if (bitwAnd(flags, 4) != 0) reader$read_int() else NULL

  # Vector<Message>
  reader$read_int() # vector ctor
  n_messages <- reader$read_int()
  messages <- list()
  if (n_messages > 0) {
    for (i in seq_len(n_messages)) {
      obj <- tryCatch(reader$tgread_object(), error = function(e) NULL)
      if (is.null(obj)) break
      messages[[length(messages) + 1L]] <- obj
    }
  }

  # Vector<ForumTopic>
  topics <- list()
  topics_ok <- TRUE
  tryCatch({
    reader$read_int()
    n_topics <- reader$read_int()
    if (n_topics > 0) {
      topics <- lapply(seq_len(n_topics), function(i) reader$tgread_object())
    }
  }, error = function(e) {
    topics_ok <<- FALSE
  })
  if (!topics_ok) {
    return(list(
      pts = pts,
      count = count,
      messages = messages,
      topics = topics,
      chats = list(),
      users = list(),
      inexact = inexact,
      offset_id_offset = offset_id_offset
    ))
  }

  # Vector<Chat>
  chats <- list()
  chats_ok <- TRUE
  tryCatch({
    reader$read_int()
    n_chats <- reader$read_int()
    if (n_chats > 0) {
      chats <- lapply(seq_len(n_chats), function(i) reader$tgread_object())
    }
  }, error = function(e) {
    chats_ok <<- FALSE
  })
  if (!chats_ok) {
    return(list(
      pts = pts,
      count = count,
      messages = messages,
      topics = topics,
      chats = chats,
      users = list(),
      inexact = inexact,
      offset_id_offset = offset_id_offset
    ))
  }

  # Vector<User>
  users <- list()
  tryCatch({
    reader$read_int()
    n_users <- reader$read_int()
    if (n_users > 0) {
      users <- lapply(seq_len(n_users), function(i) reader$tgread_object())
    }
  }, error = function(e) {
    users <- list()
  })

  list(
    pts = pts,
    count = count,
    messages = messages,
    topics = topics,
    chats = chats,
    users = users,
    inexact = inexact,
    offset_id_offset = offset_id_offset
  )
}

.telegramR_read_user <- function(reader) {
  flags <- reader$read_int()
  flags2 <- reader$read_int()

  is_self <- bitwAnd(flags, 1024) != 0
  contact <- bitwAnd(flags, 2048) != 0
  mutual_contact <- bitwAnd(flags, 4096) != 0
  deleted <- bitwAnd(flags, 8192) != 0
  bot <- bitwAnd(flags, 16384) != 0
  bot_chat_history <- bitwAnd(flags, 32768) != 0
  bot_nochats <- bitwAnd(flags, 65536) != 0
  verified <- bitwAnd(flags, 131072) != 0
  restricted <- bitwAnd(flags, 262144) != 0
  min <- bitwAnd(flags, 1048576) != 0
  bot_inline_geo <- bitwAnd(flags, 2097152) != 0
  support <- bitwAnd(flags, 8388608) != 0
  scam <- bitwAnd(flags, 16777216) != 0
  apply_min_photo <- bitwAnd(flags, 33554432) != 0
  fake <- bitwAnd(flags, 67108864) != 0
  bot_attach_menu <- bitwAnd(flags, 134217728) != 0
  premium <- bitwAnd(flags, 268435456) != 0
  attach_menu_enabled <- bitwAnd(flags, 536870912) != 0

  bot_can_edit <- bitwAnd(flags2, 2) != 0
  close_friend <- bitwAnd(flags2, 4) != 0
  stories_hidden <- bitwAnd(flags2, 8) != 0
  stories_unavailable <- bitwAnd(flags2, 16) != 0
  contact_require_premium <- bitwAnd(flags2, 1024) != 0
  bot_business <- bitwAnd(flags2, 2048) != 0
  bot_has_main_app <- bitwAnd(flags2, 8192) != 0
  bot_forum_view <- bitwAnd(flags2, 65536) != 0

  id <- reader$read_long()
  access_hash <- if (bitwAnd(flags, 1) != 0) reader$read_long() else NULL
  first_name <- if (bitwAnd(flags, 2) != 0) reader$tgread_string() else NULL
  last_name <- if (bitwAnd(flags, 4) != 0) reader$tgread_string() else NULL
  username <- if (bitwAnd(flags, 8) != 0) reader$tgread_string() else NULL
  phone <- if (bitwAnd(flags, 16) != 0) reader$tgread_string() else NULL
  photo <- if (bitwAnd(flags, 32) != 0) .telegramR_read_user_profile_photo(reader) else NULL
  status <- if (bitwAnd(flags, 64) != 0) reader$tgread_object() else NULL
  bot_info_version <- if (bitwAnd(flags, 16384) != 0) reader$read_int() else NULL

  restriction_reason <- if (bitwAnd(flags, 262144) != 0) {
    reader$read_int()
    n <- reader$read_int()
    lapply(seq_len(n), function(i) reader$tgread_object())
  } else {
    NULL
  }

  bot_inline_placeholder <- if (bitwAnd(flags, 524288) != 0) reader$tgread_string() else NULL
  lang_code <- if (bitwAnd(flags, 4194304) != 0) reader$tgread_string() else NULL
  emoji_status <- if (bitwAnd(flags, 1073741824) != 0) reader$tgread_object() else NULL

  usernames <- if (bitwAnd(flags2, 1) != 0) {
    reader$read_int()
    n <- reader$read_int()
    lapply(seq_len(n), function(i) reader$tgread_object())
  } else {
    NULL
  }

  stories_max_id <- if (bitwAnd(flags2, 32) != 0) reader$read_int() else NULL
  color <- if (bitwAnd(flags2, 256) != 0) reader$tgread_object() else NULL
  profile_color <- if (bitwAnd(flags2, 512) != 0) reader$tgread_object() else NULL
  bot_active_users <- if (bitwAnd(flags2, 4096) != 0) reader$read_int() else NULL
  bot_verification_icon <- if (bitwAnd(flags2, 16384) != 0) reader$read_long() else NULL
  send_paid_messages_stars <- if (bitwAnd(flags2, 32768) != 0) reader$read_long() else NULL

  User$new(
    id = id, is_self = is_self, contact = contact, mutual_contact = mutual_contact,
    deleted = deleted, bot = bot, bot_chat_history = bot_chat_history,
    bot_nochats = bot_nochats, verified = verified, restricted = restricted,
    min = min, bot_inline_geo = bot_inline_geo, support = support, scam = scam,
    apply_min_photo = apply_min_photo, fake = fake, bot_attach_menu = bot_attach_menu,
    premium = premium, attach_menu_enabled = attach_menu_enabled,
    bot_can_edit = bot_can_edit, close_friend = close_friend,
    stories_hidden = stories_hidden, stories_unavailable = stories_unavailable,
    contact_require_premium = contact_require_premium, bot_business = bot_business,
    bot_has_main_app = bot_has_main_app, bot_forum_view = bot_forum_view,
    access_hash = access_hash, first_name = first_name, last_name = last_name,
    username = username, phone = phone, photo = photo, status = status,
    bot_info_version = bot_info_version, restriction_reason = restriction_reason,
    bot_inline_placeholder = bot_inline_placeholder, lang_code = lang_code,
    emoji_status = emoji_status, usernames = usernames, stories_max_id = stories_max_id,
    color = color, profile_color = profile_color, bot_active_users = bot_active_users,
    bot_verification_icon = bot_verification_icon, send_paid_messages_stars = send_paid_messages_stars
  )
}
