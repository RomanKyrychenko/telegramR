#' Simple markdown parser which does not support nesting.
#'
#' This file provides lightweight parsing and unparsing utilities for a
#' subset of markdown-like delimiters. It is intended primarily for use
#' within the package and attempts to handle Unicode surrogate pairs
#' (e.g. emojis) correctly via helper functions:
#' \code{add_surrogate}, \code{del_surrogate}, \code{within_surrogate},
#' and \code{strip_text}.
#'
#' The parser recognizes a small set of delimiters and converts them into
#' TL-style message entities. It also supports inline URLs of the form
#' \code{[text](url)} producing \code{MessageEntityTextUrl} entries.
#'
#' Note: This parser deliberately does not support nested formatting.
#' Default mapping of delimiter strings to entity types.
#'
#' Keys are the literal delimiter sequences as they appear in text and
#' values are the corresponding entity class names used by the system.
#' @examples
#' DEFAULT_DELIMITERS[["**"]]
DEFAULT_DELIMITERS <- list(
  "**" = "MessageEntityBold",
  "__" = "MessageEntityItalic",
  "~~" = "MessageEntityStrike",
  "`"  = "MessageEntityCode",
  "```"= "MessageEntityPre"
)

#' Default regular expression to match inline Markdown-style URLs.
#'
#' The pattern captures the link text in group 1 and the URL in group 2.
DEFAULT_URL_RE <- "\\[([^]]*?)\\]\\(([\\s\\S]*?)\\)"
#' Default URL format used by unparse (deprecated in some flows).
DEFAULT_URL_FORMAT <- "[%s](%s)"

#' Construct an entity list with a class attribute.
#'
#' Each entity is a list with at least \code{offset} (0-based) and
#' \code{length}. Additional named fields may be provided via \dots.
#'
#' @param type Character scalar; class name to assign to the entity.
#' @param offset Integer; 0-based offset of the entity in text.
#' @param length Integer; length of the entity in characters.
#' @param ... Additional named fields to include in the returned list.
#' @return A list representing the entity, with class set to \code{type}.
make_entity <- function(type, offset, length, ...) {
  e <- list(offset = offset, length = length)
  extra <- list(...)
  if (length(extra)) e <- c(e, extra)
  class(e) <- type
  e
}

#' Parse a text string into plain message text and entities.
#'
#' The parser scans the input \code{message} and converts recognized
#' delimiters (bold, italic, code, strike, pre) and inline links into a
#' list of entity objects while removing delimiter characters from the
#' returned text. Processing is surrogate-aware to avoid splitting
#' multi-codepoint graphemes (e.g. emojis).
#'
#' Limitations:
#' - Nested formatting is not supported.
#' - Only the supplied set of \code{delimiters} are recognized.
#'
#' @param message Character scalar; the input text to parse.
#' @param delimiters Optional named list mapping delimiter strings to
#'   entity type names. If \code{NULL}, \code{DEFAULT_DELIMITERS} is used.
#' @param url_re Optional regular expression used to detect inline URLs.
#'   If \code{NULL}, \code{DEFAULT_URL_RE} is used. Can be a string or
#'   any object coercible to character.
#' @return A list with elements:
#'   \item{message}{The processed plain text with delimiter characters removed.}
#'   \item{entities}{A list of entity objects produced by \code{make_entity}.}
parse <- function(message, delimiters = NULL, url_re = NULL) {
  if (is.null(message) || message == "") return(list(message = message, entities = list()))
  if (is.null(url_re)) url_re <- DEFAULT_URL_RE
  if (!is.null(url_re) && !is.character(url_re)) url_re <- as.character(url_re)

  if (is.null(delimiters)) {
    if (!is.null(delimiters)) return(list(message = message, entities = list()))
    delimiters <- DEFAULT_DELIMITERS
  }

  # Prepare sorted delimiter keys (longest first)
  delim_keys <- names(delimiters)
  delim_keys <- delim_keys[order(nchar(delim_keys), decreasing = TRUE)]

  # Work on surrogate-aware representation provided by helper
  message <- add_surrogate(message)
  i <- 1L
  result <- list()

  msg_len <- nchar(message, type = "chars")
  while (i <= msg_len) {
    # take substring from i to end
    sub <- substring(message, i, msg_len)

    # Try delimiter match at beginning
    found_delim <- NULL
    for (d in delim_keys) {
      if (startsWith(sub, d)) { found_delim <- d; break }
    }

    if (!is.null(found_delim)) {
      delim <- found_delim
      # search for closing delimiter after at least one char
      start_search <- i + nchar(delim)
      if (start_search + 1 <= nchar(message)) {
        tail_sub <- substring(message, start_search + 1, msg_len)
        # find first occurrence of delim in tail_sub
        pos <- regexpr(gsub("([\\^\\$\\.\\|\\?\\*\\+\\(\\)\\[\\{\\\\])", "\\\\\\1", delim), tail_sub, fixed = FALSE)
        if (pos[1] != -1) {
          end <- start_search + pos[1]  # position of delim start in original string (1-based)
          # Remove delimiters from string
          before <- if (i > 1) substring(message, 1, i - 1) else ""
          middle <- substring(message, i + nchar(delim), end - 1)
          after <- if (end + nchar(delim) <= nchar(message)) substring(message, end + nchar(delim), nchar(message)) else ""
          message <- paste0(before, middle, after)
          # adjust msg_len
          msg_len <- nchar(message, type = "chars")

          # adjust existing entities offsets/lengths
          for (k in seq_along(result)) {
            ent <- result[[k]]
            if ((ent$offset + ent$length) > i - 1) {
              # ent.start <= i?
              if (ent$offset <= (i - 1) && (ent$offset + ent$length) >= (end + nchar(delim) - 1)) {
                ent$length <- ent$length - nchar(delim) * 2
              } else {
                ent$length <- ent$length - nchar(delim)
              }
              result[[k]] <- ent
            }
          }

          # Append found entity
          ent_type <- delimiters[[delim]]
          if (identical(ent_type, "MessageEntityPre")) {
            # MessageEntityPre may have language; keep empty string for lang
            ent <- make_entity(ent_type, i - 1, end - i - nchar(delim), lang = "")
          } else {
            ent <- make_entity(ent_type, i - 1, end - i - nchar(delim))
          }
          result <- append(result, list(ent))

          # No nested entities inside code blocks
          if (ent_type %in% c("MessageEntityCode", "MessageEntityPre")) {
            i <- end - nchar(delim)
          }
          # continue main loop without incrementing i further
          next
        }
      }
      # if no closing delimiter found, fall through to URL / increment
    }

    # Try matching URL at current position
    url_match <- regexec(paste0("^", url_re), sub, perl = TRUE)
    m <- regmatches(sub, url_match)[[1]]
    if (length(m) > 0) {
      # m[1] full match, m[2] text, m[3] url
      text_part <- m[2]
      url_part <- m[3]
      # Replace full match with only inline text
      before <- if (i > 1) substring(message, 1, i - 1) else ""
      after <- substring(message, i + nchar(m[1]), nchar(message))
      message <- paste0(before, text_part, after)
      # compute delim size removed
      delim_size <- nchar(m[1]) - nchar(text_part)
      # adjust existing entities
      match_start <- i - 1
      for (k in seq_along(result)) {
        ent <- result[[k]]
        if ((ent$offset + ent$length) > match_start) {
          ent$length <- ent$length - delim_size
          result[[k]] <- ent
        }
      }
      # append text URL entity
      text_len <- nchar(text_part, type = "chars")
      ent <- make_entity("MessageEntityTextUrl", match_start, text_len, url = del_surrogate(url_part))
      result <- append(result, list(ent))
      # advance i by length of the inline text
      i <- i + text_len
      msg_len <- nchar(message, type = "chars")
      next
    }

    # nothing matched, move forward
    i <- i + 1L
  }

  # strip text using helper and return
  final_text <- strip_text(message, result)
  return(list(message = del_surrogate(final_text), entities = result))
}

#' Convert text and entities back to a delimited markdown-like string.
#'
#' Given a plain \code{text} and a list of entity objects (as produced by
#' \code{parse} or by other code), this function reinserts delimiter
#' sequences and inline URL markup to produce a string resembling the
#' original markdown. The routine is surrogate-aware and attempts to
#' place delimiters outside surrogate pairs.
#'
#' @param text Character scalar; plain text without delimiters.
#' @param entities List of entity objects. Each object should have
#'   \code{offset} (0-based) and \code{length} fields and a class name
#'   identifying its type.
#' @param delimiters Optional named list mapping delimiter strings to
#'   entity type names (same shape as \code{DEFAULT_DELIMITERS}).
#'   If \code{NULL}, \code{DEFAULT_DELIMITERS} is used.
#' @param url_fmt Deprecated; present for historical compatibility.
#' @return A character scalar with delimiters and URL markup reinserted.
unparse <- function(text, entities, delimiters = NULL, url_fmt = NULL) {
  if (is.null(text) || text == "" || length(entities) == 0) return(text)

  if (is.null(delimiters)) {
    if (!is.null(delimiters)) return(text)
    delimiters <- DEFAULT_DELIMITERS
  }

  if (!is.null(url_fmt)) warning("url_fmt is deprecated")

  # If entities is a single TLObject-like, allow list
  if (!is.list(entities) || is.null(names(entities))) {
    # assume it's a list of entity objects
    # ensure entities is a list
  }

  text <- add_surrogate(text)
  # invert delimiters to map type->delimiter string
  delim_by_type <- setNames(names(delimiters), unlist(delimiters, use.names = FALSE))

  insert_at <- list()
  # gather insertions: tuples (pos, priority, string)
  for (i in seq_along(entities)) {
    entity <- entities[[i]]
    s <- entity$offset + 1  # convert 0-based to 1-based
    e <- entity$offset + entity$length
    delimiter <- delim_by_type[[class(entity)[1]]]
    if (!is.null(delimiter)) {
      # opening
      insert_at <- append(insert_at, list(list(pos = s, pri = i, what = delimiter)))
      # closing
      insert_at <- append(insert_at, list(list(pos = e + 1, pri = -i, what = delimiter)))
    } else {
      # handle urls and mentions
      url <- NULL
      if (inherits(entity, "MessageEntityTextUrl")) url <- entity$url
      if (inherits(entity, "MessageEntityMentionName")) {
        url <- sprintf("tg://user?id=%s", entity$user_id)
      }
      if (!is.null(url)) {
        insert_at <- append(insert_at, list(list(pos = s, pri = i, what = "[")))
        insert_at <- append(insert_at, list(list(pos = e + 1, pri = -i, what = sprintf("](%s)", url))))
      }
    }
  }

  # sort insert_at by pos then priority
  order_idx <- order(sapply(insert_at, function(x) x$pos),
                     sapply(insert_at, function(x) x$pri))
  insert_at <- insert_at[order_idx]

  # perform insertions from end to start to keep positions valid
  for (k in rev(seq_along(insert_at))) {
    it <- insert_at[[k]]
    at <- it$pos
    # nudge position if inside surrogate
    while (within_surrogate(text, at)) at <- at + 1
    if (at <= 1) {
      text <- paste0(it$what, text)
    } else if (at > nchar(text) ) {
      text <- paste0(text, it$what)
    } else {
      text <- paste0(substring(text, 1, at - 1), it$what, substring(text, at, nchar(text)))
    }
  }

  return(del_surrogate(text))
}
