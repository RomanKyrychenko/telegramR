#' @description
#' Build a tibble from a list of dict-like lists, keeping nested data as list columns.
#' @param rows list. Each element should be a named list.
#' @return A tibble.
.telegramR_safe_to_dict <- function(x) {
  if (inherits(x, "TLObject")) {
    # Avoid calling to_dict on Message/MessageService to prevent noisy failures
    if (inherits(x, "Message") || inherits(x, "MessageService") || inherits(x, "Channel")) {
      fields <- list()
      nms <- tryCatch(ls(x), error = function(e) character(0))
      for (nm in nms) {
        val <- tryCatch(x[[nm]], error = function(e) NULL)
        if (is.function(val)) next
        fields[[nm]] <- .telegramR_safe_to_dict(val)
      }
      fields[["_"]] <- class(x)[1]
      return(fields)
    }

    # Handle odd cases where TLObject is not an environment/R6 object
    if (!is.environment(x)) {
      if (is.list(x)) {
        out <- lapply(x, .telegramR_safe_to_dict)
        if (!is.null(names(x))) names(out) <- names(x)
        out[["_"]] <- class(x)[1]
        return(out)
      }
      return(list("_" = class(x)[1], ".error" = "Non-environment TLObject"))
    }

    out <- tryCatch(
      if (is.function(x$to_dict)) x$to_dict() else if (is.function(x$to_list)) x$to_list() else list("_" = class(x)[1]),
      error = function(e) e
    )
    if (!inherits(out, "error")) {
      return(out)
    }

    # Fallback: extract non-function public fields without invoking to_dict
    fields <- list()
    nms <- tryCatch(ls(x), error = function(e) character(0))
    for (nm in nms) {
      val <- tryCatch(x[[nm]], error = function(e) NULL)
      if (is.function(val)) next
      fields[[nm]] <- .telegramR_safe_to_dict(val)
    }
    fields[["_"]] <- class(x)[1]
    fields[[".error"]] <- conditionMessage(out)
    return(fields)
  }

  if (is.list(x)) {
    out <- lapply(x, .telegramR_safe_to_dict)
    if (!is.null(names(x))) names(out) <- names(x)
    return(out)
  }
  x
}

.telegramR_as_tibble <- function(rows) {
  # Ensure every row has the same set of keys
  if (length(rows) > 0) {
    all_keys <- unique(unlist(lapply(rows, names), use.names = FALSE))
    rows <- lapply(rows, function(r) {
      missing <- setdiff(all_keys, names(r))
      if (length(missing) > 0) {
        for (k in missing) r[[k]] <- NULL
      }
      r
    })
  }
  if (length(rows) == 0) {
    return(tibble::tibble())
  }

  keys <- unique(unlist(lapply(rows, names), use.names = FALSE))
  if (length(keys) == 0) {
    return(tibble::tibble())
  }

  cols <- lapply(keys, function(k) {
    lapply(rows, function(x) {
      val <- x[[k]]
      .telegramR_safe_to_dict(val)
    })
  })
  names(cols) <- keys
  original_cols <- cols
  n <- length(rows)

  # Try to simplify scalar atomic columns for readability
  cols <- lapply(cols, function(col) {
    # If all values are NULL, keep a list-column of NULLs
    if (all(vapply(col, is.null, logical(1)))) {
      return(rep(list(NULL), length(col)))
    }
    # Preserve POSIXct columns
    if (any(vapply(col, function(v) inherits(v, "POSIXt"), logical(1)))) {
      tz <- NA_character_
      for (v in col) {
        if (inherits(v, "POSIXt")) {
          tz <- attr(v, "tzone")
          break
        }
      }
      col2 <- lapply(col, function(v) if (is.null(v)) as.POSIXct(NA) else v)
      out <- as.POSIXct(unlist(col2, recursive = FALSE, use.names = FALSE), origin = "1970-01-01", tz = if (length(tz) > 0) tz else "UTC")
      return(out)
    }
    if (all(vapply(col, function(v) {
      !is.list(v) && !inherits(v, "TLObject") && length(v) <= 1
    }, logical(1)))) {
      # Preserve length when NULLs are present
      col2 <- lapply(col, function(v) if (is.null(v)) NA else v)
      return(unlist(col2, recursive = FALSE, use.names = FALSE))
    }
    col
  })

  # Safety: if any column got the wrong length, keep the original list-column
  for (i in seq_along(cols)) {
    if (length(cols[[i]]) != n) {
      cols[[i]] <- original_cols[[i]]
    }
  }

  tibble::as_tibble(cols)
}

.telegramR_recycle_any <- function(x, n) {
  if (n <= 0) return(x)
  if (is.null(x)) return(rep(NA, n))
  if (is.list(x) || is.data.frame(x)) return(rep(list(x), n))
  if (length(x) == 1) return(rep_len(x, n))
  rep(list(x), n)
}

.telegramR_message_reactions <- function(m) {
  results <- NULL
  if (is.list(m$reactions) && !is.null(m$reactions$results)) {
    results <- m$reactions$results
  }
  if (is.null(results) || length(results) == 0) {
    return(list(total = 0, json = "{}"))
  }
  counts <- list()
  total <- 0
  for (rc in results) {
    if (is.null(rc)) next
    cnt <- rc$count %||% 0
    total <- total + cnt
    key <- NA_character_
    if (is.list(rc$reaction)) {
      key <- rc$reaction$emoticon %||% rc$reaction$emoji %||% rc$reaction$reactions %||% NA_character_
    }
    if (is.null(key) || is.na(key)) next
    counts[[key]] <- cnt
  }
  json <- jsonlite::toJSON(counts, auto_unbox = TRUE, null = "null")
  list(total = total, json = as.character(json))
}

.telegramR_message_media_type <- function(m) {
  media <- m$media
  if (!is.list(media)) return(NA_character_)
  mtype <- media$`_` %||% NA_character_
  if (identical(mtype, "MessageMediaPhoto")) return("photo")
  if (identical(mtype, "MessageMediaDocument")) {
    doc <- media$document
    if (is.list(doc) && !is.null(doc$mime_type)) {
      mt <- doc$mime_type
      if (startsWith(mt, "video/")) return("video")
      if (startsWith(mt, "image/")) return("image")
      if (startsWith(mt, "audio/")) return("audio")
      return(mt)
    }
    return("document")
  }
  if (is.character(mtype)) return(tolower(gsub("MessageMedia", "", mtype)))
  NA_character_
}

.telegramR_parse_datetime <- function(x) {
  if (is.null(x)) return(NULL)
  if (inherits(x, "POSIXt")) return(as.POSIXct(x, tz = "UTC"))
  if (inherits(x, "Date")) return(as.POSIXct(x, tz = "UTC"))
  if (is.numeric(x)) return(as.POSIXct(x, origin = "1970-01-01", tz = "UTC"))
  if (is.character(x)) return(as.POSIXct(x, tz = "UTC"))
  NULL
}

.telegramR_extract_message_row <- function(m, channel) {
  md <- .telegramR_safe_to_dict(m)
  ch <- .telegramR_safe_to_dict(channel)

  reactions <- .telegramR_message_reactions(md)
  media_type <- .telegramR_message_media_type(md)

  is_forward <- !is.null(md$fwd_from)
  fwd_from <- md$fwd_from %||% list()
  forward_from_id <- NA_real_
  if (is.list(fwd_from$from_id)) {
    forward_from_id <- fwd_from$from_id$channel_id %||% fwd_from$from_id$user_id %||% fwd_from$from_id$chat_id %||% NA_real_
  }
  forward_from_name <- fwd_from$from_name %||% fwd_from$post_author %||% NA_character_

  reply_to_msg_id <- NA_real_
  if (is.list(md$reply_to) && !is.null(md$reply_to$reply_to_msg_id)) {
    reply_to_msg_id <- md$reply_to$reply_to_msg_id
  }

  replies_count <- NA_real_
  if (is.list(md$replies) && !is.null(md$replies$replies)) {
    replies_count <- md$replies$replies
  } else if (is.list(md$replies) && !is.null(md$replies$replies_count)) {
    replies_count <- md$replies$replies_count
  }

  list(
    message_id = as.numeric(md$id %||% NA),
    channel_id = as.numeric(ch$id %||% NA),
    channel_username = ch$username %||% NA_character_,
    channel_title = ch$title %||% NA_character_,
    date = if (!is.null(md$date)) as.POSIXct(md$date, origin = "1970-01-01", tz = "UTC") else as.POSIXct(NA),
    text = md$message %||% NA_character_,
    views = as.numeric(md$views %||% NA),
    forwards = as.numeric(md$forwards %||% NA),
    replies = as.numeric(replies_count),
    reactions_total = as.numeric(reactions$total),
    reactions_json = reactions$json,
    media_type = media_type,
    is_forward = is_forward,
    forward_from_id = as.numeric(forward_from_id),
    forward_from_name = forward_from_name,
    reply_to_msg_id = as.numeric(reply_to_msg_id),
    edit_date = if (!is.null(md$edit_date)) as.POSIXct(md$edit_date, origin = "1970-01-01", tz = "UTC") else as.POSIXct(NA),
    post_author = if (is.null(md$post_author)) NA_character_ else as.character(md$post_author)
  )
}

#' Download Channel Messages By Username
#'
#' Fetches messages for a channel by username and returns a tibble with
#' message fields and nested structures as list columns.
#'
#' @param client TelegramClient instance.
#' @param username character. Channel username (with or without "@").
#' @param limit integer or Inf. Maximum number of messages to fetch.
#' @param include_channel logical. If TRUE, include channel fields on every row.
#' @param start_date POSIXct/Date/character. Earliest date to include (UTC).
#' @param end_date POSIXct/Date/character. Latest date to include (UTC).
#' @param show_progress logical. If TRUE, display a progress bar.
#' @param ... Passed to client$iter_messages() (e.g. offset_id, max_id, min_id).
#' @return A tibble.
#' @export
download_channel_messages <- function(client, username, limit = Inf, include_channel = TRUE, start_date = NULL, end_date = NULL, show_progress = TRUE, ...) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }
  if (missing(username) || is.null(username) || !nzchar(username)) {
    stop("username is required")
  }

  uname <- sub("^@", "", username)
  ent <- client$get_entity(uname)
  start_dt <- .telegramR_parse_datetime(start_date)
  end_dt <- .telegramR_parse_datetime(end_date)

  iter_args <- list(entity = ent, limit = limit)
  if (!is.null(end_dt)) {
    iter_args$offset_date <- end_dt
  }
  iter_args <- c(iter_args, list(...))

  it <- do.call(client$iter_messages, iter_args)

  # Progress bar setup (best-effort estimate)
  total_est <- NA_real_
  if (is.finite(limit)) {
    total_est <- as.numeric(limit)
  } else {
    est <- tryCatch(estimate_channel_post_count(client, uname), error = function(e) NULL)
    if (!is.null(est) && !is.na(est$last_message_id[[1]])) {
      total_est <- as.numeric(est$last_message_id[[1]])
    }
  }

  show_pb <- isTRUE(show_progress) && interactive() && is.finite(total_est) && total_est > 0
  pb <- NULL
  if (show_pb) {
    pb <- utils::txtProgressBar(min = 0, max = total_est, style = 3)
    on.exit(tryCatch(close(pb), error = function(e) NULL), add = TRUE)
  }

  rows <- list()
  n <- 0L
  repeat {
    item <- it$.next()
    if (is.null(item)) break
    row <- .telegramR_extract_message_row(item, ent)
    # Date range filter
    if (!is.null(row$date) && inherits(row$date, "POSIXt")) {
      if (!is.null(end_dt) && row$date > end_dt) {
        next
      }
      if (!is.null(start_dt) && row$date < start_dt) {
        # If iterating newest->oldest, we can stop early once below start_date
        break
      }
    }
    n <- n + 1L
    rows[[n]] <- row
    if (show_pb) utils::setTxtProgressBar(pb, n)
  }

  tbl <- if (length(rows) > 0) dplyr::bind_rows(rows) else tibble::tibble()
  if (!isTRUE(include_channel)) {
    tbl$channel_id <- NULL
    tbl$channel_username <- NULL
    tbl$channel_title <- NULL
  }
  tbl
}

#' Estimate Channel Post Count (Approx)
#'
#' Gets the latest message ID and uses it as an upper-bound estimate of total posts.
#' This is approximate due to deletions and gaps in message IDs.
#'
#' @param client TelegramClient instance.
#' @param username character. Channel username (with or without "@").
#' @return A tibble with last_message_id, approx_total_posts, and note.
#' @export
estimate_channel_post_count <- function(client, username) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }
  if (missing(username) || is.null(username) || !nzchar(username)) {
    stop("username is required")
  }
  uname <- sub("^@", "", username)
  ent <- client$get_entity(uname)
  it <- client$iter_messages(ent, limit = 1)
  msgs <- client$collect(it)
  last_id <- if (length(msgs) > 0 && !is.null(msgs[[1]]$id)) msgs[[1]]$id else NA_real_

  tibble::tibble(
    last_message_id = as.numeric(last_id),
    note = "Approximate: uses latest message id as upper bound; gaps/deletions mean it is not exact."
  )
}

#' Download Full Channel Info By Username
#'
#' Fetches channel entity and full channel info by username and returns a tibble.
#'
#' @param client TelegramClient instance.
#' @param username character. Channel username (with or without "@").
#' @param region character or NULL. Optional region tag to attach.
#' @param total_posts_downloaded numeric or NULL. Optional count of downloaded posts.
#' @return A tibble with flattened channel info and list columns for raw objects.
#' @export
download_channel_info <- function(client, username, region = NULL, include_raw = FALSE) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }
  if (missing(username) || is.null(username) || !nzchar(username)) {
    stop("username is required")
  }

  uname <- sub("^@", "", username)
  ent <- client$get_entity(uname)
  input_ent <- client$get_input_entity(ent)
  input_channel <- get_input_channel(input_ent)
  # Refresh constructor map to pick up newer ChannelFull ctor IDs
  old_ctor <- getOption("telegramR.ctor_map")
  options(telegramR.ctor_map = NULL)
  on.exit(options(telegramR.ctor_map = old_ctor), add = TRUE)
  full <- tryCatch(
    client$invoke(GetFullChannelRequest$new(input_channel)),
    error = function(e) {
      structure(list(full_chat = NULL, chats = NULL, users = NULL, .error = conditionMessage(e)), class = "messages.ChatFull")
    }
  )

  ent_dict <- .telegramR_safe_to_dict(ent)
  full_chat <- NULL
  chats <- NULL
  users <- NULL
  if (!is.null(full$full_chat)) {
    full_chat <- .telegramR_safe_to_dict(full$full_chat)
  }
  if (!is.null(full$chats)) {
    chats <- lapply(full$chats, .telegramR_safe_to_dict)
  }
  if (!is.null(full$users)) {
    users <- lapply(full$users, .telegramR_safe_to_dict)
  }

  about <- if (!is.null(full$full_chat) && !is.null(full$full_chat$about)) full$full_chat$about else NA_character_
  subscribers <- if (!is.null(full$full_chat) && !is.null(full$full_chat$participants_count)) full$full_chat$participants_count else NA_real_
  linked_chat_id <- if (!is.null(full$full_chat) && !is.null(full$full_chat$linked_chat_id)) full$full_chat$linked_chat_id else NA_real_
  created_date <- if (!is.null(ent$date)) as.POSIXct(ent$date, origin = "1970-01-01", tz = "UTC") else as.POSIXct(NA)
  download_date <- as.POSIXct(Sys.time(), tz = "UTC")
  channel_type <- if (!is.null(ent$megagroup) && ent$megagroup) "group" else if (!is.null(ent$broadcast) && ent$broadcast) "channel" else "unknown"
  is_verified <- if (!is.null(ent$verified)) ent$verified else FALSE
  is_restricted <- if (!is.null(ent$restricted) && ent$restricted) TRUE else FALSE

  # Estimate post count (best-effort)
  last_message_id <- NA_real_
  tryCatch({
    est <- estimate_channel_post_count(client, uname)
    last_message_id <- est$last_message_id[[1]]
  }, error = function(e) NULL)

  rows <- list(list(
    channel_id = as.numeric(ent$id),
    username = ent$username %||% uname,
    title = ent$title %||% NA,
    description = about,
    subscribers = as.numeric(subscribers),
    region = if (is.null(region)) NA_character_ else region,
    channel_type = channel_type,
    created_date = created_date,
    is_verified = is_verified,
    is_restricted = is_restricted,
    linked_chat_id = as.numeric(linked_chat_id),
    download_date = download_date,
    last_message_id = as.numeric(last_message_id)
  ))

  if (isTRUE(include_raw)) {
    rows[[1]]$channel_username <- uname
    rows[[1]]$channel_access_hash <- ent$access_hash %||% NA
    rows[[1]]$channel <- ent_dict
    rows[[1]]$full_chat <- full_chat
    rows[[1]]$chats <- chats
    rows[[1]]$users <- users
  }

  tbl <- .telegramR_as_tibble(rows)

  # Enforce column types for the public schema
  if ("channel_id" %in% names(tbl)) tbl$channel_id <- as.numeric(tbl$channel_id)
  if ("subscribers" %in% names(tbl)) tbl$subscribers <- as.numeric(tbl$subscribers)
  if ("linked_chat_id" %in% names(tbl)) tbl$linked_chat_id <- as.numeric(tbl$linked_chat_id)
  if ("last_message_id" %in% names(tbl)) tbl$last_message_id <- as.numeric(tbl$last_message_id)
  if ("created_date" %in% names(tbl) && !inherits(tbl$created_date, "POSIXt")) {
    tbl$created_date <- as.POSIXct(tbl$created_date, origin = "1970-01-01", tz = "UTC")
  }
  if ("download_date" %in% names(tbl) && !inherits(tbl$download_date, "POSIXt")) {
    tbl$download_date <- as.POSIXct(tbl$download_date, origin = "1970-01-01", tz = "UTC")
  }

  tbl
}
