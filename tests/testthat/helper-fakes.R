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

make_fake_client <- function(messages, channel, full_chat = NULL) {
  if (is.null(full_chat)) {
    full_chat <- list(about = "About text", participants_count = 123, linked_chat_id = 456)
  }
  client <- list(
    get_entity = function(username) channel,
    get_input_entity = function(ent) ent,
    iter_messages = function(entity, limit = Inf, ...) {
      if (is.finite(limit)) {
        items <- messages[seq_len(min(length(messages), as.integer(limit)))]
      } else {
        items <- messages
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
