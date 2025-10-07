#' @title BotMethods Class
#' @description
#' A class representing methods for interacting with Telegram bots.
#'
#' @details
#' This class provides methods to interact with Telegram bots, including making inline queries.
#' It is designed to be used with the Telegram API and requires a valid Telegram client instance.
#'
#' @examples
#' # Assuming `client` is a valid Telegram client instance
#' bot_methods <- BotMethods$new(client)
#'
#' @export
BotMethods <- R6::R6Class(
  "BotMethods",
  public = list(

    #' @field client The Telegram client instance.
    client = NULL,

    #' Initialize the BotMethods class with a Telegram client instance.
    #' @param client The Telegram client instance.
    initialize = function(client) {
      self$client <- client
    },

    #' Makes an inline query to the specified bot (e.g., "@vote New Poll").
    #'
    #' @param bot The bot entity to which the inline query should be made.
    #' @param query The query string to send to the bot.
    #' @param entity (Optional) The entity where the inline query is being made from.
    #' @param offset (Optional) The string offset to use for the bot.
    #' @param geo_point (Optional) Geo point location information for localized results.
    #'
    #' @return A list of inline results.
    inline_query = function(bot, query, entity = NULL, offset = NULL, geo_point = NULL) {

      bot <- self$get_input_entity(bot)

      if (!is.null(entity)) {
        peer <- self$get_input_entity(entity)
      } else {
        peer <- list("_type" = "InputPeerEmpty")
      }

      result <- self$invoke_function(
        "messages.GetInlineBotResultsRequest",
        list(
          bot = bot,
          peer = peer,
          query = query,
          offset = ifelse(is.null(offset), "", offset),
          geo_point = geo_point
        )
      )

      return(self$custom_inline_results(result, if (!is.null(entity)) peer else NULL))
    },

    #' Placeholder for getting input entity.
    #' @param entity The entity to process.
    #' @return Processed entity.
    get_input_entity = function(entity) {
      stop("get_input_entity function must be implemented.")
    },

    #' Placeholder for invoking Telegram API functions.
    #' @param function_name The name of the function to invoke.
    #' @param params The parameters for the function.
    #' @return API response.
    invoke_function = function(function_name, params) {
      stop("invoke_function function must be implemented.")
    },

    #' Placeholder for processing inline results.
    #' @param result The raw result from the API.
    #' @param peer The peer entity.
    #' @return Processed inline results.
    custom_inline_results = function(result, peer) {
      stop("custom_inline_results function must be implemented.")
    }
  )
)
