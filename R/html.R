#' HTML <-> Telegram entities parser / unparser (R6)
#'
#' This file provides a simple HTML to Telegram message-entity parser and the
#' reverse operation. It is a pragmatic translation of a Python implementation
#' using an R6 parser that uses xml2 to walk the DOM.
#'
#' The entity structures returned are simple lists with fields:
#'   offset, length, type, and optional url, language, user_id, document_id.
#'
#' Note: This implementation aims for clarity and reasonable fidelity rather
#' than byte-for-byte exact behavior of the original Python helpers.
#'
#' @examples
#' html <- "<b>bold</b> and <a href='mailto:me@example.com'>me</a>"
#' parsed <- parse_html_to_telegram(html)
#' unparse_telegram_to_html(parsed$text, parsed$entities)
NULL

library(R6)
library(xml2)

escape_html <- function(x) {
  x <- gsub("&", "&amp;", x, fixed = TRUE)
  x <- gsub("<", "&lt;", x, fixed = TRUE)
  x <- gsub(">", "&gt;", x, fixed = TRUE)
  x <- gsub("\"", "&quot;", x, fixed = TRUE)
  x
}

make_entity <- function(type, offset, length = 0, ...) {
  e <- list(type = type, offset = as.integer(offset), length = as.integer(length))
  extra <- list(...)
  if (length(extra)) e <- c(e, extra)
  e
}

#' HTMLToTelegramParser R6 class
#'
#' Walks an HTML fragment and builds a plain text string and a list of
#' telegram-style message entities.
#'
#' @field text accumulated plain text
#' @field entities list of entity lists
HTMLToTelegramParser <- R6Class(
  "HTMLToTelegramParser",
  public = list(
    text = "",
    entities = NULL,
    building_entities = NULL,
    open_tags = NULL,
    open_tags_meta = NULL,

    initialize = function() {
      self$text <- ""
      self$entities <- list()
      self$building_entities <- list()
      self$open_tags <- list()      # stack (first element is top)
      self$open_tags_meta <- list()
    },

    push_tag = function(tag, meta = NULL) {
      self$open_tags <- c(list(tag), self$open_tags)
      self$open_tags_meta <- c(list(meta), self$open_tags_meta)
    },

    pop_tag = function() {
      if (length(self$open_tags) == 0L) return(NULL)
      tag <- self$open_tags[[1]]
      self$open_tags <- self$open_tags[-1]
      meta <- self$open_tags_meta[[1]]
      self$open_tags_meta <- self$open_tags_meta[-1]
      list(tag = tag, meta = meta)
    },

    current_tag = function() {
      if (length(self$open_tags) == 0L) return(NULL)
      self$open_tags[[1]]
    },

    current_meta = function() {
      if (length(self$open_tags_meta) == 0L) return(NULL)
      self$open_tags_meta[[1]]
    },

    start_element = function(tag, attrs) {
      meta_value <- NULL
      self$push_tag(tag, meta_value)

      entity_type <- NULL
      args <- list()

      if (tag %in% c("strong", "b")) {
        entity_type <- "bold"
      } else if (tag %in% c("em", "i")) {
        entity_type <- "italic"
      } else if (tag == "u") {
        entity_type <- "underline"
      } else if (tag %in% c("del", "s")) {
        entity_type <- "strike"
      } else if (tag == "blockquote") {
        entity_type <- "blockquote"
      } else if (tag == "code") {
        # If there is an open pre building entity, interpret as language hint
        if (!is.null(self$building_entities$pre)) {
          # class like "language-r"
          cls <- attrs[["class"]]
          if (!is.null(cls) && startsWith(cls, "language-")) {
            self$building_entities$pre$language <- sub("^language-", "", cls)
          }
          # 'code' inside pre is not a separate entity in Telegram
          entity_type <- NULL
        } else {
          entity_type <- "code"
        }
      } else if (tag == "pre") {
        entity_type <- "pre"
        args$language <- ""
      } else if (tag == "a") {
        href <- attrs[["href"]]
        if (is.null(href)) {
          return()
        }
        if (startsWith(href, "mailto:")) {
          href <- sub("^mailto:", "", href)
          entity_type <- "email"
          args$url <- href
        } else {
          # if the visible text equals the href we'll return MessageEntityUrl
          # but we don't know the text yet; store href in open meta for handle_data
          meta_value <- href
          # update top meta
          self$open_tags_meta[[1]] <- meta_value
          # entity will be created when starting tag
          entity_type <- "text_url_candidate"
          args$url <- href
        }
      } else if (tag == "tg-emoji") {
        emoji_id <- attrs[["emoji-id"]]
        if (!is.null(emoji_id) && nzchar(emoji_id) && grepl("^[0-9]+$", emoji_id)) {
          entity_type <- "custom_emoji"
          args$document_id <- as.integer(emoji_id)
        }
      }

      if (!is.null(entity_type) && !(entity_type %in% names(self$building_entities))) {
        # Entities keyed by tag name to mimic original behavior
        self$building_entities[[tag]] <- make_entity(entity_type, nchar(self$text, type = "chars"), 0, !!!args)
      }
    },

    handle_text = function(text) {
      top_tag <- self$current_tag()
      meta <- self$current_meta()
      if (!is.null(top_tag) && top_tag == "a" && !is.null(meta) && nzchar(meta)) {
        # when anchor is present, replace displayed text with meta (href) only for
        # the entity length calculation logic of the original parser.
        text_to_add <- meta
      } else {
        text_to_add <- text
      }

      # update lengths for building entities
      if (length(self$building_entities) > 0) {
        for (k in names(self$building_entities)) {
          self$building_entities[[k]]$length <- self$building_entities[[k]]$length + nchar(text_to_add, type = "chars")
        }
      }

      self$text <- paste0(self$text, text_to_add)
    },

    end_element = function(tag) {
      popped <- self$pop_tag()
      # finalize entity if present
      ent <- NULL
      if (!is.null(self$building_entities[[tag]])) {
        ent <- self$building_entities[[tag]]
        self$building_entities[[tag]] <- NULL
        # Normalize 'text_url_candidate' to 'url' or 'text_url'
        if (identical(ent$type, "text_url_candidate")) {
          # Heuristic: if the entity text equals the href, it's a URL entity
          entity_text <- substr(self$text, ent$offset + 1, ent$offset + ent$length)
          if (!is.null(ent$url) && identical(entity_text, ent$url)) {
            ent$type <- "url"
          } else {
            ent$type <- "text_url"
          }
        }
        self$entities[[length(self$entities) + 1]] <- ent
      }
    },

    parse_node = function(node) {
      ttype <- xml_type(node)
      if (ttype == "text") {
        self$handle_text(xml_text(node))
        return(invisible(NULL))
      }
      if (ttype == "element") {
        tag <- xml_name(node)
        attrs <- as.list(xml_attrs(node))
        self$start_element(tag, attrs)
        # walk children (contents includes text nodes)
        children <- xml_contents(node)
        if (length(children) > 0) {
          for (child in children) self$parse_node(child)
        }
        self$end_element(tag)
      }
      invisible(NULL)
    },

    feed = function(html_fragment) {
      # xml2::read_html expects a full document; wrap fragment in a div
      wrapped <- paste0("<div>", html_fragment, "</div>")
      doc <- read_html(wrapped)
      body_node <- xml_find_first(doc, "//div")
      contents <- xml_contents(body_node)
      for (n in contents) self$parse_node(n)
      invisible(NULL)
    }
  )
)

#' Parse HTML into plain text and telegram-style entities
#'
#' @param html character(1) HTML fragment
#' @return named list with elements \code{text} and \code{entities}
#' @export
parse_html_to_telegram <- function(html) {
  if (is.null(html) || !nzchar(html)) {
    return(list(text = html, entities = list()))
  }
  parser <- HTMLToTelegramParser$new()
  parser$feed(html)
  # sort entities by offset
  ents <- parser$entities
  if (length(ents) > 0) {
    order_idx <- order(vapply(ents, function(e) e$offset, integer(1)))
    ents <- ents[order_idx]
  }
  list(text = parser$text, entities = ents)
}

#' Unparse plain text and entities back to HTML
#'
#' @param text character(1) plain text
#' @param entities list of entity lists as produced by \code{parse_html_to_telegram}
#' @return character(1) HTML string
#' @export
unparse_telegram_to_html <- function(text, entities) {
  if (is.null(text) || !nzchar(text)) return(text)
  if (is.null(entities) || length(entities) == 0) return(escape_html(text))

  # Build insertions: list of (pos, priority, str)
  insertions <- list()
  push_ins <- function(pos, prio, what) {
    insertions[[length(insertions) + 1]] <<- list(pos = as.integer(pos), prio = as.integer(prio), what = what)
  }

  for (i in seq_along(entities)) {
    e <- entities[[i]]
    s <- e$offset
    epos <- e$offset + e$length
    typ <- e$type
    start_tag <- ""
    end_tag <- ""
    if (typ == "bold") {
      start_tag <- "<strong>"; end_tag <- "</strong>"
    } else if (typ == "italic") {
      start_tag <- "<em>"; end_tag <- "</em>"
    } else if (typ == "underline") {
      start_tag <- "<u>"; end_tag <- "</u>"
    } else if (typ == "strike") {
      start_tag <- "<del>"; end_tag <- "</del>"
    } else if (typ == "blockquote") {
      start_tag <- "<blockquote>"; end_tag <- "</blockquote>"
    } else if (typ == "code") {
      start_tag <- "<code>"; end_tag <- "</code>"
    } else if (typ == "pre") {
      lang <- if (!is.null(e$language) && nzchar(e$language)) e$language else ""
      start_tag <- paste0("<pre>\n    <code class='language-", escape_html(lang), "'>\n")
      end_tag <- "\n    </code>\n</pre>"
    } else if (typ == "email") {
      href <- escape_html(e$url %||% "")
      start_tag <- paste0('<a href="mailto:', href, '">'); end_tag <- '</a>'
    } else if (typ == "url") {
      href <- escape_html(substr(text, s + 1, s + e$length))
      start_tag <- paste0('<a href="', href, '">'); end_tag <- '</a>'
    } else if (typ == "text_url") {
      href <- escape_html(e$url %||% "")
      start_tag <- paste0('<a href="', href, '">'); end_tag <- '</a>'
    } else if (typ == "custom_emoji") {
      start_tag <- paste0('<tg-emoji emoji-id="', as.integer(e$document_id), '">')
      end_tag <- "</tg-emoji>"
    } else {
      # unknown type, skip
      next
    }
    push_ins(s, i, start_tag)
    push_ins(epos, -i, end_tag)
  }

  # sort insertions by pos asc, prio asc
  df <- insertions
  if (length(df) == 0) return(escape_html(text))
  ord <- order(vapply(df, function(x) x$pos, integer(1)), vapply(df, function(x) x$prio, integer(1)))
  df <- df[ord]

  # perform insertions from end to start
  out_text <- text
  for (k in rev(seq_along(df))) {
    it <- df[[k]]
    pos <- it$pos
    what <- it$what
    # R substr is 1-based; pos is 0-based (to mimic original), so insert before pos+1
    insert_at <- pos + 1
    if (insert_at < 1) insert_at <- 1
    prefix <- if (insert_at > 1) substr(out_text, 1, insert_at - 1) else ""
    middle <- substr(out_text, insert_at, nchar(out_text))
    # escape the portion after insert as needed: simpler approach: escape whole text except inserted tags
    out_text <- paste0(prefix, what, escape_html(middle))
  }

  # final safe return (ensure full escaping where needed)
  out_text
}

# Helper: null-coalesce
`%||%` <- function(a, b) if (!is.null(a)) a else b