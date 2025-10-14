#' GetCdnFileRequest R6 class
#'
#' Represents the TL request upload.GetCdnFileRequest.
#' @field file_token raw|integer|character token bytes
#' @field offset numeric 64-bit offset
#' @field limit integer
#' @export
GetCdnFileRequest <- R6::R6Class(
  "GetCdnFileRequest",
  public = list(
    file_token = NULL,
    offset = NULL,
    limit = NULL,

    #' @description Initialize a GetCdnFileRequest
    #' @param file_token raw|integer|character
    #' @param offset numeric (64-bit)
    #' @param limit integer
    initialize = function(file_token, offset, limit) {
      self$file_token <- file_token
      self$offset <- offset
      self$limit <- as.integer(limit)
      invisible(self)
    },

    #' @description Convert to list (dictionary-like)
    #' @return list
    to_list = function() {
      list(
        `_` = "GetCdnFileRequest",
        file_token = self$file_token,
        offset = self$offset,
        limit = self$limit
      )
    },

    #' @description Serialize to raw vector
    #' @return raw
    to_bytes = function() {
      c(
        private$constructor_id,
        private$serialize_bytes(self$file_token),
        private$pack_int64_le(self$offset),
        private$pack_int32_le(self$limit)
      )
    }
  ),
  private = list(
    # little-endian bytes for 0x395f69da -> b'\xda i _ 9' => as.raw(c(0xda,0x69,0x5f,0x39))
    constructor_id = as.raw(c(0xda, 0x69, 0x5f, 0x39)),
    pack_int32_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(x), con, size = 4L, endian = "little")
      rawConnectionValue(con)
    },
    pack_int64_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    },
    serialize_bytes = function(b) {
      if (is.raw(b)) {
        b_raw <- b
      } else if (is.character(b)) {
        b_raw <- charToRaw(b)
      } else if (is.numeric(b) || is.integer(b)) {
        b_raw <- as.raw(as.integer(b) %% 256)
      } else {
        stop("file_token must be raw, integer or character")
      }

      len <- length(b_raw)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(len), con, size = 4L, endian = "little")
      if (len > 0) writeBin(b_raw, con, size = 1L)
      pad <- (4 - (len %% 4)) %% 4
      if (pad > 0) writeBin(rep(as.raw(0x00), pad), con, size = 1L)
      rawConnectionValue(con)
    }
  )
)

# class-level from_reader
#' Read GetCdnFileRequest from a reader
#' @param reader an object providing tgread_bytes(), read_long(), read_int()
#' @return GetCdnFileRequest
GetCdnFileRequest$set("public", "from_reader", function(reader) {
  file_token_val <- reader$tgread_bytes()
  offset_val <- reader$read_long()
  limit_val <- reader$read_int()
  GetCdnFileRequest$new(file_token = file_token_val, offset = offset_val, limit = limit_val)
})


#' GetCdnFileHashesRequest R6 class
#'
#' Represents the TL request upload.GetCdnFileHashesRequest.
#' @field file_token raw|integer|character token bytes
#' @field offset numeric 64-bit offset
#' @export
GetCdnFileHashesRequest <- R6::R6Class(
  "GetCdnFileHashesRequest",
  public = list(
    file_token = NULL,
    offset = NULL,

    #' @description Initialize a GetCdnFileHashesRequest
    #' @param file_token raw|integer|character
    #' @param offset numeric (64-bit)
    initialize = function(file_token, offset) {
      self$file_token <- file_token
      self$offset <- offset
      invisible(self)
    },

    #' @description Convert to list (dictionary-like)
    #' @return list
    to_list = function() {
      list(
        `_` = "GetCdnFileHashesRequest",
        file_token = self$file_token,
        offset = self$offset
      )
    },

    #' @description Serialize to raw vector
    #' @return raw
    to_bytes = function() {
      c(
        private$constructor_id,
        private$serialize_bytes(self$file_token),
        private$pack_int64_le(self$offset)
      )
    }
  ),
  private = list(
    # little-endian bytes for 0x91dc3f31 -> b'1?\xdc\x91'
    constructor_id = as.raw(c(0x31, 0x3f, 0xdc, 0x91)),
    pack_int64_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    },
    serialize_bytes = function(b) {
      if (is.raw(b)) {
        b_raw <- b
      } else if (is.character(b)) {
        b_raw <- charToRaw(b)
      } else if (is.numeric(b) || is.integer(b)) {
        b_raw <- as.raw(as.integer(b) %% 256)
      } else {
        stop("file_token must be raw, integer or character")
      }

      len <- length(b_raw)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(len), con, size = 4L, endian = "little")
      if (len > 0) writeBin(b_raw, con, size = 1L)
      pad <- (4 - (len %% 4)) %% 4
      if (pad > 0) writeBin(rep(as.raw(0x00), pad), con, size = 1L)
      rawConnectionValue(con)
    }
  )
)

# class-level from_reader
#' Read GetCdnFileHashesRequest from a reader
#' @param reader an object providing tgread_bytes() and read_long()
#' @return GetCdnFileHashesRequest
GetCdnFileHashesRequest$set("public", "from_reader", function(reader) {
  file_token_val <- reader$tgread_bytes()
  offset_val <- reader$read_long()
  GetCdnFileHashesRequest$new(file_token = file_token_val, offset = offset_val)
})


#' GetFileRequest R6 class
#'
#' Represents the TL request upload.GetFileRequest.
#' @field location TLObject-like (input file location)
#' @field offset numeric 64-bit offset
#' @field limit integer
#' @field precise logical|null
#' @field cdn_supported logical|null
#' @export
GetFileRequest <- R6::R6Class(
  "GetFileRequest",
  public = list(
    location = NULL,
    offset = NULL,
    limit = NULL,
    precise = NULL,
    cdn_supported = NULL,

    #' @description Initialize a GetFileRequest
    #' @param location TLObject-like
    #' @param offset numeric (64-bit)
    #' @param limit integer
    #' @param precise logical or NULL
    #' @param cdn_supported logical or NULL
    initialize = function(location, offset, limit, precise = NULL, cdn_supported = NULL) {
      self$location <- location
      self$offset <- offset
      self$limit <- as.integer(limit)
      self$precise <- if (is.null(precise)) NULL else as.logical(precise)
      self$cdn_supported <- if (is.null(cdn_supported)) NULL else as.logical(cdn_supported)
      invisible(self)
    },

    #' @description Convert to list (dictionary-like)
    #' @return list
    to_list = function() {
      list(
        `_` = "GetFileRequest",
        location = if (inherits(self$location, "R6")) self$location$to_list() else self$location,
        offset = self$offset,
        limit = self$limit,
        precise = self$precise,
        cdn_supported = self$cdn_supported
      )
    },

    #' @description Serialize to raw vector
    #' @return raw
    to_bytes = function() {
      flags <- 0L
      if (!is.null(self$precise) && isTRUE(self$precise)) flags <- bitwOr(flags, 1L)
      if (!is.null(self$cdn_supported) && isTRUE(self$cdn_supported)) flags <- bitwOr(flags, 2L)

      c(
        private$constructor_id,
        private$pack_int32_le(flags),
        if (inherits(self$location, "R6")) self$location$to_bytes() else stop("location must be an R6 TLObject-like with to_bytes()"),
        private$pack_int64_le(self$offset),
        private$pack_int32_le(self$limit)
      )
    }
  ),
  private = list(
    # little-endian bytes for 0xbe5335be -> b'\xbe5S\xbe'
    constructor_id = as.raw(c(0xbe, 0x35, 0x53, 0xbe)),
    pack_int32_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(x), con, size = 4L, endian = "little")
      rawConnectionValue(con)
    },
    pack_int64_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    }
  )
)

# class-level from_reader
#' Read GetFileRequest from a reader
#' @param reader an object providing read_int(), tgread_object(), read_long(), read_int()
#' @return GetFileRequest
GetFileRequest$set("public", "from_reader", function(reader) {
  flags_val <- reader$read_int()
  precise_val <- bitwAnd(flags_val, 1L) != 0L
  cdn_supported_val <- bitwAnd(flags_val, 2L) != 0L
  location_val <- reader$tgread_object()
  offset_val <- reader$read_long()
  limit_val <- reader$read_int()
  GetFileRequest$new(location = location_val, offset = offset_val, limit = limit_val, precise = precise_val, cdn_supported = cdn_supported_val)
})


#' GetFileHashesRequest R6 class
#'
#' Represents the TL request upload.GetFileHashesRequest.
#' @field location TLObject-like object (input file location)
#' @field offset numeric 64-bit offset
#' @export
GetFileHashesRequest <- R6::R6Class(
  "GetFileHashesRequest",
  public = list(
    location = NULL,
    offset = NULL,

    #' @description Initialize a GetFileHashesRequest
    #' @param location TLObject-like
    #' @param offset numeric (64-bit)
    initialize = function(location, offset) {
      self$location <- location
      self$offset <- offset
      invisible(self)
    },

    #' @description Convert to list (dictionary-like)
    #' @return list
    to_list = function() {
      list(
        `_` = "GetFileHashesRequest",
        location = if (inherits(self$location, "R6")) self$location$to_list() else self$location,
        offset = self$offset
      )
    },

    #' @description Serialize to raw vector
    #' @return raw
    to_bytes = function() {
      c(
        private$constructor_id,
        # nested object serialization: assume location has to_bytes()
        if (inherits(self$location, "R6")) self$location$to_bytes() else stop("location must be an R6 TLObject-like with to_bytes()"),
        private$pack_int64_le(self$offset)
      )
    }
  ),
  private = list(
    # little-endian bytes for 0x9156982a -> b'*\x98V\x91'
    constructor_id = as.raw(c(0x2a, 0x98, 0x56, 0x91)),
    pack_int32_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(x), con, size = 4L, endian = "little")
      rawConnectionValue(con)
    },
    pack_int64_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    },
    serialize_bytes = function(b) {
      if (is.raw(b)) {
        b_raw <- b
      } else if (is.character(b)) {
        b_raw <- charToRaw(b)
      } else if (is.numeric(b) || is.integer(b)) {
        b_raw <- as.raw(as.integer(b) %% 256)
      } else {
        stop("bytes must be raw, integer or character")
      }

      len <- length(b_raw)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(len), con, size = 4L, endian = "little")
      if (len > 0) writeBin(b_raw, con, size = 1L)
      pad <- (4 - (len %% 4)) %% 4
      if (pad > 0) writeBin(rep(as.raw(0x00), pad), con, size = 1L)
      rawConnectionValue(con)
    }
  )
)

# class-level from_reader
#' Read GetFileHashesRequest from a reader
#' @param reader an object providing read_long() and tgread_object()
#' @return GetFileHashesRequest
GetFileHashesRequest$set("public", "from_reader", function(reader) {
  location_val <- reader$tgread_object()
  offset_val <- reader$read_long()
  GetFileHashesRequest$new(location = location_val, offset = offset_val)
})



#' GetWebFileRequest R6 class
#'
#' Represents the TL request upload.GetWebFileRequest.
#'
#' Fields:
#' @field location TLObject-like (input web file location)
#' @field offset integer
#' @field limit integer
#' @export
GetWebFileRequest <- R6::R6Class(
  "GetWebFileRequest",
  public = list(
    location = NULL,
    offset = NULL,
    limit = NULL,

    #' @description Initialize a GetWebFileRequest
    #' @param location TLObject-like
    #' @param offset integer
    #' @param limit integer
    initialize = function(location, offset, limit) {
      self$location <- location
      self$offset <- as.integer(offset)
      self$limit <- as.integer(limit)
      invisible(self)
    },

    #' @description Convert to list (dictionary-like)
    #' @return list
    to_list = function() {
      list(
        `_` = "GetWebFileRequest",
        location = if (inherits(self$location, "R6")) self$location$to_list() else self$location,
        offset = self$offset,
        limit = self$limit
      )
    },

    #' @description Serialize to raw vector
    #' @return raw
    to_bytes = function() {
      c(
        private$constructor_id,
        if (inherits(self$location, "R6")) self$location$to_bytes() else stop("location must be an R6 TLObject-like with to_bytes()"),
        private$pack_int32_le(self$offset),
        private$pack_int32_le(self$limit)
      )
    }
  ),
  private = list(
    # little-endian bytes for 0x24e6818d -> b'\x8d\x81\xe6$'
    constructor_id = as.raw(c(0x8d, 0x81, 0xe6, 0x24)),
    pack_int32_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(x), con, size = 4L, endian = "little")
      rawConnectionValue(con)
    },
    pack_int64_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    },
    serialize_bytes = function(b) {
      if (is.raw(b)) {
        b_raw <- b
      } else if (is.character(b)) {
        b_raw <- charToRaw(b)
      } else if (is.numeric(b) || is.integer(b)) {
        b_raw <- as.raw(as.integer(b) %% 256)
      } else {
        stop("bytes must be raw, integer or character")
      }

      len <- length(b_raw)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(len), con, size = 4L, endian = "little")
      if (len > 0) writeBin(b_raw, con, size = 1L)
      pad <- (4 - (len %% 4)) %% 4
      if (pad > 0) writeBin(rep(as.raw(0x00), pad), con, size = 1L)
      rawConnectionValue(con)
    }
  )
)

# class-level from_reader
#' Read GetWebFileRequest from a reader
#' @param reader an object providing tgread_object(), read_int()
#' @return GetWebFileRequest
GetWebFileRequest$set("public", "from_reader", function(reader) {
  location_val <- reader$tgread_object()
  offset_val <- reader$read_int()
  limit_val <- reader$read_int()
  GetWebFileRequest$new(location = location_val, offset = offset_val, limit = limit_val)
})



#' ReuploadCdnFileRequest R6 class
#'
#' Represents the TL request upload.ReuploadCdnFileRequest.
#' @field file_token raw|integer|character
#' @field request_token raw|integer|character
#' @export
ReuploadCdnFileRequest <- R6::R6Class(
  "ReuploadCdnFileRequest",
  public = list(
    file_token = NULL,
    request_token = NULL,

    #' @description Initialize a ReuploadCdnFileRequest
    #' @param file_token raw|integer|character
    #' @param request_token raw|integer|character
    initialize = function(file_token, request_token) {
      self$file_token <- file_token
      self$request_token <- request_token
      invisible(self)
    },

    #' @description Convert to list (dictionary-like)
    #' @return list
    to_list = function() {
      list(
        `_` = "ReuploadCdnFileRequest",
        file_token = self$file_token,
        request_token = self$request_token
      )
    },

    #' @description Serialize to raw vector
    #' @return raw
    to_bytes = function() {
      c(
        private$constructor_id,
        private$serialize_bytes(self$file_token),
        private$serialize_bytes(self$request_token)
      )
    }
  ),
  private = list(
    # little-endian bytes for 0x9b2754a8 -> b"\xa8T'\x9b"
    constructor_id = as.raw(c(0xa8, 0x54, 0x27, 0x9b)),
    pack_int32_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(x), con, size = 4L, endian = "little")
      rawConnectionValue(con)
    },
    pack_int64_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    },
    serialize_bytes = function(b) {
      if (is.raw(b)) {
        b_raw <- b
      } else if (is.character(b)) {
        b_raw <- charToRaw(b)
      } else if (is.numeric(b) || is.integer(b)) {
        b_raw <- as.raw(as.integer(b) %% 256)
      } else {
        stop("bytes must be raw, integer or character")
      }

      len <- length(b_raw)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(len), con, size = 4L, endian = "little")
      if (len > 0) writeBin(b_raw, con, size = 1L)
      pad <- (4 - (len %% 4)) %% 4
      if (pad > 0) writeBin(rep(as.raw(0x00), pad), con, size = 1L)
      rawConnectionValue(con)
    }
  )
)

#' Read ReuploadCdnFileRequest from a reader
#' @param reader an object providing tgread_bytes()
#' @return ReuploadCdnFileRequest
ReuploadCdnFileRequest$set("public", "from_reader", function(reader) {
  file_token_val <- reader$tgread_bytes()
  request_token_val <- reader$tgread_bytes()
  ReuploadCdnFileRequest$new(file_token = file_token_val, request_token = request_token_val)
})


#' SaveBigFilePartRequest R6 class
#'
#' Represents the TL request upload.SaveBigFilePartRequest.
#' @field file_id numeric 64-bit file id (stored as numeric)
#' @field file_part integer part index
#' @field file_total_parts integer total number of parts
#' @field bytes_data raw|integer|character payload bytes
#' @export
SaveBigFilePartRequest <- R6::R6Class(
  "SaveBigFilePartRequest",
  public = list(
    file_id = NULL,
    file_part = NULL,
    file_total_parts = NULL,
    bytes_data = NULL,

    #' @description Initialize a SaveBigFilePartRequest
    #' @param file_id numeric (64-bit)
    #' @param file_part integer
    #' @param file_total_parts integer
    #' @param bytes_data raw|integer|character
    initialize = function(file_id, file_part, file_total_parts, bytes_data) {
      self$file_id <- file_id
      self$file_part <- as.integer(file_part)
      self$file_total_parts <- as.integer(file_total_parts)
      self$bytes_data <- bytes_data
      invisible(self)
    },

    #' @description Convert to list (dictionary-like)
    #' @return list
    to_list = function() {
      list(
        `_` = "SaveBigFilePartRequest",
        file_id = self$file_id,
        file_part = self$file_part,
        file_total_parts = self$file_total_parts,
        bytes = self$bytes_data
      )
    },

    #' @description Serialize to raw vector
    #' @return raw
    to_bytes = function() {
      c(
        private$constructor_id,
        private$pack_int64_le(self$file_id),
        private$pack_int32_le(self$file_part),
        private$pack_int32_le(self$file_total_parts),
        private$serialize_bytes(self$bytes_data)
      )
    }
  ),
  private = list(
    constructor_id = as.raw(c(0x3d, 0x67, 0x7b, 0xde)),
    pack_int32_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(x), con, size = 4L, endian = "little")
      rawConnectionValue(con)
    },
    pack_int64_le = function(x) {
      # write as 8-byte little-endian (may lose precision for very large ints)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    },
    serialize_bytes = function(b) {
      # Accept raw, integer or character. Write 4-byte length (little-endian) + bytes + padding to 4 bytes.
      if (is.raw(b)) {
        b_raw <- b
      } else if (is.character(b)) {
        b_raw <- charToRaw(b)
      } else if (is.numeric(b) || is.integer(b)) {
        b_raw <- as.raw(as.integer(b) %% 256)
      } else {
        stop("bytes_data must be raw, integer or character")
      }

      len <- length(b_raw)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      # length as 4-byte little-endian
      writeBin(as.integer(len), con, size = 4L, endian = "little")
      # write bytes
      writeBin(b_raw, con, size = 1L)
      # pad to 4-byte alignment
      pad <- (4 - (len %% 4)) %% 4
      if (pad > 0) writeBin(rep(as.raw(0x00), pad), con, size = 1L)
      rawConnectionValue(con)
    }
  )
)

# Add a class-level from_reader method (returns new instance)
#' Read SaveBigFilePartRequest from a reader
#' @param reader an object providing read_long(), read_int() and tgread_bytes()
#' @return SaveBigFilePartRequest
SaveBigFilePartRequest$set("public", "from_reader", function(reader) {
  file_id_val <- reader$read_long()
  file_part_val <- reader$read_int()
  file_total_parts_val <- reader$read_int()
  bytes_val <- reader$tgread_bytes()
  SaveBigFilePartRequest$new(
    file_id = file_id_val,
    file_part = file_part_val,
    file_total_parts = file_total_parts_val,
    bytes_data = bytes_val
  )
})



#' @title SaveFilePartRequest R6 class
#' @description R6 representation of the Telegram TL request upload.SaveFilePartRequest.
#'   Saves a single (non-big) part of an uploaded file to Telegram's servers.
#'   Use this for files below the "big file" threshold. Each call uploads one
#'   sequential part identified by its index.
#' @field file_id numeric (64-bit) Unique file identifier (stable per upload session).
#' @field file_part integer Zero-based index of this file part.
#' @field bytes_data raw|integer|character The binary payload for this part.
#'   Accepts: raw vector, integer/ numeric vector (converted mod 256), or character
#'   (converted with charToRaw).
#' @export
SaveFilePartRequest <- R6::R6Class(
  "SaveFilePartRequest",
  public = list(
    file_id = NULL,
    file_part = NULL,
    bytes_data = NULL,

    #' @description Initialize a new SaveFilePartRequest instance.
    #' @param file_id numeric (64-bit) Unique file identifier.
    #' @param file_part integer Zero-based index of this part.
    #' @param bytes_data raw|integer|character Payload bytes for this part.
    #' @return SaveFilePartRequest (invisibly) for chaining.
    initialize = function(file_id, file_part, bytes_data) {
      self$file_id <- file_id
      self$file_part <- as.integer(file_part)
      self$bytes_data <- bytes_data
      invisible(self)
    },

    #' @description Convert the request to a plain list (for inspection or JSON).
    #' @return list A named list with class tag and fields.
    to_list = function() {
      list(
        `_` = "SaveFilePartRequest",
        file_id = self$file_id,
        file_part = self$file_part,
        bytes = self$bytes_data
      )
    },

    #' @description Serialize the request into TL-compliant raw bytes.
    #'   Layout: constructor_id | file_id(int64) | file_part(int32) | bytes (length-prefixed, padded).
    #' @return raw Serialized byte vector.
    to_bytes = function() {
      c(
        private$constructor_id,
        private$pack_int64_le(self$file_id),
        private$pack_int32_le(self$file_part),
        private$serialize_bytes(self$bytes_data)
      )
    }
  ),
  private = list(
    constructor_id = as.raw(c(0x21, 0xa6, 0x04, 0xb3)),
    pack_int32_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(x), con, size = 4L, endian = "little")
      rawConnectionValue(con)
    },
    pack_int64_le = function(x) {
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.numeric(x), con, size = 8L, endian = "little")
      rawConnectionValue(con)
    },

    #' @description Internal helper: serialize arbitrary byte-like input with
    #'   4-byte little-endian length and 0-padding to 4-byte boundary.
    #' @param b raw|integer|numeric|character Data to serialize.
    #' @return raw Serialized bytes with length prefix and padding.
    serialize_bytes = function(b) {
      if (is.raw(b)) {
        b_raw <- b
      } else if (is.character(b)) {
        b_raw <- charToRaw(b)
      } else if (is.numeric(b) || is.integer(b)) {
        b_raw <- as.raw(as.integer(b) %% 256)
      } else {
        stop("bytes_data must be raw, integer or character")
      }

      len <- length(b_raw)
      con <- rawConnection(raw(), "wb")
      on.exit(close(con))
      writeBin(as.integer(len), con, size = 4L, endian = "little")
      writeBin(b_raw, con, size = 1L)
      pad <- (4 - (len %% 4)) %% 4
      if (pad > 0) writeBin(rep(as.raw(0x00), pad), con, size = 1L)
      rawConnectionValue(con)
    }
  )
)

# class-level from_reader
#' Read SaveFilePartRequest from a reader
#' @param reader an object providing read_long(), read_int() and tgread_bytes()
#' @return SaveFilePartRequest
SaveFilePartRequest$set("public", "from_reader", function(reader) {
  file_id_val <- reader$read_long()
  file_part_val <- reader$read_int()
  bytes_val <- reader$tgread_bytes()
  SaveFilePartRequest$new(
    file_id = file_id_val,
    file_part = file_part_val,
    bytes_data = bytes_val
  )
})
