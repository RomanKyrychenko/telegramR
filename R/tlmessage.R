#' @title TLMessage Class
#' @description
#' A class representing a Telegram Layer (TL) message.
#' @details
#' This class extends the `TLObject` class and provides functionality to store and manipulate TL message data.
#' @examples
#' msg <- TLMessage(msg_id = 12345, seq_no = 1, obj = "Hello")
#' print(msg$to_dict())
#' @export
TLMessage <- R6::R6Class(
  "TLMessage",
  inherit = TLObject,
  public = list(

    msg_id = NULL,
    seq_no = NULL,
    obj = NULL,

    #' @description
    #' Initialize a new `TLMessage` object.
    #' @param msg_id A numeric value for the message ID.
    #' @param seq_no A numeric value for the sequence number.
    #' @param obj An object representing the content of the message.
    #' @return A new `TLMessage` object.
    initialize = function(msg_id, seq_no, obj) {
      self$msg_id <- msg_id
      self$seq_no <- seq_no
      self$obj <- obj
    },

    #' @description
    #' Convert the `TLMessage` object to a dictionary representation.
    #' @return A list containing the fields of the `TLMessage` object in dictionary format.
    #' @examples
    #' msg <- TLMessage(msg_id = 12345, seq_no = 1, obj = "Hello")
    #' msg$to_dict()
    to_dict = function() {
      return(
        list(
          '_' = 'TLMessage',
          'msg_id' = self$msg_id,
          'seq_no' = self$seq_no,
          'obj' = self$obj
        )
      )
    }
  )
)
