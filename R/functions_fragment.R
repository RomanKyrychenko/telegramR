#' GetCollectibleInfoRequest R6 class
#'
#' Request to retrieve collectible information (fragment.CollectibleInfo).
#'
#' @field CONSTRUCTOR_ID Integer constructor id (little-endian bytes: ba 85 1e be)
#' @field SUBCLASS_OF_ID Integer subclass id
#' @field collectible TLObject-like R6 object (must provide to_list/to_bytes or bytes)
#' @return R6 object of class GetCollectibleInfoRequest
#' @export
GetCollectibleInfoRequest <- R6::R6Class(
  "GetCollectibleInfoRequest",
  inherit = TLRequest,
  public = list(
    CONSTRUCTOR_ID = 0xbe1e85ba,
    SUBCLASS_OF_ID = 0xd4ea5790,
    collectible = NULL,

    initialize = function(collectible) {
      self$collectible <- collectible
    },

    # convert to a list representation (analogous to to_dict)
    to_list = function() {
      collectible_value <- if (inherits(self$collectible, "TLObject")) {
        if (!is.null(self$collectible$to_list)) {
          self$collectible$to_list()
        } else if (!is.null(self$collectible$toList)) {
          self$collectible$toList()
        } else {
          stop("collectible does not provide a to_list / toList method")
        }
      } else {
        self$collectible
      }

      list(
        `_` = "GetCollectibleInfoRequest",
        collectible = collectible_value
      )
    },

    # produce raw bytes for the request (constructor id + collectible bytes)
    to_bytes = function() {
      constructor_raw <- as.raw(c(0xba, 0x85, 0x1e, 0xbe)) # little-endian bytes for 0xbe1e85ba

      collectible_bytes <- if (inherits(self$collectible, "TLObject")) {
        if (!is.null(self$collectible$to_bytes)) {
          self$collectible$to_bytes()
        } else if (!is.null(self$collectible$bytes)) {
          self$collectible$bytes()
        } else {
          stop("collectible does not provide a to_bytes / bytes method")
        }
      } else if (is.raw(self$collectible)) {
        self$collectible
      } else {
        stop("collectible must be a TLObject-like R6 or raw vector")
      }

      c(constructor_raw, collectible_bytes)
    }
  ),

  active = list(
    # factory to create instance from a reader
    from_reader = function(value) {
      if (missing(value)) {
        function(reader) {
          collectible_obj <- reader$tgread_object()
          GetCollectibleInfoRequest$new(collectible = collectible_obj)
        }
      } else {
        stop("from_reader is read-only")
      }
    }
  )
)
