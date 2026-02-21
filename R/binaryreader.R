#' BinaryReader Class
#'
#' @description
#' A utility class to read binary data, inspired by Python's BinaryReader.
#'
#' @details
#' Provides methods to read various data types and handle stream positions.
#'
#' @title BinaryReader
#' @description Telegram API type BinaryReader
#' @export
BinaryReader <- R6::R6Class(
  "BinaryReader",
  public = list(

    #' @description
    #' Initializes the BinaryReader with the given binary data.
    #' @param data A raw vector representing the binary data to read.
    initialize = function(data) {
      private$stream <- rawConnection(data, "rb")
      private$.last <- NULL
      private$.data <- data
    },

    #' @description
    #' Reads a single byte value.
    #' @return A single byte as an integer.
    read_byte = function() {
      return(as.integer(self$read(1L)[1]))
    },

    #' @description
    #' Reads a 4-byte integer value.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return An integer value.
    read_int = function(signed = TRUE) {
      bytes <- self$read(4)
      return(self$bytes_to_int(bytes, signed))
    },

    #' @description
    #' Reads an 8-byte long integer value.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return A long integer value.
    read_long = function(signed = TRUE) {
      bytes <- self$read(8)
      return(self$bytes_to_int(bytes, signed))
    },

    #' @description
    #' Reads a 4-byte floating-point value.
    #' @return A numeric value.
    read_float = function() {
      bytes <- self$read(4L)
      con <- rawConnection(bytes, "rb")
      on.exit(close(con))
      val <- readBin(con, what = "numeric", n = 1L, size = 4L, endian = "little")
      return(val)
    },

    #' @description
    #' Reads an 8-byte floating-point value.
    #' @return A numeric value.
    read_double = function() {
      bytes <- self$read(8L)
      con <- rawConnection(bytes, "rb")
      on.exit(close(con))
      val <- readBin(con, what = "numeric", n = 1L, size = 8L, endian = "little")
      return(val)
    },

    #' @description
    #' Reads a specified number of bytes.
    #' @param length An integer specifying the number of bytes to read.
    #' @return A raw vector of the read bytes.
    read = function(length = -1) {
      result <- readBin(private$stream, "raw", n = length)
      if (length >= 0 && length(result) != length) {
        stop(sprintf(
          "No more data left to read (need %d, got %d); last read: %s",
          length, length(result), paste(private$.last, collapse = " ")
        ))
      }
      private$.last <- result
      return(result)
    },

    #' @description
    #' Gets the byte array representing the current buffer as a whole.
    #' @return A raw vector of the entire buffer.
    get_bytes = function() {
      return(private$.data)
    },

    #' @description
    #' Closes the reader, freeing the raw connection.
    close = function() {
      close(private$stream)
    },

    #' @description
    #' Tells the current position in the stream.
    #' @return An integer representing the current position.
    tell_position = function() {
      return(seek(private$stream, origin = "current"))
    },

    #' @description
    #' Sets the current position in the stream.
    #' @param position An integer specifying the position to set.
    set_position = function(position) {
      seek(private$stream, position, origin = "start")
    },

    #' @description
    #' Seeks the stream position by a given offset.
    #' @param offset An integer specifying the offset to seek.
    seek = function(offset) {
      seek(private$stream, offset, origin = "current")
    },

    #' @description
    #' Converts a byte vector to an integer.
    #' @param bytes A raw vector representing the bytes.
    #' @param signed A logical indicating whether the integer is signed.
    #' @return An integer value.
    bytes_to_int = function(bytes, signed = TRUE) {
      if (length(bytes) > 4) {
        # Use big integer arithmetic and return bigz to preserve
        # full 64-bit precision (R doubles only have 53-bit mantissa).
        hex <- paste(sprintf("%02x", as.integer(rev(bytes))), collapse = "")
        val <- gmp::as.bigz(paste0("0x", hex))
        if (signed) {
          # Handle sign for two's complement values.
          max_val <- gmp::pow.bigz(2, 8 * length(bytes))
          if (val >= max_val / 2) {
            val <- val - max_val
          }
        }
        return(val)
      } else {
        # 32-bit and smaller values.
        value <- sum(as.numeric(bytes) * 256^(seq_along(bytes) - 1))
        if (isTRUE(signed)) {
          max_val <- 256^length(bytes)
          if (value >= max_val / 2) {
            value <- value - max_val
          }
          return(as.integer(value))
        }
        # Unsigned 32-bit can exceed R integer range, return numeric.
        return(as.numeric(value))
      }
    },

    #' @description
    #' Reads a large integer (128, 256, etc bits).
    #' @param bits Number of bits to read.
    #' @return A bigz value.
    read_large_int = function(bits) {
      bytes <- self$read(bits / 8)
      hex <- paste(sprintf("%02x", as.integer(rev(bytes))), collapse = "")
      return(gmp::as.bigz(paste0("0x", hex)))
    },

    #' @description
    #' Reads a Telegram-encoded byte array.
    #' @return A raw vector.
    tgread_bytes = function() {
      first_byte <- as.integer(self$read(1))
      if (first_byte == 254) {
        length <- self$bytes_to_int(self$read(3), signed = FALSE)
      } else {
        length <- first_byte
      }
      data <- self$read(length)

      # Padding
      padding <- if (first_byte == 254) length %% 4 else (length + 1) %% 4
      if (padding > 0) {
        self$read(4 - padding)
      }

      return(data)
    },

    #' @description
    #' Alias for tgread_bytes (some generated code uses this name).
    #' @return A raw vector.
    tgreadbytes = function() {
      self$tgread_bytes()
    },

    #' @description
    #' Reads a Telegram-encoded string.
    #' @return A character string.
    tgread_string = function() {
      return(rawToChar(self$tgread_bytes()))
    },

    #' @description
    #' Reads a 32-bit Unix timestamp and returns it as a POSIXct datetime.
    #' @return A POSIXct datetime or NULL if the timestamp is 0.
    tgread_date = function() {
      value <- self$read_int(signed = FALSE)
      if (is.null(value) || value == 0) return(NULL)
      as.POSIXct(as.numeric(value), origin = "1970-01-01", tz = "UTC")
    },

    #' @description
    #' Reads a TL object.
    #' @return A TL object or raw bytes if type unknown.
    tgread_object = function() {
      constructor_id <- self$read_int(signed = FALSE)
      ctor_key <- .telegramR_norm_ctor_id(constructor_id)
      ctor_map <- .telegramR_get_ctor_map()
      cls <- ctor_map[[ctor_key]]

      if (is.null(cls)) {
        cur <- self$tell_position()
        remaining <- length(private$.data) - cur
        if (remaining <= 0) {
          return(list(CONSTRUCTOR_ID = constructor_id, data = raw(0)))
        }
        return(list(CONSTRUCTOR_ID = constructor_id, data = self$read(remaining)))
      }

      # Save position right after reading constructor_id so we can rewind
      # on from_reader failure (it may have consumed bytes before failing).
      pos_after_ctor <- self$tell_position()

      # Most generated classes expose parser as private$from_reader.
      # Try to instantiate; if the constructor requires args, create with
      # a zero-arg tryCatch and fall back to using the class generator directly.
      obj <- tryCatch(cls$new(), error = function(e) NULL)

      # Try to get from_reader from private methods on the instance or generator
      from_reader_fn <- NULL
      if (!is.null(obj)) {
        private_env <- obj$.__enclos_env__$private
        if (is.environment(private_env) && is.function(private_env$from_reader)) {
          from_reader_fn <- private_env$from_reader
        }
      }
      if (is.null(from_reader_fn) && !is.null(cls$private_methods) && is.function(cls$private_methods$from_reader)) {
        from_reader_fn <- cls$private_methods$from_reader
        # Fix the function's environment so it can find the class it needs
        # to construct (e.g. BadServerSalt$new inside from_reader).
        # The extracted function's enclosing env may not have the class in scope.
        fn_env <- new.env(parent = environment(from_reader_fn))
        fn_env[[cls$classname]] <- cls
        # Provide a `self` proxy so from_reader methods that call
        # self$initialize(...) or self$new(...) work correctly outside R6 context.
        # The proxy delegates these calls to cls$new(...).
        self_proxy <- new.env(parent = emptyenv())
        self_proxy$initialize <- function(...) cls$new(...)
        self_proxy$new <- function(...) cls$new(...)
        fn_env$self <- self_proxy
        environment(from_reader_fn) <- fn_env
      }

      if (!is.null(from_reader_fn)) {
        parsed <- tryCatch(from_reader_fn(self), error = function(e) {
          # Rewind reader to position right after constructor_id so the
          # fallback data contains ALL the object bytes.
          tryCatch(self$set_position(pos_after_ctor), error = function(e2) NULL)
          cur <- self$tell_position()
          remaining <- length(private$.data) - cur
          if (remaining > 0) {
            list(CONSTRUCTOR_ID = constructor_id, data = self$read(remaining))
          } else {
            list(CONSTRUCTOR_ID = constructor_id, data = raw(0))
          }
        })
        if (inherits(parsed, "R6")) {
          return(parsed)
        }
        if (inherits(parsed, class(cls$classname)[1]) || inherits(parsed, cls$classname)) {
          return(parsed)
        }
        if (is.list(parsed) && !is.null(parsed$CONSTRUCTOR_ID) && is.null(parsed$data)) {
          # It's a proper TL object returned from from_reader
          return(parsed)
        }
        if (is.list(parsed)) {
          result <- tryCatch(do.call(cls$new, parsed), error = function(e) parsed)
          return(result)
        }
        if (!is.null(parsed)) return(parsed)
      }

      # Fallback: return blank object or raw data
      if (!is.null(obj)) return(obj)
      tryCatch(self$set_position(pos_after_ctor), error = function(e2) NULL)
      cur <- self$tell_position()
      remaining <- length(private$.data) - cur
      if (remaining > 0) {
        list(CONSTRUCTOR_ID = constructor_id, data = self$read(remaining))
      } else {
        list(CONSTRUCTOR_ID = constructor_id, data = raw(0))
      }
    }
  ),
  private = list(
    stream = NULL,
    .last = NULL,
    .data = NULL
  )
)

.telegramR_norm_ctor_id <- function(x) {
  v <- as.numeric(x)[1]
  if (is.na(v)) return(NA_character_)
  if (v < 0) v <- v + 2^32
  sprintf("%.0f", v)
}

.telegramR_get_ctor_map <- function() {
  cache <- getOption("telegramR.ctor_map")
  if (is.list(cache) && length(cache) > 0) {
    return(cache)
  }

  # Search multiple environments to handle both installed package and
  # devtools::load_all() / source() workflows.
  envs_to_search <- list()
  tryCatch({
    pkg_name <- utils::packageName()
    if (!is.null(pkg_name) && nzchar(pkg_name)) {
      envs_to_search <- c(envs_to_search, list(asNamespace(pkg_name)))
    }
  }, error = function(e) NULL)
  tryCatch({
    ns <- asNamespace("telegramR")
    if (!any(vapply(envs_to_search, identical, logical(1), ns)))
      envs_to_search <- c(envs_to_search, list(ns))
  }, error = function(e) NULL)
  # Also search the global environment (for source()'d code)
  envs_to_search <- c(envs_to_search, list(.GlobalEnv))

  out <- list()
  seen_names <- character(0)
  for (env in envs_to_search) {
    for (nm in ls(envir = env, all.names = TRUE)) {
      if (nm %in% seen_names) next
      seen_names <- c(seen_names, nm)
      obj <- tryCatch(get(nm, envir = env, inherits = FALSE), error = function(e) NULL)
      if (!inherits(obj, "R6ClassGenerator")) next
      cid <- NULL
      pf <- obj$public_fields
      if (!is.null(pf) && !is.null(pf$CONSTRUCTOR_ID)) {
        cid <- tryCatch({
          v <- pf$CONSTRUCTOR_ID
          if (is.function(v)) v <- v()
          v
        }, error = function(e) NULL)
      }
      if (is.null(cid)) {
        af <- obj$active
        if (!is.null(af) && !is.null(af$CONSTRUCTOR_ID) && is.function(af$CONSTRUCTOR_ID)) {
          cid <- tryCatch(af$CONSTRUCTOR_ID(), error = function(e) {
            tryCatch({
              inst <- obj$new()
              inst$CONSTRUCTOR_ID
            }, error = function(e2) NULL)
          })
        }
      }
      if (is.null(cid)) next

      key <- .telegramR_norm_ctor_id(cid)
      if (is.na(key)) next
      out[[key]] <- obj
    }
  }

  # Only cache if we found at least some classes; otherwise retry next time
  if (length(out) > 0) {
    options(telegramR.ctor_map = out)
  }
  out
}
