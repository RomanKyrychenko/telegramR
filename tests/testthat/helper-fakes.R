make_fake_iter <- function(items) {
  i <- 0L
  list(
    .next = function() {
      i <<- i + 1L
      if (i > length(items)) return(NULL)
      items[[i]]
    }
  )
}

make_fake_client <- function(messages, channel, full_chat = NULL, replies_by_id = NULL, participants = NULL) {
  if (is.null(full_chat)) {
    full_chat <- list(about = "About text", participants_count = 123, linked_chat_id = 456)
  }
  client <- list(
    get_entity = function(username) {
      if (is.numeric(username)) return(channel)
      if (inherits(username, "PeerChannel")) return(channel)
      channel
    },
    get_input_entity = function(ent) ent,
    iter_messages = function(entity, limit = Inf, reply_to = NULL, ...) {
      items <- messages
      if (!is.null(reply_to) && !is.null(replies_by_id)) {
        items <- replies_by_id[[as.character(reply_to)]] %||% list()
      }
      if (is.finite(limit)) {
        items <- items[seq_len(min(length(items), as.integer(limit)))]
      }
      make_fake_iter(items)
    },
    iter_participants = function(entity, limit = Inf, search = "", filter = NULL, aggressive = FALSE) {
      items <- participants %||% list()
      if (is.finite(limit)) {
        items <- items[seq_len(min(length(items), as.integer(limit)))]
      }
      make_fake_iter(items)
    },
    collect = function(it) {
      out <- list()
      repeat {
        x <- it$.next()
        if (is.null(x)) break
        out[[length(out) + 1L]] <- x
      }
      out
    },
    invoke = function(req) {
      list(full_chat = full_chat, chats = list(), users = list())
    }
  )
  class(client) <- "FakeClient"
  client
}
