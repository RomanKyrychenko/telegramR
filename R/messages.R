.MAX_CHUNK_SIZE = 100


#' MessagesIter R6 class
#'
#' Iterator over messages with support for search, filters, reply threads,
#' scheduled history, ranges (min_id/max_id), and reverse iteration.
#' This is a translation of the original async RequestIter-based logic into R6.
#' It delegates fetching to the provided client via iter_messages().
#'
#' @export
MessagesIter <- R6::R6Class(
  "MessagesIter",
  public = list(
    #' Client used to perform requests
    client = NULL,
    #' Input entity (resolved via client$get_input_entity if available)
    entity_input = NULL,
    #' Whether this is a global search (entity is NULL)
    is_global = FALSE,
    #' Whether to iterate in reverse
    reverse = FALSE,
    #' Hard limit of messages to retrieve
    limit = Inf,
    #' Remaining messages to retrieve
    left = Inf,
    #' Optional per-request wait time (seconds)
    wait_time = NULL,
    #' Add offset used by server requests
    add_offset = 0L,
    #' Upper bound for message id (exclusive)
    max_id = Inf,
    #' Lower bound for message id (exclusive)
    min_id = 0L,
    #' Last seen message id (used to avoid duplicates/order issues)
    last_id = Inf,
    #' Total messages reported by the server (when available)
    total = 0L,
    #' Request parameters tracked between chunks
    request = NULL,
    #' Internal buffer of fetched messages
    buffer = list(),
    #' Exhausted flag
    exhausted = FALSE,
    #' From-user peer id for local filtering when needed
    from_id = NULL,
    #' Optional search query
    search = NULL,
    #' Optional filter object
    filter = NULL,
    #' Optional reply thread id
    reply_to = NULL,
    #' Optional offset date
    offset_date = NULL,

    #' @description Initialize the iterator with query parameters.
    #'
    #' @param client Telegram client object that provides iter_messages(), collect(), collect_one().
    #' @param entity Optional entity to iterate (NULL for global search).
    #' @param offset_id Integer offset id start.
    #' @param min_id Integer minimum id (exclusive).
    #' @param max_id Integer maximum id (exclusive).
    #' @param from_user Optional user entity to filter from.
    #' @param offset_date POSIXct or Date to offset by date.
    #' @param add_offset Integer additional offset.
    #' @param filter Optional filter object or constructor.
    #' @param search Optional text query.
    #' @param reply_to Optional message id to iterate replies to.
    #' @param scheduled Logical; if TRUE, scheduled messages history is used.
    #' @param reverse Logical; if TRUE, oldest to newest.
    #' @param wait_time Optional per-request sleep in seconds.
    #' @param limit Integer or Inf, maximum messages to yield.
    initialize = function(client,
                          entity = NULL,
                          offset_id = 0L,
                          min_id = 0L,
                          max_id = 0L,
                          from_user = NULL,
                          offset_date = NULL,
                          add_offset = 0L,
                          filter = NULL,
                          search = NULL,
                          reply_to = NULL,
                          scheduled = FALSE,
                          reverse = FALSE,
                          wait_time = NULL,
                          limit = Inf) {
      self$client <- client
      self$reverse <- isTRUE(reverse)
      self$limit <- if (is.null(limit)) Inf else limit
      self$left <- self$limit
      self$add_offset <- as.integer(add_offset)
      self$min_id <- as.integer(min_id %||% 0L)
      self$max_id <- if (is.null(max_id) || max_id == 0L) Inf else as.integer(max_id)
      self$offset_date <- offset_date
      self$search <- search
      self$filter <- if (is.null(filter)) NULL else filter
      self$reply_to <- reply_to

      # Resolve input entity if provided
      if (!is.null(entity) && !is.null(self$client) && !is.null(self$client$get_input_entity)) {
        self$entity_input <- self$client$get_input_entity(entity)
        self$is_global <- FALSE
      } else {
        self$entity_input <- NULL
        self$is_global <- is.null(entity)
      }

      if (self$is_global && self$reverse) {
        stop("Cannot reverse global search")
      }

      off_id <- as.integer(offset_id %||% 0L)

      # Emulate Telethon min/max id quirks locally
      if (self$reverse) {
        off_id <- max(off_id, self$min_id)
      }
      if (off_id != 0L && is.finite(self$max_id)) {
        if ((self$max_id - off_id) <= 1L) {
          self$exhausted <- TRUE
        } else {
          off_id <- max(off_id, self$max_id)
        }
      } else if (!is.finite(self$max_id)) {
        # leave off_id as-is
      }

      if (off_id != 0L && self$min_id != 0L) {
        if ((off_id - self$min_id) <= 1L) {
          self$exhausted <- TRUE
        }
      }

      if (self$reverse) {
        if (off_id != 0L) {
          off_id <- off_id + 1L
        }
      } else if (is.null(self$offset_date)) {
        # offset_id has priority over offset_date
        if (off_id == 0L) off_id <- 1L
      }

      # Resolve from_user -> from_id for local validation if needed
      local_from_user <- from_user
      if (!is.null(from_user) && !is.null(self$client) && !is.null(self$client$get_input_entity)) {
        local_from_user <- self$client$get_input_entity(from_user)
      }
      if (!is.null(local_from_user) && !is.null(self$client) && !is.null(self$client$get_peer_id)) {
        self$from_id <- self$client$get_peer_id(local_from_user)
      } else {
        self$from_id <- NULL
      }

      # When global + from_user, treat entity as empty peer (server-side quirk); we emulate via flags
      if (self$is_global && !is.null(local_from_user)) {
        # nothing special needed here beyond tracking flags
      }

      # Determine entity type to decide local vs server-side from_user filtering
      # In private chats, server ignores from_id; keep local filter instead.
      if (!is.null(self$entity_input) && !is.null(self$client) && !is.null(self$client$entity_type)) {
        ty <- self$client$entity_type(self$entity_input)
        if (!is.null(ty) && toupper(as.character(ty)) == "USER") {
          # keep self$from_id for local check, but do not send from_user to server
          local_from_user <- NULL
        } else {
          # let server filter by from_user; disable local check
          if (!is.null(from_user)) self$from_id <- NULL
        }
      }

      # Build "request" parameters we will reuse on each chunk
      self$request <- list(
        type = private$select_request_type(self$is_global, scheduled, !is.null(self$reply_to), !is.null(self$search) || !is.null(self$filter) || !is.null(local_from_user)),
        peer = self$entity_input,
        q = self$search %||% "",
        filter = self$filter,
        max_date = self$offset_date,   # for search global
        offset_date = self$offset_date, # for history/replies
        offset_id = off_id,
        add_offset = self$add_offset,
        limit = 1L,
        from_user = local_from_user,
        msg_id = self$reply_to
      )

      # If user asked for 0 items, still try to learn total and finish
      if (is.finite(self$limit) && self$limit <= 0) {
        private$prime_total_count()
        self$exhausted <- TRUE
      }

      # Heuristic wait to avoid flood waits
      if (is.null(wait_time)) {
        self$wait_time <- if (is.finite(self$limit) && self$limit > 3000) 1 else 0
      } else {
        self$wait_time <- wait_time
      }

      # Reverse iteration needs negative add_offset in Telethon; emulate by shifting
      if (self$reverse) {
        self$request$add_offset <- self$request$add_offset - private$max_chunk_size
      }

      self$last_id <- if (self$reverse) 0L else Inf
    },

    #' Load next chunk
    #'
    #' Fetches the next chunk of messages and appends them to the internal buffer.
    #'
    #' @return A list of messages for this chunk or NULL if exhausted.
    load_next_chunk = function() {
      if (self$exhausted) return(NULL)
      if (!is.null(self$wait_time) && self$wait_time > 0) Sys.sleep(self$wait_time)

      n <- if (is.finite(self$left)) min(self$left, private$max_chunk_size) else private$max_chunk_size
      if (n <= 0) {
        self$exhausted <- TRUE
        return(NULL)
      }

      # Adjust add_offset for reverse if the last request had a smaller limit
      req_add_offset <- self$request$add_offset
      if (self$reverse && n != private$max_chunk_size) {
        req_add_offset <- self$add_offset - n
      }

      # Delegate fetching to client$iter_messages() + collect()
      if (is.null(self$client) || is.null(self$client$iter_messages) || is.null(self$client$collect)) {
        stop("Client must provide iter_messages() and collect() to use MessagesIter.")
      }

      it <- self$client$iter_messages(
        entity = self$entity_input,
        limit = n,
        offset_date = self$request$offset_date,
        offset_id = self$request$offset_id,
        max_id = if (is.finite(self$max_id)) self$max_id else 0L,
        min_id = if (self$min_id > 0L) self$min_id else 0L,
        add_offset = req_add_offset,
        search = self$search,
        filter = self$filter,
        from_user = self$request$from_user,
        ids = NULL,
        reverse = self$reverse,
        reply_to = self$reply_to,
        scheduled = (!is.null(self$request$type) && self$request$type == "scheduled")
      )

      res <- tryCatch(self$client$collect(it), error = function(e) e)
      if (inherits(res, "error")) {
        # On errors, mark exhausted to avoid loops
        self$exhausted <- TRUE
        return(NULL)
      }

      msgs <- res
      if (!length(msgs)) {
        self$exhausted <- TRUE
        return(NULL)
      }

      out <- list()
      for (m in msgs) {
        # Skip empties and enforce from_id locally when needed
        mid <- tryCatch(m$id, error = function(e) NULL)
        if (is.null(mid)) next

        sender_id <- tryCatch(m$sender_id, error = function(e) NULL)
        if (!is.null(self$from_id) && !is.null(sender_id) && !identical(sender_id, self$from_id)) {
          next
        }

        if (!private$message_in_range(m)) {
          # Stop iteration when leaving the range
          self$exhausted <- TRUE
          break
        }

        self$last_id <- mid
        out[[length(out) + 1L]] <- m
      }

      if (!length(out)) {
        self$exhausted <- TRUE
        return(NULL)
      }

      # Update offsets for next request
      private$update_offset(out[[length(out)]])

      # Update counters
      if (is.finite(self$left)) {
        self$left <- max(0, self$left - length(out))
        if (self$left == 0) self$exhausted <- TRUE
      }
      self$buffer <- c(self$buffer, out)
      out
    },

    #' Check if there are more items to retrieve
    #'
    #' @return logical indicating whether there are more items to fetch or buffered.
    has_next = function() {
      if (length(self$buffer) > 0) return(TRUE)
      if (!self$exhausted) return(TRUE)
      FALSE
    },

    #' Get the next item, fetching more if needed
    #'
    #' @return A single message object or NULL if exhausted.
    .next = function() {
      if (length(self$buffer) == 0) {
        chunk <- self$load_next_chunk()
        if (is.null(chunk) || length(chunk) == 0) return(NULL)
      }
      item <- self$buffer[[1]]
      if (length(self$buffer) > 1) {
        self$buffer <- self$buffer[-1]
      } else {
        self$buffer <- list()
      }
      item
    }
  ),
  private = list(
    max_chunk_size = 100L,

    select_request_type = function(is_global, scheduled, is_replies, is_search_like) {
      if (is_global) return("search_global")
      if (isTRUE(scheduled)) return("scheduled")
      if (isTRUE(is_replies)) return("replies")
      if (isTRUE(is_search_like)) return("search")
      "history"
    },

    prime_total_count = function() {
      # Best effort: try to fetch 1 item to learn total via client
      if (self$exhausted) return(invisible(NULL))
      if (is.null(self$client) || is.null(self$client$iter_messages) || is.null(self$client$collect)) return(invisible(NULL))
      it <- self$client$iter_messages(
        entity = self$entity_input,
        limit = 1L,
        offset_date = self$request$offset_date,
        offset_id = self$request$offset_id,
        max_id = if (is.finite(self$max_id)) self$max_id else 0L,
        min_id = if (self$min_id > 0L) self$min_id else 0L,
        add_offset = self$request$add_offset,
        search = self$search,
        filter = self$filter,
        from_user = self$request$from_user,
        ids = NULL,
        reverse = self$reverse,
        reply_to = self$reply_to,
        scheduled = (!is.null(self$request$type) && self$request$type == "scheduled")
      )
      res <- tryCatch(self$client$collect(it), error = function(e) NULL)
      if (is.list(res)) {
        self$total <- length(res)
      }
      invisible(NULL)
    },

    message_in_range = function(message) {
      mid <- tryCatch(message$id, error = function(e) NULL)
      if (is.null(mid)) return(FALSE)

      if (!is.null(self$entity_input)) {
        if (self$reverse) {
          if (mid <= self$last_id || mid >= self$max_id) return(FALSE)
        } else {
          if (mid >= self$last_id || mid <= self$min_id) return(FALSE)
        }
      }
      TRUE
    },

    update_offset = function(last_message) {
      mid <- tryCatch(last_message$id, error = function(e) NULL)
      if (is.null(mid)) return(invisible(NULL))

      self$request$offset_id <- mid
      if (self$reverse) {
        # Skip the one we already have
        self$request$offset_id <- self$request$offset_id + 1L
      }

      # When using date offsets, keep them updated if available
      ldate <- tryCatch(last_message$date, error = function(e) NULL)
      if (!is.null(ldate)) {
        if (!is.null(self$request) && !is.null(self$request$type)) {
          if (self$request$type %in% c("history", "search_global", "replies")) {
            self$request$offset_date <- ldate
            # For search requests that might have used max_date, clear it after first page
            self$request$max_date <- NULL
          }
        }
      }
      invisible(NULL)
    }
  )
)

`%||%` <- function(a, b) if (is.null(a)) b else a


#' IDsIter R6 class
#'
#' Iterator over explicit message IDs, fetching results in chunks.
#' It optionally validates that returned messages belong to a given entity.
#'
#' @section Initialization:
#' it <- IDsIter$new(client, entity = NULL, ids, reverse = FALSE, wait_time = NULL, limit = Inf)
#'
#' @export
IDsIter <- R6::R6Class(
  "IDsIter",
  public = list(
    #' Client used to perform requests
    client = NULL,
    #' Input entity (resolved via client$get_input_entity if available)
    entity_input = NULL,
    #' Entity type as reported by the client (e.g., "CHANNEL")
    entity_type = NULL,
    #' Vector of IDs to fetch (possibly reversed)
    ids = NULL,
    #' Current offset over ids
    offset = 0L,
    #' Whether to iterate in reverse order
    reverse = FALSE,
    #' Optional per-request wait time in seconds
    wait_time = NULL,
    #' Hard limit on how many items to consider
    limit = Inf,
    #' Total number of requested ids
    total = 0L,
    #' Internal buffer of fetched items aligned with requested ids
    buffer = list(),

    #' @description Initialize the iterator
    #'
    #' @param client Telegram client object.
    #' @param entity Optional entity to validate messages against (can be NULL).
    #' @param ids Integer vector of message IDs to fetch.
    #' @param reverse logical. If TRUE, process ids in reverse order.
    #' @param wait_time numeric or NULL. If NULL, set heuristically based on limit.
    #' @param limit integer or Inf. Used only for wait_time heuristic here.
    initialize = function(client, entity = NULL, ids, reverse = FALSE, wait_time = NULL, limit = Inf) {
      self$client <- client
      self$reverse <- isTRUE(reverse)
      self$ids <- if (self$reverse) rev(as.integer(ids)) else as.integer(ids)
      self$total <- length(self$ids)
      self$offset <- 0L
      self$limit <- limit

      # Resolve input entity if provided
      if (!is.null(entity) && !is.null(self$client) && !is.null(self$client$get_input_entity)) {
        self$entity_input <- self$client$get_input_entity(entity)
      } else {
        self$entity_input <- entity
      }

      # Determine entity type if possible
      if (!is.null(self$entity_input) && !is.null(self$client) && !is.null(self$client$entity_type)) {
        self$entity_type <- self$client$entity_type(self$entity_input)
      }

      # 30s flood wait every 300 messages (3 requests of 100 each, 30 of 10, etc.)
      if (is.null(wait_time)) {
        self$wait_time <- if (is.finite(self$limit) && self$limit > 300) 10 else 0
      } else {
        self$wait_time <- wait_time
      }
    },

    #' Load the next chunk of results into the buffer
    #'
    #' Fetches up to the internal chunk size worth of messages for the next slice of ids.
    #'
    #' @return A list of messages or NULLs aligned with the requested chunk of ids;
    #'         NULL if there are no more ids to process.
    load_next_chunk = function() {
      if (self$offset >= length(self$ids)) {
        return(NULL)
      }

      idx_from <- self$offset + 1L
      idx_to <- min(length(self$ids), self$offset + private$max_chunk_size)
      ids_chunk <- self$ids[idx_from:idx_to]
      if (length(ids_chunk) == 0L) {
        return(NULL)
      }
      self$offset <- self$offset + private$max_chunk_size

      # Decide whether to use channel-specific retrieval
      is_channel <- !is.null(self$entity_type) &&
        tolower(as.character(self$entity_type)) == "channel"

      res <- NULL
      # Try channel-specific method first when applicable
      if (is_channel && !is.null(self$client) && !is.null(self$client$channels_get_messages)) {
        res <- tryCatch(
          self$client$channels_get_messages(self$entity_input, ids_chunk),
          error = function(e) e
        )
      } else if (!is.null(self$client) && !is.null(self$client$get_messages)) {
        res <- tryCatch(
          self$client$get_messages(ids = ids_chunk),
          error = function(e) e
        )
      } else {
        stop("No suitable client method to get messages by ids.")
      }

      # If request failed or returned an error-like object, fill with NULLs
      if (inherits(res, "error")) {
        out <- as.list(rep(NA, length(ids_chunk)))
        out[] <- list(NULL)
        self$buffer <- c(self$buffer, out)
        return(out)
      }

      # Optional "from_id" validation if client can provide a peer for the entity
      from_id <- NULL
      if (!is.null(self$entity_input) && !is.null(self$client) && !is.null(self$client$get_peer)) {
        from_id <- self$client$get_peer(self$entity_input)
      }

      # Extract messages collection from result
      messages <- NULL
      if (is.list(res) && !is.null(res$messages)) {
        messages <- res$messages
      } else {
        messages <- res
      }

      # Build index by id for quick lookup; keep as list for R idioms
      by_id <- new.env(hash = TRUE, parent = emptyenv())
      if (length(messages)) {
        for (msg in messages) {
          msg_id <- tryCatch(msg$id, error = function(e) NULL)
          if (!is.null(msg_id)) {
            assign(as.character(msg_id), msg, envir = by_id)
          }
        }
      }

      out <- vector("list", length(ids_chunk))
      for (i in seq_along(ids_chunk)) {
        k <- as.character(ids_chunk[[i]])
        msg <- if (exists(k, envir = by_id, inherits = FALSE)) get(k, envir = by_id) else NULL

        # Validate that the message belongs to the requested entity if from_id is known
        if (!is.null(from_id) && !is.null(msg)) {
          peer_id <- tryCatch(msg$peer_id, error = function(e) NULL)
          if (!is.null(peer_id) && !identical(peer_id, from_id)) {
            msg <- NULL
          }
        }

        out[[i]] <- msg
      }

      self$buffer <- c(self$buffer, out)
      out
    },

    #' Check if there are more items to retrieve
    #'
    #' @return logical indicating whether there are more items to fetch or buffered.
    has_next = function() {
      length(self$buffer) > 0 || (self$offset < length(self$ids))
    },

    #' Get the next item, fetching more if needed
    #'
    #' @return A single message object or NULL if exhausted.
    .next = function() {
      if (length(self$buffer) == 0) {
        chunk <- self$load_next_chunk()
        if (is.null(chunk) || length(chunk) == 0) {
          return(NULL)
        }
      }
      item <- self$buffer[[1]]
      if (length(self$buffer) > 1) {
        self$buffer <- self$buffer[-1]
      } else {
        self$buffer <- list()
      }
      item
    }
  ),
  private = list(
    # Max messages per chunk/request
    max_chunk_size = 100L
  )
)


#' MessageMethods R6 class
#'
#' High-level message operations (iterate, fetch, send, edit, delete, pin, etc.).
#' Acts as a mixin around a Telegram client instance provided at construction.
#'
#' @section Initialization:
#' message_methods <- MessageMethods$new(client)
#'
#' @export
MessageMethods <- R6::R6Class(
  "MessageMethods",
  public = list(

    #' @description Iterate over messages
    #'
    #' Iterator over the messages for the given chat. The default order is newest to oldest,
    #' set reverse = TRUE to iterate oldest to newest.
    #'
    #' If either search, filter or from_user are provided, server-side search will be used.
    #'
    #' @param entity Entity to retrieve the message history from (can be NULL for global search).
    #' @param limit integer or NULL. Number of messages to retrieve; NULL fetches all.
    #' @param offset_date POSIXct or Date. Only messages previous to this date are returned.
    #' @param offset_id integer. Only messages previous to this id are returned.
    #' @param max_id integer. Exclude messages with id >= this value.
    #' @param min_id integer. Exclude messages with id <= this value.
    #' @param add_offset integer. Additional message offset.
    #' @param search character. Text query for server-side search.
    #' @param filter A filter object or constructor for server-side filtering.
    #' @param from_user Entity. Only messages from this user will be returned.
    #' @param wait_time numeric. Seconds to sleep between requests to avoid flood waits.
    #' @param ids integer or integer vector. If set, return these ids instead of iterating.
    #' @param reverse logical. If TRUE, iterate oldest to newest.
    #' @param reply_to integer. If set, iterate replies to this message id.
    #' @param scheduled logical. If TRUE, return scheduled messages (ignores other params except entity).
    #' @return An iterator-like object or list depending on implementation.
    iter_messages = function(entity,
                             limit = NULL,
                             offset_date = NULL,
                             offset_id = 0L,
                             max_id = 0L,
                             min_id = 0L,
                             add_offset = 0L,
                             search = NULL,
                             filter = NULL,
                             from_user = NULL,
                             wait_time = NULL,
                             ids = NULL,
                             reverse = FALSE,
                             reply_to = NULL,
                             scheduled = FALSE) {
      # NOTE: This is a placeholder that should delegate to the underlying client implementation.
      # If your client exposes iter_messages, delegate to it:
      if (!is.null(self$client) && !is.null(self$client$iter_messages)) {
        return(self$client$iter_messages(
          entity = entity,
          limit = limit,
          offset_date = offset_date,
          offset_id = offset_id,
          max_id = max_id,
          min_id = min_id,
          add_offset = add_offset,
          search = search,
          filter = filter,
          from_user = from_user,
          wait_time = wait_time,
          ids = ids,
          reverse = reverse,
          reply_to = reply_to,
          scheduled = scheduled
        ))
      }
      stop("iter_messages is not implemented in the provided client.")
    },

    #' Get messages
    #'
    #' Same as iter_messages(), but returns a collected list/vector.
    #' If limit is missing, defaults to 1 unless both min_id and max_id are set.
    #'
    #' @param ... Passed through to iter_messages().
    #' @return A list of messages or a single message if ids is a scalar.
    get_messages = function(...) {
      args <- list(...)
      if (is.null(args$limit)) {
        if (!is.null(args$min_id) && !is.null(args$max_id)) {
          args$limit <- NULL
        } else {
          args$limit <- 1L
        }
      }
      it <- do.call(self$iter_messages, args)
      if (!is.null(args$ids) && length(args$ids) == 1L) {
        # Expect a single message
        if (!is.null(self$client) && !is.null(self$client$collect_one)) {
          return(self$client$collect_one(it))
        }
      }
      if (!is.null(self$client) && !is.null(self$client$collect)) {
        return(self$client$collect(it))
      }
      stop("Collection helpers are not available in the provided client.")
    },

    #' Send a message
    #'
    #' Sends a message to the specified user, chat or channel. Supports text, media, buttons,
    #' scheduling, and other options.
    #'
    #' @param entity Target entity.
    #' @param message Text or message-like object.
    #' @param reply_to Message id or message object to reply to.
    #' @param attributes Optional media attributes.
    #' @param parse_mode Parse mode for text (e.g., 'md', 'html'); NULL to disable.
    #' @param formatting_entities Message entities; overrides parse_mode if provided.
    #' @param link_preview logical. Whether to show link previews for URLs in text.
    #' @param file File-like object or vector of file-like objects to send.
    #' @param thumb Optional JPEG thumbnail for documents.
    #' @param force_document logical. Force sending file as document.
    #' @param clear_draft logical. Clear existing draft before sending.
    #' @param buttons Inline or reply keyboard markup.
    #' @param silent logical. Send without notification sounds.
    #' @param background logical. Send in background.
    #' @param supports_streaming logical. Mark video as streamable.
    #' @param schedule POSIXct/Date. Schedule time.
    #' @param comment_to Message id or message object to comment to (linked group).
    #' @param nosound_video logical. Treat video without audio accordingly.
    #' @param send_as Entity to send the message as (channels/chats).
    #' @param message_effect_id integer. Effect id (private chats only).
    #' @return The sent message object.
    send_message = function(entity,
                            message = "",
                            reply_to = NULL,
                            attributes = NULL,
                            parse_mode = NULL,
                            formatting_entities = NULL,
                            link_preview = TRUE,
                            file = NULL,
                            thumb = NULL,
                            force_document = FALSE,
                            clear_draft = FALSE,
                            buttons = NULL,
                            silent = NULL,
                            background = NULL,
                            supports_streaming = FALSE,
                            schedule = NULL,
                            comment_to = NULL,
                            nosound_video = NULL,
                            send_as = NULL,
                            message_effect_id = NULL) {
      if (!is.null(self$client) && !is.null(self$client$send_message)) {
        return(self$client$send_message(
          entity = entity,
          message = message,
          reply_to = reply_to,
          attributes = attributes,
          parse_mode = parse_mode,
          formatting_entities = formatting_entities,
          link_preview = link_preview,
          file = file,
          thumb = thumb,
          force_document = force_document,
          clear_draft = clear_draft,
          buttons = buttons,
          silent = silent,
          background = background,
          supports_streaming = supports_streaming,
          schedule = schedule,
          comment_to = comment_to,
          nosound_video = nosound_video,
          send_as = send_as,
          message_effect_id = message_effect_id
        ))
      }
      stop("send_message is not implemented in the provided client.")
    },

    #' Forward messages
    #'
    #' Forwards one or more messages to the specified entity.
    #'
    #' @param entity Destination entity.
    #' @param messages Message ids or message objects to forward.
    #' @param from_peer Source entity if messages are ids.
    #' @param background logical. Forward in background.
    #' @param with_my_score logical. Include game score.
    #' @param silent logical. No notification sounds.
    #' @param as_album logical. Deprecated; no effect.
    #' @param schedule POSIXct/Date. Schedule time.
    #' @param drop_author logical. Forward without quoting original author.
    #' @param drop_media_captions logical. Strip captions (requires drop_author = TRUE).
    #' @return A list of forwarded message objects (or single if input wasn't a list).
    forward_messages = function(entity,
                                messages,
                                from_peer = NULL,
                                background = NULL,
                                with_my_score = NULL,
                                silent = NULL,
                                as_album = NULL,
                                schedule = NULL,
                                drop_author = NULL,
                                drop_media_captions = NULL) {
      if (!is.null(as_album)) {
        warning("the as_album argument is deprecated and no longer has any effect")
      }
      if (!is.null(self$client) && !is.null(self$client$forward_messages)) {
        return(self$client$forward_messages(
          entity = entity,
          messages = messages,
          from_peer = from_peer,
          background = background,
          with_my_score = with_my_score,
          silent = silent,
          schedule = schedule,
          drop_author = drop_author,
          drop_media_captions = drop_media_captions
        ))
      }
      stop("forward_messages is not implemented in the provided client.")
    },

    #' Edit a message
    #'
    #' Edits a message to change its text or media.
    #'
    #' @param entity Chat entity or the message itself.
    #' @param message Message id, message object, input message id, or new text if entity is a message.
    #' @param text New text for the message (optional).
    #' @param parse_mode Parse mode for text.
    #' @param attributes Media attributes.
    #' @param formatting_entities Explicit entities (overrides parse_mode).
    #' @param link_preview logical. Whether to show link previews for URLs in text.
    #' @param file File-like object to replace existing media.
    #' @param thumb Optional JPEG thumbnail for documents.
    #' @param force_document logical. Force sending file as document.
    #' @param buttons Inline or reply keyboard markup.
    #' @param supports_streaming logical. Mark video as streamable.
    #' @param schedule POSIXct/Date. Schedule time.
    #' @return The edited message (or logical for inline bot messages depending on API).
    edit_message = function(entity,
                            message = NULL,
                            text = NULL,
                            parse_mode = NULL,
                            attributes = NULL,
                            formatting_entities = NULL,
                            link_preview = TRUE,
                            file = NULL,
                            thumb = NULL,
                            force_document = FALSE,
                            buttons = NULL,
                            supports_streaming = FALSE,
                            schedule = NULL) {
      if (!is.null(self$client) && !is.null(self$client$edit_message)) {
        return(self$client$edit_message(
          entity = entity,
          message = message,
          text = text,
          parse_mode = parse_mode,
          attributes = attributes,
          formatting_entities = formatting_entities,
          link_preview = link_preview,
          file = file,
          thumb = thumb,
          force_document = force_document,
          buttons = buttons,
          supports_streaming = supports_streaming,
          schedule = schedule
        ))
      }
      stop("edit_message is not implemented in the provided client.")
    },

    #' Delete messages
    #'
    #' Deletes the given messages, optionally for everyone (revoke).
    #'
    #' @param entity Entity the messages belong to (may be NULL for some chats).
    #' @param message_ids Integer id, vector of ids, or message objects.
    #' @param revoke logical. If TRUE, delete for everyone where applicable.
    #' @return A list of results (AffectedMessages per chunk) depending on API.
    delete_messages = function(entity,
                               message_ids,
                               revoke = TRUE) {
      if (!is.null(self$client) && !is.null(self$client$delete_messages)) {
        return(self$client$delete_messages(
          entity = entity,
          message_ids = message_ids,
          revoke = revoke
        ))
      }
      stop("delete_messages is not implemented in the provided client.")
    },

    #' Send read acknowledge
    #'
    #' Marks messages as read and optionally clears mentions/reactions.
    #'
    #' @param entity Target entity.
    #' @param message Message or vector of messages to derive max_id when max_id is NULL.
    #' @param max_id Integer max id up to which messages will be marked read.
    #' @param clear_mentions logical. Clear mention badge.
    #' @param clear_reactions logical. Clear reactions badge.
    #' @return logical indicating success depending on API.
    send_read_acknowledge = function(entity,
                                     message = NULL,
                                     max_id = NULL,
                                     clear_mentions = FALSE,
                                     clear_reactions = FALSE) {
      if (!is.null(self$client) && !is.null(self$client$send_read_acknowledge)) {
        return(self$client$send_read_acknowledge(
          entity = entity,
          message = message,
          max_id = max_id,
          clear_mentions = clear_mentions,
          clear_reactions = clear_reactions
        ))
      }
      stop("send_read_acknowledge is not implemented in the provided client.")
    },

    #' Pin a message
    #'
    #' Pins a message in a chat.
    #'
    #' @param entity Target entity.
    #' @param message Message id or message object to pin; if NULL, unpins all.
    #' @param notify logical. Notify members about the pin.
    #' @param pm_oneside logical. Pin just for you in private chats (opposite of official by default).
    #' @return API-dependent result or pinned service message.
    pin_message = function(entity,
                           message,
                           notify = FALSE,
                           pm_oneside = FALSE) {
      private$pin_internal(entity = entity, message = message, unpin = FALSE, notify = notify, pm_oneside = pm_oneside)
    },

    #' Unpin a message
    #'
    #' Unpins a message in a chat. If message is NULL, unpins all.
    #'
    #' @param entity Target entity.
    #' @param message Message id or message object to unpin; NULL to unpin all.
    #' @param notify logical. Notify members about the unpin.
    #' @return API-dependent result.
    unpin_message = function(entity,
                             message = NULL,
                             notify = FALSE) {
      private$pin_internal(entity = entity, message = message, unpin = TRUE, notify = notify, pm_oneside = FALSE)
    }
  ),
  private = list(
    client = NULL,

    #' Resolve comment target for sending comments (linked discussion)
    #' @keywords internal
    get_comment_data = function(entity, message) {
      if (!is.null(self$client) && !is.null(self$client$get_comment_data)) {
        return(self$client$get_comment_data(entity = entity, message = message))
      }
      stop("get_comment_data is not implemented in the provided client.")
    },

    #' Internal pin/unpin helper
    #' @keywords internal
    pin_internal = function(entity, message, unpin, notify = FALSE, pm_oneside = FALSE) {
      if (!is.null(self$client) && !is.null(self$client$pin_internal)) {
        return(self$client$pin_internal(
          entity = entity,
          message = message,
          unpin = unpin,
          notify = notify,
          pm_oneside = pm_oneside
        ))
      }
      if (!is.null(self$client) && !is.null(self$client$pin_message_request)) {
        # Delegate to a generic low-level request if available.
        return(self$client$pin_message_request(
          entity = entity,
          message = message,
          unpin = unpin,
          notify = notify,
          pm_oneside = pm_oneside
        ))
      }
      stop("Pin/unpin is not implemented in the provided client.")
    }
  )
)
