#' @description
#' Build a tibble from a list of dict-like lists, keeping nested data as list columns.
#' @param rows list. Each element should be a named list.
#' @return A tibble.
.telegramR_safe_to_dict <- function(x) {
  if (inherits(x, "TLObject")) {
    # Avoid calling to_dict on Message/MessageService to prevent noisy failures
    if (inherits(x, "Message") || inherits(x, "MessageService")) {
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

  # Try to simplify scalar atomic columns for readability
  cols <- lapply(cols, function(col) {
    # If all values are NULL, keep a list-column of NULLs
    if (all(vapply(col, is.null, logical(1)))) {
      return(rep(list(NULL), length(col)))
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

  tibble::as_tibble(cols)
}

.telegramR_recycle_any <- function(x, n) {
  if (n <= 0) return(x)
  if (is.null(x)) return(rep(NA, n))
  if (is.list(x) || is.data.frame(x)) return(rep(list(x), n))
  if (length(x) == 1) return(rep_len(x, n))
  rep(list(x), n)
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
#' @param ... Passed to client$iter_messages() (e.g. offset_id, max_id, min_id).
#' @return A tibble.
#' @export
download_channel_messages <- function(client, username, limit = Inf, include_channel = TRUE, ...) {
  if (missing(client) || is.null(client)) {
    stop("client is required")
  }
  if (missing(username) || is.null(username) || !nzchar(username)) {
    stop("username is required")
  }

  uname <- sub("^@", "", username)
  ent <- client$get_entity(uname)
  it <- client$iter_messages(ent, limit = limit, ...)
  msgs <- client$collect(it)

  rows <- lapply(msgs, function(m) .telegramR_safe_to_dict(m))

  tbl <- .telegramR_as_tibble(rows)

  if (include_channel) {
    ch <- .telegramR_safe_to_dict(ent)
    n <- nrow(tbl)
    tbl$channel_username <- rep_len(uname, n)
    tbl$channel_id <- rep(list(ch$id), n)
    tbl$channel_title <- rep(list(ch$title), n)
    tbl$channel_access_hash <- rep(list(ch$access_hash), n)
  }

  # Format timestamps if present (Telegram uses seconds since epoch)
  if ("date" %in% names(tbl) && is.numeric(tbl$date)) {
    tbl$date <- as.POSIXct(tbl$date, origin = "1970-01-01", tz = "UTC")
  }
  if ("edit_date" %in% names(tbl) && is.numeric(tbl$edit_date)) {
    tbl$edit_date <- as.POSIXct(tbl$edit_date, origin = "1970-01-01", tz = "UTC")
  }

  tbl
}

#' Download Full Channel Info By Username
#'
#' Fetches channel entity and full channel info by username and returns a tibble.
#'
#' @param client TelegramClient instance.
#' @param username character. Channel username (with or without "@").
#' @return A tibble with channel and full info in list columns.
#' @export
download_channel_info <- function(client, username) {
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
  full <- client$invoke(GetFullChannelRequest$new(input_channel))

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

  rows <- list(list(
    channel_username = uname,
    channel_id = ent_dict$id %||% NA,
    channel_title = ent_dict$title %||% NA,
    channel_access_hash = ent_dict$access_hash %||% NA,
    channel = ent_dict,
    full_chat = full_chat,
    chats = chats,
    users = users
  ))

  .telegramR_as_tibble(rows)
}
