#  @noRd
#  @description
#  Build a tibble from a list of dict-like lists, keeping nested data as list columns.
#  @param rows list. Each element should be a named list.
#  @return A tibble.
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

.telegramR_extract_reaction_row <- function(m, channel) {
  md <- .telegramR_safe_to_dict(m)
  ch <- .telegramR_safe_to_dict(channel)
  reactions <- .telegramR_message_reactions(md)

  list(
    message_id = as.numeric(md$id %||% NA),
    channel_id = as.numeric(ch$id %||% NA),
    channel_username = ch$username %||% NA_character_,
    channel_title = ch$title %||% NA_character_,
    date = if (!is.null(md$date)) as.POSIXct(md$date, origin = "1970-01-01", tz = "UTC") else as.POSIXct(NA),
    reactions_total = as.numeric(reactions$total),
    reactions_json = reactions$json
  )
}

.telegramR_extract_reply_row <- function(m, channel, root_message_id) {
  md <- .telegramR_safe_to_dict(m)
  ch <- .telegramR_safe_to_dict(channel)
  reactions <- .telegramR_message_reactions(md)

  from_id <- NA_real_
  from_type <- NA_character_
  if (is.list(md$from_id)) {
    if (!is.null(md$from_id$user_id)) {
      from_id <- md$from_id$user_id
      from_type <- "user"
    } else if (!is.null(md$from_id$channel_id)) {
      from_id <- md$from_id$channel_id
      from_type <- "channel"
    } else if (!is.null(md$from_id$chat_id)) {
      from_id <- md$from_id$chat_id
      from_type <- "chat"
    }
  }

  list(
    root_message_id = as.numeric(root_message_id),
    comment_message_id = as.numeric(md$id %||% NA),
    channel_id = as.numeric(ch$id %||% NA),
    channel_username = ch$username %||% NA_character_,
    channel_title = ch$title %||% NA_character_,
    date = if (!is.null(md$date)) as.POSIXct(md$date, origin = "1970-01-01", tz = "UTC") else as.POSIXct(NA),
    text = md$message %||% NA_character_,
    from_id = as.numeric(from_id),
    from_type = from_type,
    reactions_total = as.numeric(reactions$total),
    reactions_json = reactions$json
  )
}

.telegramR_extract_member_row <- function(user, channel) {
  ud <- .telegramR_safe_to_dict(user)
  ch <- .telegramR_safe_to_dict(channel)
  part <- NULL
  if (!is.null(user$participant)) {
    part <- .telegramR_safe_to_dict(user$participant)
  }
  part_type <- if (!is.null(part)) part$`_` %||% NA_character_ else NA_character_

  inviter_id <- NA_real_
  if (is.list(part) && !is.null(part$inviter_id)) {
    inviter_id <- part$inviter_id
  }

  joined_date <- if (is.list(part) && !is.null(part$date)) {
    as.POSIXct(part$date, origin = "1970-01-01", tz = "UTC")
  } else {
    as.POSIXct(NA)
  }

  status <- NA_character_
  if (is.list(ud$status) && !is.null(ud$status$`_`)) {
    status <- ud$status$`_`
  }

  list(
    user_id = as.numeric(ud$id %||% NA),
    username = ud$username %||% NA_character_,
    first_name = ud$first_name %||% NA_character_,
    last_name = ud$last_name %||% NA_character_,
    is_bot = isTRUE(ud$bot),
    is_deleted = isTRUE(ud$deleted),
    is_verified = isTRUE(ud$verified),
    is_restricted = isTRUE(ud$restricted),
    is_scam = isTRUE(ud$scam),
    is_fake = isTRUE(ud$fake),
    status = status,
    participant_type = part_type,
    inviter_id = as.numeric(inviter_id),
    joined_date = joined_date,
    channel_id = as.numeric(ch$id %||% NA),
    channel_username = ch$username %||% NA_character_,
    channel_title = ch$title %||% NA_character_
  )
}

.telegramR_resolve_channel <- function(client, channel) {
  if (missing(channel) || is.null(channel)) {
    stop("channel is required")
  }

  ent <- NULL
  uname <- NA_character_

  if (is.character(channel)) {
    uname <- sub("^@", "", channel)
    ent <- client$get_entity(uname)
  } else if (is.numeric(channel)) {
    chan_id <- as.numeric(channel)[1]
    peer <- PeerChannel$new(as.integer(chan_id))
    ent <- tryCatch(client$get_entity(peer), error = function(e) NULL)
    if (is.null(ent)) {
      ent <- tryCatch(client$get_entity(chan_id), error = function(e) NULL)
    }
    if (is.null(ent)) {
      stop("Could not resolve channel by id. Ensure the channel is in your dialogs or provide a username.")
    }
  } else {
    ent <- tryCatch(client$get_entity(channel), error = function(e) NULL)
    if (is.null(ent)) {
      ent <- channel
    }
  }

  if (!inherits(ent, c("Channel", "ChannelForbidden"))) {
    stop("Resolved entity is not a channel. Provide a channel username or id.")
  }

  uname <- ent$username %||% uname
  list(entity = ent, username = uname)
}

#' Download Channel Messages By Channel
#'
#' Fetches messages for a channel by username or numeric id and returns a tibble with
#' message fields and nested structures as list columns.
#'
#' @param client TelegramClient instance.
#' @param channel character or numeric. Channel username (with or without "@") or numeric id.
#' @param limit integer or Inf. Maximum number of messages to fetch.
#' @param include_channel logical. If TRUE, include channel fields on every row.
#' @param start_date POSIXct/Date/character. Earliest date to include (UTC).
#' @param end_date POSIXct/Date/character. Latest date to include (UTC).
#' @param show_progress logical. If TRUE, display a progress bar.
#' @param ... Passed to client$iter_messages() (e.g. offset_id, max_id, min_id).
#' @return A tibble.
download_channel_messages <- function(client, channel, limit = Inf, include_channel = TRUE, start_date = NULL, end_date = NULL, show_progress = TRUE, ...) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }

  resolved <- .telegramR_resolve_channel(client, channel)
  ent <- resolved$entity
  uname <- resolved$username %||% NA_character_
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
    est <- tryCatch(estimate_channel_post_count(client, channel), error = function(e) NULL)
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

#' Download Channel Reactions By Channel
#'
#' Fetches message reactions for a channel by username or numeric id.
#'
#' @param client TelegramClient instance.
#' @param channel character or numeric. Channel username (with or without "@") or numeric id.
#' @param limit integer or Inf. Maximum number of messages to fetch.
#' @param start_date POSIXct/Date/character. Earliest date to include (UTC).
#' @param end_date POSIXct/Date/character. Latest date to include (UTC).
#' @param include_channel logical. If TRUE, include channel fields on every row.
#' @param show_progress logical. If TRUE, display a progress bar.
#' @param ... Passed to client$iter_messages() (e.g. offset_id, max_id, min_id).
#' @return A tibble.
download_channel_reactions <- function(client, channel, limit = Inf, start_date = NULL, end_date = NULL, include_channel = TRUE, show_progress = TRUE, ...) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }

  resolved <- .telegramR_resolve_channel(client, channel)
  ent <- resolved$entity

  start_dt <- .telegramR_parse_datetime(start_date)
  end_dt <- .telegramR_parse_datetime(end_date)

  iter_args <- list(entity = ent, limit = limit)
  if (!is.null(end_dt)) {
    iter_args$offset_date <- end_dt
  }
  iter_args <- c(iter_args, list(...))

  it <- do.call(client$iter_messages, iter_args)

  total_est <- NA_real_
  if (is.finite(limit)) {
    total_est <- as.numeric(limit)
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
    row <- .telegramR_extract_reaction_row(item, ent)
    if (!is.null(row$date) && inherits(row$date, "POSIXt")) {
      if (!is.null(end_dt) && row$date > end_dt) {
        next
      }
      if (!is.null(start_dt) && row$date < start_dt) {
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

#' Download Channel Media By Channel
#'
#' Downloads media (photos/videos/documents) from a channel by username or numeric id
#' and returns a tibble with file paths.
#'
#' @param client TelegramClient instance.
#' @param channel character or numeric. Channel username (with or without "@") or numeric id.
#' @param limit integer or Inf. Maximum number of messages to fetch.
#' @param start_date POSIXct/Date/character. Earliest date to include (UTC).
#' @param end_date POSIXct/Date/character. Latest date to include (UTC).
#' @param media_types character vector. Media types to download (e.g. "photo", "video", "document", "image", "audio").
#' @param out_dir character. Directory to save files into.
#' @param show_progress logical. If TRUE, display a progress bar.
#' @param wait_time numeric. Seconds to sleep between requests to avoid flood waits.
#' @param retries integer. Number of retries per media download on failure.
#' @param include_errors logical. If TRUE, include error messages per row.
#' @param ... Passed to client$iter_messages() (e.g. offset_id, max_id, min_id).
#' @return A tibble with message_id, channel info, media_type and file_path.
download_channel_media <- function(client, channel, limit = Inf, start_date = NULL, end_date = NULL,
                                   media_types = c("photo", "video", "image", "document"), out_dir = "downloads",
                                   show_progress = TRUE, wait_time = 0, retries = 1, include_errors = TRUE, ...) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }
  if (missing(out_dir) || is.null(out_dir) || !nzchar(out_dir)) {
    stop("out_dir is required")
  }

  # Force sync mode for downloads
  old_async <- getOption("telegramR.async", FALSE)
  on.exit(options(telegramR.async = old_async), add = TRUE)
  options(telegramR.async = FALSE)

  resolved <- .telegramR_resolve_channel(client, channel)
  ent <- resolved$entity

  start_dt <- .telegramR_parse_datetime(start_date)
  end_dt <- .telegramR_parse_datetime(end_date)

  iter_args <- list(entity = ent, limit = limit, wait_time = wait_time)
  if (!is.null(end_dt)) {
    iter_args$offset_date <- end_dt
  }
  iter_args <- c(iter_args, list(...))
  it <- do.call(client$iter_messages, iter_args)

  if (!dir.exists(out_dir)) dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)

  total_est <- NA_real_
  if (is.finite(limit)) {
    total_est <- as.numeric(limit)
  }
  show_pb <- isTRUE(show_progress) && interactive() && is.finite(total_est) && total_est > 0
  pb <- NULL
  if (show_pb) {
    pb <- utils::txtProgressBar(min = 0, max = total_est, style = 3)
    on.exit(tryCatch(close(pb), error = function(e) NULL), add = TRUE)
  }

  rows <- list()
  n <- 0L
  i <- 0L
  media_types <- tolower(media_types)
  repeat {
    item <- it$.next()
    if (is.null(item)) break
    i <- i + 1L

    raw_msg <- item
    if (!inherits(raw_msg, c("Message", "MessageService"))) {
      mid <- tryCatch(item$message_id %||% item$id, error = function(e) NULL)
      if (!is.null(mid)) {
        id_it <- client$iter_messages(ent, ids = as.integer(mid))
        raw_msg <- id_it$.next()
      }
    }
    if (is.null(raw_msg)) {
      if (show_pb) utils::setTxtProgressBar(pb, i)
      next
    }

    row <- .telegramR_extract_message_row(raw_msg, ent)
    if (!is.null(row$date) && inherits(row$date, "POSIXt")) {
      if (!is.null(end_dt) && row$date > end_dt) {
        next
      }
      if (!is.null(start_dt) && row$date < start_dt) {
        break
      }
    }

    mtype <- tolower(row$media_type %||% "")
    if (!nzchar(mtype) || !(mtype %in% media_types)) {
      if (show_pb) utils::setTxtProgressBar(pb, i)
      next
    }

    err_msg <- NA_character_
    file_path <- NA_character_
    attempt <- 0L
    while (attempt <= retries) {
      attempt <- attempt + 1L
      res <- tryCatch(
        {
          out <- client$download_media(raw_msg, file = out_dir)
          if (inherits(out, "promise") || inherits(out, "Future")) {
            out <- future::value(out)
          }
          out
        },
        error = function(e) {
          err_msg <<- conditionMessage(e)
          NULL
        }
      )
      if (!is.null(res)) {
        file_path <- res
        break
      }
      if (wait_time > 0) Sys.sleep(wait_time)
    }

    n <- n + 1L
    rows[[n]] <- list(
      message_id = row$message_id,
      channel_id = row$channel_id,
      channel_username = row$channel_username,
      channel_title = row$channel_title,
      date = row$date,
      media_type = row$media_type,
      file_path = file_path
    )
    if (isTRUE(include_errors)) {
      rows[[n]]$error <- err_msg
    }

    if (show_pb) utils::setTxtProgressBar(pb, i)
  }

  if (length(rows) > 0) dplyr::bind_rows(rows) else tibble::tibble()
}

#' Download Channel Replies/Comments By Channel
#'
#' Fetches replies (comments) to channel posts by username or numeric id.
#'
#' @param client TelegramClient instance.
#' @param channel character or numeric. Channel username (with or without "@") or numeric id.
#' @param message_ids integer vector or NULL. If NULL, replies are fetched for the most recent posts.
#' @param message_limit integer. Number of recent posts to inspect when message_ids is NULL.
#' @param reply_limit integer or Inf. Maximum number of replies per post.
#' @param include_channel logical. If TRUE, include channel fields on every row.
#' @param show_progress logical. If TRUE, display a progress bar.
#' @param ... Passed to client$iter_messages() when fetching recent posts.
#' @return A tibble.
download_channel_replies <- function(client, channel, message_ids = NULL, message_limit = 100, reply_limit = Inf, include_channel = TRUE, show_progress = TRUE, ...) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }

  resolved <- .telegramR_resolve_channel(client, channel)
  ent <- resolved$entity

  if (is.null(message_ids)) {
    root_it <- do.call(client$iter_messages, c(list(entity = ent, limit = message_limit), list(...)))
    ids <- list()
    i <- 0L
    repeat {
      item <- root_it$.next()
      if (is.null(item)) break
      if (!is.null(item$id)) {
        i <- i + 1L
        ids[[i]] <- item$id
      }
    }
    message_ids <- unlist(ids, use.names = FALSE)
  }

  if (length(message_ids) == 0) {
    return(tibble::tibble())
  }

  total_est <- length(message_ids)
  show_pb <- isTRUE(show_progress) && interactive() && total_est > 0
  pb <- NULL
  if (show_pb) {
    pb <- utils::txtProgressBar(min = 0, max = total_est, style = 3)
    on.exit(tryCatch(close(pb), error = function(e) NULL), add = TRUE)
  }

  rows <- list()
  n <- 0L
  for (i in seq_along(message_ids)) {
    msg_id <- message_ids[[i]]
    rep_it <- client$iter_messages(ent, limit = reply_limit, reply_to = msg_id)
    repeat {
      rep_item <- rep_it$.next()
      if (is.null(rep_item)) break
      n <- n + 1L
      rows[[n]] <- .telegramR_extract_reply_row(rep_item, ent, msg_id)
    }
    if (show_pb) utils::setTxtProgressBar(pb, i)
  }

  tbl <- if (length(rows) > 0) dplyr::bind_rows(rows) else tibble::tibble()
  if (!isTRUE(include_channel)) {
    tbl$channel_id <- NULL
    tbl$channel_username <- NULL
    tbl$channel_title <- NULL
  }
  tbl
}

#' Download Channel Members By Channel
#'
#' Fetches channel members (participants) by username or numeric id.
#'
#' @param client TelegramClient instance.
#' @param channel character or numeric. Channel username (with or without "@") or numeric id.
#' @param limit integer or Inf. Maximum number of members to fetch.
#' @param search character. Search query for participant names/usernames.
#' @param filter A participants filter, e.g. ChannelParticipantsAdmins.
#' @param include_channel logical. If TRUE, include channel fields on every row.
#' @param show_progress logical. If TRUE, display a progress bar.
#' @return A tibble.
download_channel_members <- function(client, channel, limit = Inf, search = "", filter = NULL, include_channel = TRUE, show_progress = TRUE) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }

  resolved <- .telegramR_resolve_channel(client, channel)
  ent <- resolved$entity

  it <- client$iter_participants(ent, limit = limit, search = search, filter = filter)

  total_est <- NA_real_
  if (is.finite(limit)) {
    total_est <- as.numeric(limit)
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
    n <- n + 1L
    rows[[n]] <- .telegramR_extract_member_row(item, ent)
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
#' @param channel character or numeric. Channel username (with or without "@") or numeric id.
#' @return A tibble with last_message_id, approx_total_posts, and note.
estimate_channel_post_count <- function(client, channel) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }

  resolved <- .telegramR_resolve_channel(client, channel)
  ent <- resolved$entity
  it <- client$iter_messages(ent, limit = 1)
  msgs <- client$collect(it)
  last_id <- if (length(msgs) > 0 && !is.null(msgs[[1]]$id)) msgs[[1]]$id else NA_real_

  tibble::tibble(
    last_message_id = as.numeric(last_id),
    note = "Approximate: uses latest message id as upper bound; gaps/deletions mean it is not exact."
  )
}

#' Download Full Channel Info By Channel
#'
#' Fetches channel entity and full channel info by username or numeric id and returns a tibble.
#'
#' @param client TelegramClient instance.
#' @param channel character or numeric. Channel username (with or without "@") or numeric id.
#' @param region character or NULL. Optional region tag to attach.
#' @param include_raw logical. If TRUE, include raw Telegram objects as list columns.
#' @return A tibble with flattened channel info and optional list columns for raw objects.
download_channel_info <- function(client, channel, region = NULL, include_raw = FALSE) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }

  resolved <- .telegramR_resolve_channel(client, channel)
  ent <- resolved$entity
  uname <- resolved$username %||% NA_character_
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
    est <- estimate_channel_post_count(client, channel)
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
