#' @title RequestState
#' @description Holds information relevant to sent messages, including the message ID assigned to the request,
#' the container ID to which it belongs, the request itself, the request as raw bytes, and a future result.
#' @export
RequestState <- R6::R6Class("RequestState",
  public = list(
    container_id = NULL,
    msg_id = NULL,
    request = NULL,
    data = NULL,
    future = NULL,
    after = NULL,

    #' @description Creates a new RequestState instance.
    #' @param request The request object.
    #' @param after Optional additional parameter. Defaults to NULL.
    initialize = function(request, after = NULL) {
      self$container_id <- NULL
      self$msg_id <- NULL
      self$request <- request
      if (is.character(request)) {
        self$data <- charToRaw(request)
      } else if (is.raw(request)) {
        self$data <- request
      } else {
        # Serialize non-character/non-raw objects to a raw vector.
        self$data <- serialize(request, NULL)
      }
      # Create a placeholder future that can be resolved later.
      self$future <- future::future({ NULL })
      self$after <- after
    }
  )
)
