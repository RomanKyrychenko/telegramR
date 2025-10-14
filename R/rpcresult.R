#' RpcResult Class
#'
#' @description
#' Represents the result of a Remote Procedure Call (RPC) in the Telegram API.
#'
#' @details
#' The `RpcResult` class encapsulates the response of an RPC call, including the request message ID, the body of the response, and any error that occurred.
#'
#' @field req_msg_id \code{numeric} The ID of the request message.
#' @field body \code{ANY} The body of the RPC result.
#' @field error \code{ANY} The error object, if any.
#'
#' @export
RpcResult <- R6::R6Class(
  "RpcResult",
  inherit = TLObject,
  public = list(
    req_msg_id = NULL,
    body = NULL,
    error = NULL,

    #' @description
    #' Initializes the `RpcResult` object with the given request message ID, body, and error.
    #' @param req_msg_id \code{numeric} The ID of the request message.
    #' @param body \code{ANY} The body of the RPC result.
    #' @param error \code{ANY} The error object, if any.
    #' @return A new `RpcResult` object.
    initialize = function(req_msg_id, body, error) {
      self$req_msg_id <- req_msg_id
      self$body <- body
      self$error <- error
    },

    #' @description
    #' Reads and parses an `RpcResult` object from a binary reader.
    #' @param reader A `BinaryReader` object to read the binary data.
    #' @return An `RpcResult` object parsed from the binary data.
    from_reader = function(reader) {
      msg_id <- reader$read_long()
      inner_code <- reader$read_int(signed = FALSE)
      if (inner_code == RpcError$CONSTRUCTOR_ID) {
        return(RpcResult$new(req_msg_id = msg_id, body = NULL, error = RpcError$from_reader(reader)))
      }
      if (inner_code == GzipPacked$CONSTRUCTOR_ID) {
        return(RpcResult$new(req_msg_id = msg_id, body = GzipPacked$from_reader(reader)$data, error = NULL))
      }
      reader$seek(-4)
      return(RpcResult$new(req_msg_id = msg_id, body = reader$read(), error = NULL))
    },

    #' @description
    #' Converts the `RpcResult` object to a dictionary representation.
    #' @return A named list representing the `RpcResult` object.
    to_dict = function() {
      return(
        list(
          "_" = "RpcResult",
          "req_msg_id" = self$req_msg_id,
          "body" = self$body,
          "error" = self$error
        )
      )
    }
  )
)
