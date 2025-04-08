#' @import base64enc
#' @import jsonlite

EPOCH_NAIVE <- as.POSIXct("1970-01-01 00:00:00", tz = "UTC")
EPOCH_NAIVE_LOCAL <- as.POSIXct(format(Sys.time(), "%Y-%m-%d %H:%M:%S"), tz = Sys.timezone())
EPOCH <- EPOCH_NAIVE

#' Convert a datetime object to a timestamp.
#'
#' This function converts a datetime object to a timestamp in seconds since the epoch.
#' It handles both UTC and local timezones.
#'
#' @param dt A datetime object to be converted.
#' @return A numeric value representing the timestamp in seconds since the epoch.
#' @examples
#' datetime_to_timestamp(as.POSIXct("2023-01-01 12:00:00", tz = "UTC"))
#' datetime_to_timestamp(as.POSIXct("2023-01-01 12:00:00"))
#' @export
datetime_to_timestamp <- function(dt) {
  if (is.na(attr(dt, "tzone"))) {
    attr(dt, "tzone") <- "UTC"
  }
  secs <- as.numeric(difftime(dt, EPOCH, units = "secs"))
  return(secs %% 2^32)
}

#' Default JSON serialization function.
#'
#' This function is used to serialize various data types to JSON format.
#' It handles raw data, POSIXt objects, and other types.
#'
#' @param value The value to be serialized.
#' @return A character string representing the serialized value.
#' @examples
#' json_default(charToRaw("test"))
#' json_default(as.POSIXct("2023-01-01 12:00:00", tz = "UTC"))
#' json_default(123)
#' @export
json_default <- function(value) {
  if (is.raw(value)) {
    return(base64encode(value))
  } else if (inherits(value, "POSIXt")) {
    return(format(value, "%Y-%m-%dT%H:%M:%S"))
  } else {
    return(as.character(value))
  }
}

#' Pretty format a TL object.
#'
#' This function formats a TL object for pretty printing. It handles nested lists,
#' vectors, and other data types.
#'
#' @param obj The object to be formatted.
#' @param indent The current indentation level (used for recursive calls).
#' @return A character string representing the formatted object.
#' @examples
#' pretty_format(list(a = 1, b = "test", c = list(d = 2)))
#' pretty_format(c(1, 2, 3))
#' @export
pretty_format <- function(obj, indent = NULL) {
  if (is.null(indent)) {
    if (inherits(obj, "TLObject")) {
      obj <- obj$to_dict()
    }
    if (is.list(obj)) {
      return(paste0("{", paste(
        sapply(names(obj), function(k) {
          paste0(k, "=", pretty_format(obj[[k]]))
        }), collapse = ", "
      ), "}"))
    } else if (is.character(obj) || is.raw(obj)) {
      return(obj)
    } else if (is.vector(obj)) {
      return(paste0("[", paste(
        sapply(obj, pretty_format), collapse = ", "
      ), "]"))
    } else {
      return(as.character(obj))
    }
  } else {
    result <- list()
    if (inherits(obj, "TLObject")) {
      obj <- obj$to_dict()
    }
    if (is.list(obj)) {
      result <- append(result, list(""))
      if (length(obj) > 0) {
        indent <- indent + 1
        for (k in names(obj)) {
          result <- append(result, list(
            paste0(
              rep("\t", indent),
              collapse = "",
              k,
              "=",
              pretty_format(obj[[k]], indent),
              ","
            )
          ))
        }
        result <- result[-length(result)]
        indent <- indent - 1
      }
      result <- append(result, list(paste0(rep("\t", indent), collapse = "", "")))
    } else if (is.character(obj) || is.raw(obj)) {
      result <- append(result, list(obj))
    } else if (is.vector(obj)) {
      result <- append(result, list("["))
      indent <- indent + 1
      for (x in obj) {
        result <- append(result, list(paste0(
          rep("\t", indent),
          collapse = "",
          pretty_format(x, indent),
          ","
        )))
      }
      indent <- indent - 1
      result <- append(result, list(paste0(rep("\t", indent), collapse = "", "]")))
    } else {
      result <- append(result, list(as.character(obj)))
    }
    return(paste(result, collapse = ""))
  }
}

#' Serialize data to bytes.
#'
#' This function serializes data to a byte array. It handles both raw data and character strings.
#'
#' @param data The data to be serialized.
#' @return A raw vector representing the serialized data.
#' @examples
#' serialize_bytes(charToRaw("test"))
#' serialize_bytes("test")
#' @export
serialize_bytes <- function(data) {
  if (!is.raw(data)) {
    if (is.character(data)) {
      data <- charToRaw(data)
    } else {
      stop("bytes or str expected, not ", typeof(data))
    }
  }
  r <- list()
  if (length(data) < 254) {
    padding <- (length(data) + 1) %% 4
    if (padding != 0) {
      padding <- 4 - padding
    }
    r <- append(r, list(as.raw(length(data))))
    r <- append(r, list(data))
  } else {
    padding <- length(data) %% 4
    if (padding != 0) {
      padding <- 4 - padding
    }
    r <- append(r, list(as.raw(c(
      254,
      length(data) %% 256,
      (length(data) %/% 256) %% 256,
      (length(data) %/% (256^2)) %% 256
    ))))
    r <- append(r, list(data))
  }
  r <- append(r, list(as.raw(rep(0, padding))))
  return(do.call(c, r))
}

#' Serialize a datetime object to bytes.
#'
#' This function serializes a datetime object to a byte array. It handles various datetime formats,
#' including POSIXct, Date, numeric, and difftime.
#'
#' @param dt The datetime object to be serialized.
#' @return A raw vector representing the serialized datetime.
#' @examples
#' serialize_datetime(as.POSIXct("2023-01-01 12:00:00", tz = "UTC"))
#' serialize_datetime(as.Date("2023-01-01"))
#' serialize_datetime(as.numeric(1234567890))
#' serialize_datetime(as.difftime(3600, units = "secs"))
#' @export
serialize_datetime <- function(dt) {
  if (is.null(dt) || !inherits(dt, "difftime")) {
    return(as.raw(rep(0, 4)))
  }
  if (inherits(dt, "POSIXt")) {
    dt <- datetime_to_timestamp(dt)
  } else if (inherits(dt, "Date")) {
    dt <- datetime_to_timestamp(as.POSIXct(dt))
  } else if (is.numeric(dt)) {
    dt <- as.integer(dt)
  } else if (inherits(dt, "difftime")) {
    dt <- datetime_to_timestamp(Sys.time() + dt)
  }
  if (is.integer(dt)) {
    return(packBits(intToBits(dt), "raw"))
  }
  stop("Cannot interpret '", dt, "' as a date.")
}

#' TLObject Class
#'
#' @description
#' A base class for all Telegram Layer (TL) objects. This class provides common methods
#' for serialization, deserialization, and representation of TL objects.
#'
#' @export
TLObject <- R6::R6Class(
  "TLObject",
  public = list(

    #' @field CONSTRUCTOR_ID A unique identifier for the TL object.
    CONSTRUCTOR_ID = NULL,

    #' @field SUBCLASS_OF_ID A unique identifier for the subclass of the TL object.
    SUBCLASS_OF_ID = NULL,

    #' @description
    #' Initialize a new TLObject.
    #' @return A new TLObject instance.
    initialize = function() {
      self$CONSTRUCTOR_ID <- NULL
      self$SUBCLASS_OF_ID <- NULL
    },

    #' @description
    #' Pretty format the object for display.
    #' @param obj The object to be formatted.
    #' @param indent The current indentation level (used for recursive calls).
    #' @return A character string representing the formatted object.
    pretty_format = function(obj, indent = NULL) {
      if (is.null(indent)) {
        if (inherits(obj, "TLObject")) {
          obj <- obj$to_dict()
        }
        if (is.list(obj)) {
          return(paste0("{", paste(
            sapply(names(obj), function(k) {
              paste0(k, "=", self$pretty_format(obj[[k]]))
            }), collapse = ", "
          ), "}"))
        } else if (is.character(obj) || is.raw(obj)) {
          return(obj)
        } else if (is.vector(obj)) {
          return(paste0("[", paste(
            sapply(obj, self$pretty_format), collapse = ", "
          ), "]"))
        } else {
          return(as.character(obj))
        }
      } else {
        result <- list()
        if (inherits(obj, "TLObject")) {
          obj <- obj$to_dict()
        }
        if (is.list(obj)) {
          result <- append(result, list(""))
          if (length(obj) > 0) {
            indent <- indent + 1
            for (k in names(obj)) {
              result <- append(result, list(
                paste0(
                  rep("\t", indent),
                  collapse = "",
                  k,
                  "=",
                  self$pretty_format(obj[[k]], indent),
                  ","
                )
              ))
            }
            result <- result[-length(result)]
            indent <- indent - 1
          }
          result <- append(result, list(paste0(rep("\t", indent), collapse = "", "")))
        } else if (is.character(obj) || is.raw(obj)) {
          result <- append(result, list(obj))
        } else if (is.vector(obj)) {
          result <- append(result, list("["))
          indent <- indent + 1
          for (x in obj) {
            result <- append(result, list(paste0(
              rep("\t", indent),
              collapse = "",
              self$pretty_format(x, indent),
              ","
            )))
          }
          indent <- indent - 1
          result <- append(result, list(paste0(rep("\t", indent), collapse = "", "]")))
        } else {
          result <- append(result, list(as.character(obj)))
        }
        return(paste(result, collapse = ""))
      }
    },

    #' @description
    #' Serialize data to bytes.
    #' @param data The data to be serialized.
    #' @return A raw vector representing the serialized data.
    serialize_bytes = function(data) {
      if (!is.raw(data)) {
        if (is.character(data)) {
          data <- charToRaw(data)
        } else {
          stop("bytes or str expected, not ", typeof(data))
        }
      }
      r <- list()
      if (length(data) < 254) {
        padding <- (length(data) + 1) %% 4
        if (padding != 0) {
          padding <- 4 - padding
        }
        r <- append(r, list(as.raw(length(data))))
        r <- append(r, list(data))
      } else {
        padding <- length(data) %% 4
        if (padding != 0) {
          padding <- 4 - padding
        }
        r <- append(r, list(as.raw(c(
          254,
          length(data) %% 256,
          (length(data) %/% 256) %% 256,
          (length(data) %/% (256^2)) %% 256
        ))))
        r <- append(r, list(data))
      }
      r <- append(r, list(as.raw(rep(0, padding))))
      return(do.call(c, r))
    },

    #' @description
    #' Serialize a datetime object to bytes.
    #' @param dt The datetime object to be serialized.
    #' @return A raw vector representing the serialized datetime.
    serialize_datetime = function(dt) {
      if (is.null(dt) || !inherits(dt, "difftime")) {
        return(as.raw(rep(0, 4)))
      }
      if (inherits(dt, "POSIXt")) {
        dt <- datetime_to_timestamp(dt)
      } else if (inherits(dt, "Date")) {
        dt <- datetime_to_timestamp(as.POSIXct(dt))
      } else if (is.numeric(dt)) {
        dt <- as.integer(dt)
      } else if (inherits(dt, "difftime")) {
        dt <- datetime_to_timestamp(Sys.time() + dt)
      }
      if (is.integer(dt)) {
        return(packBits(intToBits(dt), "raw"))
      }
      stop("Cannot interpret '", dt, "' as a date.")
    },

    #' @description
    #' Convert the object to a dictionary representation.
    #' @return A list representing the object.
    to_dict = function() {
      stop("Not implemented")
    },

    #' @description
    #' Convert the object to a JSON representation.
    #' @param fp A file path to write the JSON to (optional).
    #' @param default A function to handle custom serialization (default: json_default).
    #' @param ... Additional arguments to pass to the JSON serialization function.
    #' @return A character string representing the JSON representation of the object.
    to_json = function(fp = NULL, default = json_default, ...) {
      d <- self$to_dict()
      if (!is.null(fp)) {
        writeLines(jsonlite::toJSON(d, auto_unbox = TRUE, ...), con = fp)
      } else {
        return(jsonlite::toJSON(d, auto_unbox = TRUE, ...))
      }
    },

    #' @description
    #' Convert the object to a byte array.
    #' @return A raw vector representing the byte array.
    .bytes = function() {
      stop("Not implemented")
    },

    #' @description
    #' Create a new object from a binary reader.
    #' @param reader A binary reader object.
    #' @return A new object created from the binary reader.
    from_reader = function(reader) {
      stop("Not implemented")
    },

    #' @description
    #' Check if the object is equal to another object.
    #' @param o The object to compare with.
    #' @return A logical value indicating whether the objects are equal.
    .eq = function(o) {
      inherits(o, "TLObject") && identical(self$to_dict(), o$to_dict())
    },

    #' @description
    #' Check if the object is not equal to another object.
    #' @param o The object to compare with.
    #' @return A logical value indicating whether the objects are not equal.
    .ne = function(o) {
      !inherits(o, "TLObject") || !identical(self$to_dict(), o$to_dict())
    },

    #' @description
    #' Convert the object to a string representation.
    #' @return A character string representing the object.
    .str = function() {
      self$pretty_format(self)
    },

    #' @description
    #' Convert the object to a JSON string representation.
    #' @return A character string representing the JSON representation of the object.
    stringify = function() {
      self$pretty_format(self, indent = 0)
    }
  )
)

#' TLRequest Class
#'
#' @description
#' A class representing a Telegram Layer (TL) request. This class extends the `TLObject` class
#' and provides methods for reading results and resolving requests.
#'
#' @export
TLRequest <- R6::R6Class(
  "TLRequest",
  inherit = TLObject,
  public = list(

    #' @description
    #' Read the result from a binary reader.
    #' @param reader A binary reader object to read the result from.
    #' @return The result read from the binary reader.
    read_result = function(reader) {
      reader$tgread_object()
    },

    #' @description
    #' Resolve the request using a client and utility functions.
    #' @param client A client object to resolve the request.
    #' @param utils A utility object to assist in resolving the request.
    #' @return The resolved result.
    resolve = function(client, utils) {
      stop("Not implemented")
    }
  )
)
