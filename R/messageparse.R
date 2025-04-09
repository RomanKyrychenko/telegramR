#' MessageParseMethods Class
#' @description
#' A class for parsing messages in Telegram API.
#' @export
MessageParseMethods <- R6::R6Class(
  "MessageParseMethods",
  public = list(

    #' @field parse_mode The default parse mode for parsing messages.
    parse_mode = NULL,

    #' Initialize the MessageParseMethods class with a default parse mode.
    #' @param parse_mode The default parse mode (e.g., "markdown", "html").
    #' @return A new MessageParseMethods object.
    initialize = function(parse_mode = NULL) {
      self$parse_mode <- parse_mode
    },

    #' Set the default parse mode.
    #' @param mode The parse mode to set (e.g., "markdown", "html").
    #' @return None.
    set_parse_mode = function(mode) {
      self$parse_mode <- self$sanitize_parse_mode(mode)
    },

    #' Get the current parse mode.
    #' @return The current parse mode.
    get_parse_mode = function() {
      return(self$parse_mode)
    },

    #' Sanitize the parse mode input.
    #' @param mode The parse mode to sanitize.
    #' @return Sanitized parse mode.
    sanitize_parse_mode = function(mode) {
      if (is.null(mode)) {
        return(NULL)
      }
      if (mode %in% c("markdown", "md", "html", "htm")) {
        return(mode)
      }
      stop("Invalid parse mode")
    },

    #' Parse a message text based on the parse mode.
    #' @param message The message text to parse.
    #' @param parse_mode The parse mode to use (optional).
    #' @return A list with parsed message and entities.
    parse_message_text = function(message, parse_mode = NULL) {
      if (is.null(parse_mode)) {
        parse_mode <- self$parse_mode
      } else {
        parse_mode <- self$sanitize_parse_mode(parse_mode)
      }

      if (is.null(parse_mode)) {
        return(list(message = message, entities = list()))
      }

      # Example parsing logic (to be replaced with actual implementation)
      parsed_message <- message
      entities <- list() # Placeholder for parsed entities

      if (nchar(parsed_message) == 0 && length(entities) == 0) {
        stop("Failed to parse message")
      }

      return(list(message = parsed_message, entities = entities))
    },

    #' Replace an entity with a mention of a user.
    #' @param entities The list of entities.
    #' @param i The index of the entity to replace.
    #' @param user The user to mention.
    #' @return TRUE if replaced successfully, FALSE otherwise.
    replace_with_mention = function(entities, i, user) {
      tryCatch({
        entities[[i]] <- list(
          type = "mention",
          offset = entities[[i]]$offset,
          length = entities[[i]]$length,
          user = user
        )
        return(TRUE)
      }, error = function(e) {
        return(FALSE)
      })
    },

    #' Extract the response message based on the request and result.
    #' @param request The original request.
    #' @param result The result from the API.
    #' @param input_chat The input chat entity.
    #' @return The response message or NULL.
    get_response_message = function(request, result, input_chat) {
      updates <- list()
      entities <- list()

      if (inherits(result, "UpdateShort")) {
        updates <- list(result$update)
      } else if (inherits(result, c("Updates", "UpdatesCombined"))) {
        updates <- result$updates
        entities <- lapply(c(result$users, result$chats), function(x) x)
      } else {
        return(NULL)
      }

      random_to_id <- list()
      id_to_message <- list()

      for (update in updates) {
        if (inherits(update, "UpdateMessageID")) {
          random_to_id[[as.character(update$random_id)]] <- update$id
        } else if (inherits(update, c("UpdateNewChannelMessage", "UpdateNewMessage"))) {
          id_to_message[[as.character(update$message$id)]] <- update$message
        }
      }

      if (is.null(request)) {
        return(id_to_message)
      }

      random_id <- if (is.numeric(request)) request else request$random_id
      if (is.null(random_id)) {
        warning("No random_id in request to map to, returning NULL")
        return(NULL)
      }

      if (!is.list(random_id)) {
        return(id_to_message[[as.character(random_to_id[[as.character(random_id)]])]])
      }

      return(lapply(random_id, function(rnd) id_to_message[[as.character(random_to_id[[as.character(rnd)]])]]))
    }
  )
)
