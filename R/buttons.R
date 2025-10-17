#' @title ButtonMethods
#' @description
#' A class that provides methods for building reply markups for buttons.
#' @details
#' This class contains methods to create reply markups for buttons in Telegram.
#' It can handle both inline and normal buttons, and it can convert a variety of button formats into the appropriate markup.
#' @export
ButtonMethods <- R6::R6Class(
  "ButtonMethods",
  public = list(

    #' @description
    #' Builds a ReplyInlineMarkup or ReplyKeyboardMarkup for the given buttons.
    #'
    #' Does nothing if either no buttons are provided or the provided
    #' argument is already a reply markup.
    #'
    #' This method is not asynchronous.
    #'
    #' @param buttons The button, list of buttons, array of buttons or markup
    #' to convert into a markup.
    #' @param inline_only Whether the buttons must be inline buttons only or not.
    #' @return A ReplyInlineMarkup or ReplyKeyboardMarkup object.
    build_reply_markup = function(buttons = NULL, inline_only = FALSE) {
      if (is.null(buttons)) {
        return(NULL)
      }

      if (!is.null(attr(buttons, "SUBCLASS_OF_ID")) && attr(buttons, "SUBCLASS_OF_ID") == 0xe2e10ef2) {
        return(buttons) # crc32(b'ReplyMarkup')
      }

      # Normalize input into a list of rows, each row is a list of buttons.
      if (!is.list(buttons)) {
        buttons <- list(as.list(buttons))
      } else if (length(buttons) == 0 || !is.list(buttons[[1]])) {
        buttons <- list(as.list(buttons))
      }

      is_inline <- FALSE
      is_normal <- FALSE
      resize <- NULL
      single_use <- NULL
      selective <- NULL

      rows <- list()
      for (row in buttons) {
        current <- list()
        for (button in row) {
          if (inherits(button, "CustomButton")) {
            if (!is.null(button$resize)) resize <- button$resize
            if (!is.null(button$single_use)) single_use <- button$single_use
            if (!is.null(button$selective)) selective <- button$selective
            button <- button$button
          } else if (inherits(button, "MessageButton")) {
            button <- button$button
          }

          # Coerce atomic inputs (e.g., "OK") to a KeyboardButton
          if (is.atomic(button) && !is.list(button)) {
            btn_text <- as.character(button)[1]
            button <- list("_type" = "KeyboardButton", "text" = btn_text, "is_inline" = FALSE)
            attr(button, "SUBCLASS_OF_ID") <- 0xbad74a3 # crc32(b'KeyboardButton')
          }

          # Safely determine inline flag
          inline <- button[["is_inline"]]
          if (is.null(inline)) {
            inline <- if (!is.null(attr(button, "SUBCLASS_OF_ID")) && attr(button, "SUBCLASS_OF_ID") == 0xbad74a3) FALSE else FALSE
          }

          is_inline <- is_inline || isTRUE(inline)
          is_normal <- is_normal || !isTRUE(inline)

          if (!is.null(attr(button, "SUBCLASS_OF_ID")) && attr(button, "SUBCLASS_OF_ID") == 0xbad74a3) {
            # 0xbad74a3 == crc32(b'KeyboardButton')
            current <- append(current, list(button))
          }
        }

        if (length(current) > 0) {
          rows <- append(rows, list(list("_type" = "KeyboardButtonRow", "buttons" = current)))
        }
      }

      if (inline_only && is_normal) {
        stop("You cannot use non-inline buttons here")
      } else if (is_inline == is_normal && is_normal) {
        stop("You cannot mix inline with normal buttons")
      } else if (is_inline) {
        return(list("_type" = "ReplyInlineMarkup", "rows" = rows))
      }
      return(list(
        "_type" = "ReplyKeyboardMarkup",
        "rows" = rows,
        "resize" = resize,
        "single_use" = single_use,
        "selective" = selective
      ))
    }
  )
)
