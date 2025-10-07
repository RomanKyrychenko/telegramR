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

    #' @field account An instance of AccountMethods for account-related operations
    account = NULL,

    #' @field auth An instance of AuthMethods for authentication-related operations
    auth = NULL,

    #' @field download An instance of DownloadMethods for downloading media
    download = NULL,

    #' @field dialog An instance of DialogMethods for dialog-related operations
    dialog = NULL,

    #' @field chat An instance of ChatMethods for chat-related operations
    chat = NULL,

    #' @field bot An instance of BotMethods for bot-related operations
    bot = NULL,

    #' @field message An instance of MessageMethods for message-related operations
    message = NULL,

    #' @field upload An instance of UploadMethods for uploading media
    upload = NULL,

    #' @field button An instance of ButtonMethods for button-related operations
    button = NULL,

    #' @field update An instance of UpdateMethods for update-related operations
    update = NULL,

    #' @field parser An instance of MessageParseMethods for parsing messages
    parser = NULL,

    #' @field user An instance of UserMethods for user-related operations
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
