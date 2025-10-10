#' @title Account Methods
#' @description This file contains the `AccountMethods` class and the `TakeoutClient` class, which are used to manage account-related operations in the Telegram API.
#' @details The `AccountMethods` class provides methods for managing account-related operations, including takeout sessions.
#' The `TakeoutClient` class is used to handle the takeout session and its associated requests.
#' @export
TakeoutClient <- R6::R6Class(
  "TakeoutClient",
  private = list(

    #' @field finalize A logical indicating whether to finalize the takeout session.
    finalize = NULL,

    #' @field client An instance of the client to use for the takeout session.
    client = NULL,

    #' @field request An optional request object for the takeout session.
    request = NULL,

    #' @field success A logical indicating whether the takeout session was successful.
    success = NULL
  ),
  public = list(

    #' @description Initialize a new `TakeoutClient` object.
    #' @param finalize A logical indicating whether to finalize the takeout session.
    #' @param client An instance of the client to use for the takeout session.
    #' @param request An optional request object for the takeout session.
    #' @return A new `TakeoutClient` object.
    initialize = function(finalize, client, request) {
      private$finalize <- finalize
      private$client <- client
      private$request <- request
      private$success <- NULL
    },

    #' @description Get the success status of the takeout session.
    #' @return A logical indicating whether the takeout session was successful.
    get_success = function() {
      private$success
    },

    #' @description Set the success status of the takeout session.
    #' @param value A logical indicating whether the takeout session was successful.
    #' @return None.
    set_success = function(value) {
      private$success <- value
    },

    #' @description Enter the takeout session context.
    #' @return The current instance of the `TakeoutClient`.
    aenter = function() {
      client <- private$client
      if (is.null(client$session$takeout_id)) {
        client$session$takeout_id <- client$invoke(private$request)$id
      } else if (!is.null(private$request)) {
        stop("Can't send a takeout request while another takeout for the current session is still not finished.")
      }
      return(self)
    },

    #' @description Exit the takeout session context.
    #' @param exc_type The type of exception raised, if any.
    #' @param exc_value The value of the exception raised, if any.
    #' @param traceback The traceback of the exception raised, if any.
    #' @return None.
    aexit = function(exc_type, exc_value, traceback) {
      if (is.null(private$success) && private$finalize) {
        private$success <- is.null(exc_type)
      }

      if (!is.null(private$success)) {
        result <- private$client$invoke(FinishTakeoutSessionRequest(private$success))
        if (!result) {
          stop("Failed to finish the takeout.")
        }
        private$client$session$takeout_id <- NULL
      }
    },

    #' @description Make a request to the Telegram API using the takeout session.
    #' @param request The request object to send.
    #' @param ordered A logical indicating whether the request should be ordered.
    #' @return The result of the request.
    call = function(request, ordered = FALSE) {
      takeout_id <- private$client$session$takeout_id
      if (is.null(takeout_id)) {
        stop("Takeout mode has not been initialized (are you calling outside of 'with'?)")
      }

      single <- !utils$is_list_like(request)
      requests <- if (single) list(request) else request
      wrapped <- lapply(requests, function(r) {
        if (!inherits(r, "TLRequest")) {
          stop("_NOT_A_REQUEST")
        }
        r$resolve(self, utils)
        InvokeWithTakeoutRequest(takeout_id, r)
      })

      private$client$invoke(if (single) wrapped[[1]] else wrapped, ordered = ordered)
    },

    #' @description Get the result of the request.
    #' @param name The name of the attribute to get.
    #' @return The result of the request.
    get_attribute = function(name) {
      if (startsWith(name, "__") && !(name %in% private$PROXY_INTERFACE)) {
        stop("AttributeError")
      }
      super$get_attribute(name)
    },

    #' @description Get the attribute of the request.
    #' @param name The name of the attribute to get.
    #' @return The value of the attribute.
    get_attr = function(name) {
      value <- private$client$get_attr(name)
      if (is.function(value)) {
        function(...) value(self, ...)
      } else {
        value
      }
    },

    #' @description Set the attribute of the request.
    #' @param name The name of the attribute to set.
    #' @param value The value to set for the attribute.
    #' @return None.
    set_attr = function(name, value) {
      if (startsWith(name, paste0("_", class(self), "__"))) {
        super$set_attr(name, value)
      } else {
        private$client$set_attr(name, value)
      }
    }
  )
)

#' @title AccountMethods class
#' @description Provides methods for managing account-related operations, including takeout sessions.
#' @details The `AccountMethods` class is used to manage account-related operations in the Telegram API.
#' It provides methods for creating and managing takeout sessions, as well as handling the success status of those sessions.
#' @export
AccountMethods <- R6::R6Class(
  "AccountMethods",
  public = list(

    #' @description Initialize a new `AccountMethods` object.
    #' @param finalize A logical indicating whether to finalize the takeout session.
    #' @param contacts A logical indicating whether to include contacts in the takeout session.
    #' @param users A logical indicating whether to include users in the takeout session.
    #' @param chats A logical indicating whether to include chats in the takeout session.
    #' @param megagroups A logical indicating whether to include megagroups in the takeout session.
    #' @param channels A logical indicating whether to include channels in the takeout session.
    #' @param files A logical indicating whether to include files in the takeout session.
    #' @param max_file_size The maximum file size to include in the takeout session.
    #' @return A new `AccountMethods` object.
    takeout = function(finalize = TRUE, contacts = NULL, users = NULL, chats = NULL,
                       megagroups = NULL, channels = NULL, files = NULL, max_file_size = NULL) {
      request_kwargs <- list(
        contacts = contacts,
        message_users = users,
        message_chats = chats,
        message_megagroups = megagroups,
        message_channels = channels,
        files = files,
        file_max_size = max_file_size
      )
      arg_specified <- sapply(request_kwargs, function(arg) !is.null(arg))

      if (is.null(self$session$takeout_id) || any(arg_specified)) {
        request <- InitTakeoutSessionRequest$new(request_kwargs)
      } else {
        request <- NULL
      }

      TakeoutClient$new(finalize, self, request)
    },

    #' @description Finalize the takeout session.
    #' @param success A logical indicating whether the takeout session was successful.
    #' @return A logical indicating whether the takeout session was finalized successfully.
    end_takeout = function(success) {
      tryCatch({
        takeout <- TakeoutClient$new(TRUE, self, NULL)
        takeout$set_success(success)
      }, error = function(e) {
        return(FALSE)
      })
      return(TRUE)
    }
  )
)
