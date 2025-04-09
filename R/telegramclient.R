# Import methods from . (equivalent to importing in Python)
# In R6, we'll integrate these methods directly into the class

#' TelegramClient Class
#'
#' An R6 class that combines functionality from multiple method classes to interact with Telegram API
#'
#' @export
TelegramClient <- R6::R6Class(
  "TelegramClient",
  inherit = TelegramBaseClient,
  public = list(
    account = NULL,
    auth = NULL,
    download = NULL,
    dialog = NULL,
    chat = NULL,
    bot = NULL,
    message = NULL,
    upload = NULL,
    button = NULL,
    update = NULL,
    parser = NULL,
    user = NULL,

    #' @description Create a new TelegramClient instance
    #' @param ... Arguments passed to the parent class
    initialize = function(...) {
      super$initialize(...)

      # Initialize each component (mixin-style composition)
      self$account <- AccountMethods$new(client = self)
      self$auth <- AuthMethods$new(client = self)
      self$download <- DownloadMethods$new(client = self)
      self$dialog <- DialogMethods$new(client = self)
      self$chat <- ChatMethods$new(client = self)
      self$bot <- BotMethods$new(client = self)
      self$message <- MessageMethods$new(client = self)
      self$upload <- UploadMethods$new(client = self)
      self$button <- ButtonMethods$new(client = self)
      self$update <- UpdateMethods$new(client = self)
      self$parser <- MessageParseMethods$new(client = self)
      self$user <- UserMethods$new(client = self)
    }

    # Optionally, wrapper methods can be added to delegate calls to these subcomponents
  )
)

# Note: In R6, multiple inheritance isn't directly supported like in Python.
# The methods from the parent classes would need to be implemented directly
# or through a mixin pattern or composition approach.