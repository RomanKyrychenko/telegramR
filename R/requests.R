#' DestroyAuthKeyRequest
#'
#' R6 class representing a request to destroy the authentication key.
#' Contains methods for serialization to list and bytes.
DestroyAuthKeyRequest <- R6::R6Class(
  "DestroyAuthKeyRequest",
  public = list(
    #' @field CONSTRUCTOR_ID Constructor ID for the request
    CONSTRUCTOR_ID = 0xd1435160,
    #' @field SUBCLASS_OF_ID  Subclass ID for the request
    SUBCLASS_OF_ID = 0x8291e68e,

    #' Convert to list representation
    #' @return A list representation of the DestroyAuthKeyRequest
    to_list = function() {
      list(
        "_" = "DestroyAuthKeyRequest"
      )
    },

    #' Serialize to raw bytes
    #' @return A raw vector representing the serialized DestroyAuthKeyRequest
    to_bytes = function() {
      as.raw(c(0x60, 0x51, 0x43, 0xd1))
    }
  ),
  class = FALSE
)

#' Create DestroyAuthKeyRequest from a reader
#'
#' @param reader Reader object (unused)
#' @return Instance of DestroyAuthKeyRequest
DestroyAuthKeyRequest_from_reader <- function(reader) {
  DestroyAuthKeyRequest$new()
}

#' DestroySessionRequest
#'
#' R6 class representing a request to destroy a session.
#' Contains methods for serialization to list and bytes.
DestroySessionRequest <- R6::R6Class(
  "DestroySessionRequest",
  public = list(
    #' @field CONSTRUCTOR_ID Constructor ID for the request
    CONSTRUCTOR_ID = 0xe7512126,
    #' @field SUBCLASS_OF_ID Subclass ID for the request
    SUBCLASS_OF_ID = 0xaf0ce7bd,
    #' @field session_id Session ID to be destroyed
    session_id = NULL,

    #' Initialize the DestroySessionRequest
    #'
    #' @param session_id The ID of the session to destroy
    initialize = function(session_id) {
      self$session_id <- session_id
    },

    #' Convert to list representation
    #'
    #' @return A list representation of the DestroySessionRequest
    to_list = function() {
      list(
        "_" = "DestroySessionRequest",
        session_id = self$session_id
      )
    },

    #' Serialize to raw bytes
    #'
    #' @return A raw vector representing the serialized DestroySessionRequest
    to_bytes = function() {
      c(
        as.raw(c(0x26, 0x21, 0x51, 0xe7)),
        writeBin(bit64::as.integer64(self$session_id), raw(), size = 8, endian = "little")
      )
    }
  ),
  class = FALSE
)

#' Create DestroySessionRequest from a reader
#'
#' @param reader Reader object
#' @return Instance of DestroySessionRequest
DestroySessionRequest_from_reader <- function(reader) {
  session_id <- reader$read_long()
  DestroySessionRequest$new(session_id = session_id)
}

#' GetFutureSaltsRequest
#'
#' R6 class representing a request to get future salts.
#' Contains methods for serialization to list and bytes.
GetFutureSaltsRequest <- R6::R6Class(
  "GetFutureSaltsRequest",
  public = list(
    #' @field CONSTRUCTOR_ID Constructor ID for the request
    CONSTRUCTOR_ID = 0xb921bd04,
    #' @field SUBCLASS_OF_ID  Subclass ID for the request
    SUBCLASS_OF_ID = 0x1090f517,
    #' @field num Number of future salts to request
    num = NULL,

    #' Initialize the GetFutureSaltsRequest
    #' @param num The number of future salts to request
    initialize = function(num) {
      self$num <- num
    },

    #' Convert to list representation
    #' @return A list representation of the GetFutureSaltsRequest
    to_list = function() {
      list(
        "_" = "GetFutureSaltsRequest",
        num = self$num
      )
    },

    #' Serialize to raw bytes
    #' @return A raw vector representing the serialized GetFutureSaltsRequest
    to_bytes = function() {
      c(
        as.raw(c(0x04, 0xbd, 0x21, 0xb9)),
        writeBin(as.integer(self$num), raw(), size = 4, endian = "little")
      )
    }
  ),
  class = FALSE
)

#' Create GetFutureSaltsRequest from a reader
#'
#' @param reader Reader object
#' Subclass ID for the request
#' @return Instance of GetFutureSaltsRequest
GetFutureSaltsRequest_from_reader <- function(reader) {
  num <- reader$read_int()
  GetFutureSaltsRequest$new(num = num)
}


#' InitConnectionRequest R6 class
#'
#' Represents a request to initialize a connection with the server.
#' This class holds connection metadata and the inner `query` object to be
#' serialized and sent. Optional `proxy` and `params` fields are included
#' based on flags during serialization.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field api_id Integer API identifier.
#' @field device_model Character device model string.
#' @field system_version Character operating system version string.
#' @field app_version Character application version string.
#' @field system_lang_code Character system language code.
#' @field lang_pack Character language pack.
#' @field lang_code Character user language code.
#' @field query Object representing the nested query; must implement `to_list` and `to_bytes`.
#' @field proxy Optional proxy object; must implement `to_list` and `to_bytes` when present.
#' @field params Optional params object; must implement `to_list` and `to_bytes` when present.
InitConnectionRequest <- R6::R6Class(
  "InitConnectionRequest",
  public = list(
    CONSTRUCTOR_ID = 0xc1cd5ea9,
    SUBCLASS_OF_ID = 0xb7b2364b,
    api_id = NULL,
    device_model = NULL,
    system_version = NULL,
    app_version = NULL,
    system_lang_code = NULL,
    lang_pack = NULL,
    lang_code = NULL,
    query = NULL,
    proxy = NULL,
    params = NULL,

    #' Initialize a new InitConnectionRequest
    #'
    #' Creates a new instance and stores all provided metadata and nested objects.
    #' `proxy` and `params` are optional and default to `NULL`.
    #'
    #' @param api_id Integer API identifier.
    #' @param device_model Character device model string.
    #' @param system_version Character operating system version string.
    #' @param app_version Character application version string.
    #' @param system_lang_code Character system language code.
    #' @param lang_pack Character language pack.
    #' @param lang_code Character user language code.
    #' @param query Nested query object that responds to `to_bytes`.
    #' @param proxy Optional proxy object.
    #' @param params Optional params object.
    initialize = function(api_id, device_model, system_version, app_version, system_lang_code, lang_pack, lang_code, query, proxy = NULL, params = NULL) {
      self$api_id <- api_id
      self$device_model <- device_model
      self$system_version <- system_version
      self$app_version <- app_version
      self$system_lang_code <- system_lang_code
      self$lang_pack <- lang_pack
      self$lang_code <- lang_code
      self$query <- query
      self$proxy <- proxy
      self$params <- params
    },

    #' Convert the request to a list
    #'
    #' Produces a plain R list representation suitable for JSON or debugging.
    #' Nested objects will be converted via their `to_list` method if available.
    #'
    #' @return List with keys matching the request structure.
    to_list = function() {
      list(
        "_" = "InitConnectionRequest",
        api_id = self$api_id,
        device_model = self$device_model,
        system_version = self$system_version,
        app_version = self$app_version,
        system_lang_code = self$system_lang_code,
        lang_pack = self$lang_pack,
        lang_code = self$lang_code,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query,
        proxy = if (!is.null(self$proxy) && "to_list" %in% names(self$proxy)) self$proxy$to_list() else self$proxy,
        params = if (!is.null(self$params) && "to_list" %in% names(self$params)) self$params$to_list() else self$params
      )
    },

    #' Serialize the request to raw bytes
    #'
    #' Produces a raw vector following the expected binary format:
    #' - constructor id (4 bytes)
    #' - flags (4 bytes) indicating presence of `proxy` and `params`
    #' - `api_id` (4 bytes)
    #' - serialized strings for device and locale metadata
    #' - optional `proxy` and `params` bytes
    #' - the nested `query` bytes
    #'
    #' NOTE: This relies on `serialize_bytes()` for string fields and the
    #' nested objects' `to_bytes()` methods to produce raw vectors.
    #'
    #' @return Raw vector with serialized request bytes.
    to_bytes = function() {
      # You need to implement serialize_bytes and ._bytes for proxy/query/params objects
      raw_vec <- c(
        as.raw(c(0xa9, 0x5e, 0xcd, 0xc1)),
        writeBin(
          as.integer((if (is.null(self$proxy) || identical(self$proxy, FALSE)) 0 else 1) |
            (if (is.null(self$params) || identical(self$params, FALSE)) 0 else 2)),
          raw(),
          size = 4, endian = "little"
        ),
        writeBin(as.integer(self$api_id), raw(), size = 4, endian = "little"),
        serialize_bytes(self$device_model),
        serialize_bytes(self$system_version),
        serialize_bytes(self$app_version),
        serialize_bytes(self$system_lang_code),
        serialize_bytes(self$lang_pack),
        serialize_bytes(self$lang_code),
        if (is.null(self$proxy) || identical(self$proxy, FALSE)) raw() else self$proxy$to_bytes(),
        if (is.null(self$params) || identical(self$params, FALSE)) raw() else self$params$to_bytes(),
        self$query$to_bytes()
      )
      as.raw(unlist(raw_vec))
    }
  ),
  class = FALSE
)

#' Create InitConnectionRequest from a binary reader
#'
#' Read and parse an InitConnectionRequest from a `reader` that provides
#' binary-reading helpers. The function reads a 32-bit `flags` field first,
#' followed by `api_id` and a sequence of UTF-8 strings:
#' `device_model`, `system_version`, `app_version`, `system_lang_code`,
#' `lang_pack`, and `lang_code`.
#'
#' Optional fields are controlled by bits in `flags`:
#' - bit 0 (value 1): `proxy` is present and will be read via `tgread_object()`
#' - bit 1 (value 2): `params` is present and will be read via `tgread_object()`
#'
#' The nested `query` object is read last using `tgread_object()`.
#'
#' @param reader Reader object providing:
#'   - `read_int()` to read 32-bit integers,
#'   - `tgread_string()` to read Telegram-style strings,
#'   - `tgread_object()` to read nested Telegram objects.
#' @return An instance of `InitConnectionRequest` populated with values read
#'         from the `reader`.
#' @examples
#' # reader <- Reader$new(source)
#' # req <- InitConnectionRequest_from_reader(reader)
InitConnectionRequest_from_reader <- function(reader) {
  flags <- reader$read_int()
  api_id <- reader$read_int()
  device_model <- reader$tgread_string()
  system_version <- reader$tgread_string()
  app_version <- reader$tgread_string()
  system_lang_code <- reader$tgread_string()
  lang_pack <- reader$tgread_string()
  lang_code <- reader$tgread_string()
  proxy <- if (bitwAnd(flags, 1) != 0) reader$tgread_object() else NULL
  params <- if (bitwAnd(flags, 2) != 0) reader$tgread_object() else NULL
  query <- reader$tgread_object()
  InitConnectionRequest$new(
    api_id = api_id,
    device_model = device_model,
    system_version = system_version,
    app_version = app_version,
    system_lang_code = system_lang_code,
    lang_pack = lang_pack,
    lang_code = lang_code,
    query = query,
    proxy = proxy,
    params = params
  )
}

#' InvokeAfterMsgRequest R6 class
#'
#' Represents a request that will be invoked after a specific message ID.
#' Holds the target message identifier and a nested \code{query} object which
#' will be executed after the message with \code{msg_id}.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field msg_id Integer64 message identifier after which the query will be invoked.
#' @field query Nested query object; must implement \code{to_list} and \code{to_bytes}.
InvokeAfterMsgRequest <- R6::R6Class(
  "InvokeAfterMsgRequest",
  public = list(
    CONSTRUCTOR_ID = 0xcb9f372d,
    SUBCLASS_OF_ID = 0xb7b2364b,
    msg_id = NULL,
    query = NULL,

    #' Initialize a new InvokeAfterMsgRequest
    #'
    #' @param msg_id Integer64 identifier of the message after which the query should run.
    #' @param query Nested query object that responds to \code{to_list} and \code{to_bytes}.
    initialize = function(msg_id, query) {
      self$msg_id <- msg_id
      self$query <- query
    },

    #' Convert to list representation
    #'
    #' Produces a plain R list suitable for JSON or debugging. If the nested
    #' \code{query} responds to \code{to_list}, that representation will be used.
    #'
    #' @return List with keys: \code{"_"}, \code{msg_id}, and \code{query}.
    to_list = function() {
      list(
        "_" = "InvokeAfterMsgRequest",
        msg_id = self$msg_id,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize to raw bytes
    #'
    #' Produces a raw vector containing:
    #' - constructor id (4 bytes little-endian)
    #' - \code{msg_id} as 8-byte little-endian integer
    #' - serialized bytes of the nested \code{query} (via \code{query$to_bytes()})
    #'
    #' @return Raw vector with serialized request bytes.
    to_bytes = function() {
      c(
        as.raw(c(0x2d, 0x37, 0x9f, 0xcb)),
        writeBin(bit64::as.integer64(self$msg_id), raw(), size = 8, endian = "little"),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeAfterMsgRequest from a binary reader
#'
#' Reads a message identifier and a nested object from \code{reader} and
#' constructs an \code{InvokeAfterMsgRequest} instance.
#'
#' @param reader Reader object providing \code{read_long()} and \code{tgread_object()}.
#' @return Instance of \code{InvokeAfterMsgRequest}.
InvokeAfterMsgRequest_from_reader <- function(reader) {
  msg_id <- reader$read_long()
  query <- reader$tgread_object()
  InvokeAfterMsgRequest$new(msg_id = msg_id, query = query)
}


#' InvokeAfterMsgsRequest
#'
#' R6 class representing a request to invoke a nested `query` after a collection
#' of message identifiers (`msg_ids`). The class serializes the list of message
#' ids and appends the serialized nested `query` bytes.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier for the request.
#' @field SUBCLASS_OF_ID Integer subclass identifier for the request.
#' @field msg_ids A list of message identifiers (typically integer64 values).
#' @field query Nested query object; must implement `to_list` and `to_bytes`.
InvokeAfterMsgsRequest <- R6::R6Class(
  "InvokeAfterMsgsRequest",
  public = list(
    CONSTRUCTOR_ID = 0x3dc4b4f0,
    SUBCLASS_OF_ID = 0xb7b2364b,
    msg_ids = NULL,
    query = NULL,

    #' Initialize a new InvokeAfterMsgsRequest
    #'
    #' @param msg_ids A list (or vector) of message identifiers to wait for.
    #' @param query Nested query object that responds to `to_list` and `to_bytes`.
    #' @return A new `InvokeAfterMsgsRequest` instance.
    initialize = function(msg_ids, query) {
      self$msg_ids <- msg_ids
      self$query <- query
    },

    #' Convert to list representation
    #'
    #' Produces a plain R list for debugging or JSON serialization. Ensures
    #' `msg_ids` is represented as an empty list when `NULL`. If `query`
    #' implements `to_list` that representation is used.
    #'
    #' @return List with keys: `_`, `msg_ids`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeAfterMsgsRequest",
        msg_ids = if (is.null(self$msg_ids)) list() else self$msg_ids,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize to raw bytes
    #'
    #' Serializes the request into a raw vector containing:
    #' - constructor id (4 bytes little-endian),
    #' - vector constructor marker (4 bytes) for the list of msg_ids,
    #' - number of `msg_ids` (4 bytes little-endian),
    #' - each `msg_id` as 8-byte little-endian integer,
    #' - followed by the nested `query` bytes.
    #'
    #' @return Raw vector with serialized request bytes.
    to_bytes = function() {
      raw_vec <- c(
        as.raw(c(0xf0, 0xb4, 0xc4, 0x3d)),
        as.raw(c(0x1c, 0xb5, 0xc4, 0x15)),
        writeBin(as.integer(length(self$msg_ids)), raw(), size = 4, endian = "little"),
        as.raw(unlist(lapply(self$msg_ids, function(x) writeBin(bit64::as.integer64(x), raw(), size = 8, endian = "little")))),
        self$query$to_bytes()
      )
      as.raw(unlist(raw_vec))
    }
  ),
  class = FALSE
)

#' Create InvokeAfterMsgsRequest from a binary reader
#'
#' Read and parse an `InvokeAfterMsgsRequest` from a `reader`.
#' The reader is expected to provide a vector constructor marker (ignored),
#' the number of message ids, each message id as a 64-bit integer, and then
#' a nested object for `query`.
#'
#' @param reader Reader object providing:
#'   - `read_int()` to read 32-bit integers,
#'   - `read_long()` to read 64-bit integers,
#'   - `tgread_object()` to read nested Telegram objects.
#' @return Instance of `InvokeAfterMsgsRequest` with `msg_ids` (list of longs) and `query`.
InvokeAfterMsgsRequest_from_reader <- function(reader) {
  reader$read_int()
  msg_ids <- list()
  n <- reader$read_int()
  for (i in seq_len(n)) {
    msg_ids[[i]] <- reader$read_long()
  }
  query <- reader$tgread_object()
  InvokeAfterMsgsRequest$new(msg_ids = msg_ids, query = query)
}


#' InvokeWithApnsSecretRequest
#'
#' R6 class representing a request that wraps a nested `query` and provides
#' Apple Push Notification Service (APNS) secret/nonce metadata. The nested
#' `query` will be serialized after the `nonce` and `secret`.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field nonce Character or raw nonce value.
#' @field secret Character APNS secret value.
#' @field query Nested query object that must implement `to_list` and `to_bytes`.
InvokeWithApnsSecretRequest <- R6::R6Class(
  "InvokeWithApnsSecretRequest",
  public = list(
    CONSTRUCTOR_ID = 0xdae54f8,
    SUBCLASS_OF_ID = 0xb7b2364b,
    nonce = NULL,
    secret = NULL,
    query = NULL,

    #' Initialize a new InvokeWithApnsSecretRequest
    #'
    #' @param nonce Nonce value used for the request (character or raw).
    #' @param secret APNS secret string associated with the request.
    #' @param query Nested query object that responds to `to_list` and `to_bytes`.
    initialize = function(nonce, secret, query) {
      self$nonce <- nonce
      self$secret <- secret
      self$query <- query
    },

    #' Convert the request to a list
    #'
    #' Produces a plain R list representation suitable for debugging or JSON
    #' serialization. If the nested `query` implements `to_list`, its
    #' list representation will be used.
    #'
    #' @return List with keys `_`, `nonce`, `secret`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeWithApnsSecretRequest",
        nonce = self$nonce,
        secret = self$secret,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize the request to raw bytes
    #'
    #' The serialization order is:
    #'  - constructor id (4 bytes, little-endian)
    #'  - serialized `nonce`
    #'  - serialized `secret`
    #'  - serialized nested `query` bytes
    #'
    #' @return Raw vector containing the serialized bytes of the request.
    to_bytes = function() {
      c(
        as.raw(c(0xf8, 0x54, 0xae, 0x0d)),
        serialize_bytes(self$nonce),
        serialize_bytes(self$secret),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeWithApnsSecretRequest from a binary reader
#'
#' Reads `nonce` and `secret` as Telegram-style strings and then reads the
#' nested `query` object using the reader's `tgread_object()` method.
#'
#' @param reader Reader object providing:
#'   - `tgread_string()` to read Telegram-style strings,
#'   - `tgread_object()` to read nested Telegram objects.
#' @return Instance of `InvokeWithApnsSecretRequest`.
#' @examples
#' # reader <- Reader$new(source)
#' # req <- InvokeWithApnsSecretRequest_from_reader(reader)
InvokeWithApnsSecretRequest_from_reader <- function(reader) {
  nonce <- reader$tgread_string()
  secret <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithApnsSecretRequest$new(nonce = nonce, secret = secret, query = query)
}


#' InvokeWithBusinessConnectionRequest
#'
#' R6 class representing a request that wraps a nested `query` with a business
#' connection identifier. The `connection_id` is typically a string used to
#' identify a business connection context; `query` is a nested object that must
#' implement `to_list()` and `to_bytes()`.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier for this request type.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field connection_id Character or raw connection identifier.
#' @field query Nested query object implementing `to_list` and `to_bytes`.
InvokeWithBusinessConnectionRequest <- R6::R6Class(
  "InvokeWithBusinessConnectionRequest",
  public = list(
    CONSTRUCTOR_ID = 0xdd289f8e,
    SUBCLASS_OF_ID = 0xb7b2364b,
    connection_id = NULL,
    query = NULL,

    #' Initialize a new InvokeWithBusinessConnectionRequest
    #'
    #' @param connection_id Connection identifier (character or raw).
    #' @param query Nested query object that responds to `to_list` and `to_bytes`.
    initialize = function(connection_id, query) {
      self$connection_id <- connection_id
      self$query <- query
    },

    #' Convert the request to a list
    #'
    #' Produces a plain R list representation suitable for debugging or JSON
    #' serialization. If the nested `query` implements `to_list()`, that
    #' representation will be used.
    #' @return List with keys `_`, `connection_id`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeWithBusinessConnectionRequest",
        connection_id = self$connection_id,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize the request to raw bytes
    #'
    #' The serialization order is:
    #'  - constructor id (4 bytes, little-endian)
    #'  - serialized `connection_id` (via `serialize_bytes()`)
    #'  - serialized nested `query` bytes (via `query$to_bytes()`)
    #' @return Raw vector containing the serialized bytes of the request.
    to_bytes = function() {
      c(
        as.raw(c(0xdd, 0x28, 0x9f, 0x8e)),
        serialize_bytes(self$connection_id),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeWithBusinessConnectionRequest from a reader
#'
#' Reads a `connection_id` (Telegram-style string) and a nested `query`
#' object from the provided `reader`, then constructs an
#' `InvokeWithBusinessConnectionRequest` instance.
#'
#' @param reader Reader object providing:
#'   - `tgread_string()` to read Telegram-style strings,
#'   - `tgread_object()` to read nested Telegram objects.
#' @return Instance of `InvokeWithBusinessConnectionRequest`.
InvokeWithBusinessConnectionRequest_from_reader <- function(reader) {
  connection_id <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithBusinessConnectionRequest$new(connection_id = connection_id, query = query)
}


#' InvokeWithGooglePlayIntegrityRequest R6 class
#'
#' R6 class representing a request that wraps a nested `query` with Google
#' Play Integrity metadata. The class stores a `nonce` and `token` and
#' delegates serialization of the nested `query` to its `to_bytes()` method.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field nonce Character or raw nonce value.
#' @field token Character token value.
#' @field query Nested query object implementing `to_list` and `to_bytes`.
InvokeWithGooglePlayIntegrityRequest <- R6::R6Class(
  "InvokeWithGooglePlayIntegrityRequest",
  public = list(
    CONSTRUCTOR_ID = 0x1df92984,
    SUBCLASS_OF_ID = 0xb7b2364b,
    nonce = NULL,
    token = NULL,
    query = NULL,

    #' Initialize a new InvokeWithGooglePlayIntegrityRequest
    #'
    #' @param nonce Nonce value used for the request (character or raw).
    #' @param token Google Play Integrity token string.
    #' @param query Nested query object that responds to `to_list` and `to_bytes`.
    initialize = function(nonce, token, query) {
      self$nonce <- nonce
      self$token <- token
      self$query <- query
    },

    #' Convert the request to a list
    #'
    #' Produces a plain R list suitable for debugging or JSON serialization.
    #' If `query` implements `to_list`, that representation will be used.
    #'
    #' @return List with keys: `_`, `nonce`, `token`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeWithGooglePlayIntegrityRequest",
        nonce = self$nonce,
        token = self$token,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize the request to raw bytes
    #'
    #' Serialization order:
    #'  - constructor id (4 bytes, little-endian)
    #'  - serialized `nonce`
    #'  - serialized `token`
    #'  - serialized nested `query` bytes
    #'
    #' @return Raw vector containing the serialized bytes of the request.
    to_bytes = function() {
      c(
        as.raw(c(0x84, 0x29, 0xf9, 0x1d)),
        serialize_bytes(self$nonce),
        serialize_bytes(self$token),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeWithGooglePlayIntegrityRequest from a reader
#'
#' Reads `nonce` and `token` as Telegram-style strings and then reads the
#' nested `query` object using the reader's `tgread_object()` method.
#'
#' @param reader Reader object providing:
#'   - `tgread_string()` to read Telegram-style strings,
#'   - `tgread_object()` to read nested Telegram objects.
#' @return Instance of `InvokeWithGooglePlayIntegrityRequest`.
InvokeWithGooglePlayIntegrityRequest_from_reader <- function(reader) {
  nonce <- reader$tgread_string()
  token <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithGooglePlayIntegrityRequest$new(nonce = nonce, token = token, query = query)
}


#' InvokeWithLayerRequest R6 class
#'
#' R6 class representing a request that wraps a nested `query` and specifies
#' a protocol `layer`. The `layer` is an integer representing the API layer
#' to invoke the nested `query` under. The nested `query` must implement
#' `to_list()` and `to_bytes()`.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field layer Integer API layer.
#' @field query Nested query object implementing `to_list` and `to_bytes`.
InvokeWithLayerRequest <- R6::R6Class(
  "InvokeWithLayerRequest",
  public = list(
    CONSTRUCTOR_ID = 0xda9b0d0d,
    SUBCLASS_OF_ID = 0xb7b2364b,
    layer = NULL,
    query = NULL,

    #' Initialize a new InvokeWithLayerRequest
    #'
    #' @param layer Integer API layer to use for the nested query.
    #' @param query Nested query object that responds to `to_list` and `to_bytes`.
    initialize = function(layer, query) {
      self$layer <- layer
      self$query <- query
    },

    #' Convert to list representation
    #'
    #' Produces a plain R list suitable for debugging or JSON serialization.
    #' If the nested `query` implements `to_list`, that representation will be used.
    #'
    #' @return List with keys: `_`, `layer`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeWithLayerRequest",
        layer = self$layer,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize to raw bytes
    #'
    #' Serialization order:
    #'  - constructor id (4 bytes, little-endian)
    #'  - `layer` as 4-byte little-endian integer
    #'  - serialized nested `query` bytes (via `query$to_bytes()`)
    #'
    #' @return Raw vector containing the serialized bytes of the request.
    to_bytes = function() {
      raw_vec <- c(
        as.raw(c(0x0d, 0x0d, 0x9b, 0xda)),
        writeBin(as.integer(self$layer), raw(), size = 4, endian = "little"),
        self$query$to_bytes()
      )
      as.raw(unlist(raw_vec))
    }
  ),
  class = FALSE
)

#' Create InvokeWithLayerRequest from a binary reader
#'
#' Reads an integer `layer` and a nested `query` object from `reader` and
#' constructs an `InvokeWithLayerRequest` instance.
#'
#' @param reader Reader object providing `read_int()` and `tgread_object()`.
#' @return Instance of `InvokeWithLayerRequest`.
InvokeWithLayerRequest_from_reader <- function(reader) {
  layer <- reader$read_int()
  query <- reader$tgread_object()
  InvokeWithLayerRequest$new(layer = layer, query = query)
}


#' InvokeWithMessagesRangeRequest R6 class
#'
#' R6 class representing a request that wraps a nested `query` and applies it
#' to a provided `range` of messages. The `range` is expected to be an object
#' that implements `to_list()` and `to_bytes()` (e.g. a message range descriptor),
#' and `query` is a nested Telegram-like object that also implements
#' `to_list()` and `to_bytes()`.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier for the request.
#' @field SUBCLASS_OF_ID Integer subclass identifier for the request.
#' @field range Object describing the range of messages (must implement `to_list`/`to_bytes`).
#' @field query Nested query object (must implement `to_list`/`to_bytes`).
InvokeWithMessagesRangeRequest <- R6::R6Class(
  "InvokeWithMessagesRangeRequest",
  public = list(
    CONSTRUCTOR_ID = 0x365275f2,
    SUBCLASS_OF_ID = 0xb7b2364b,
    range = NULL,
    query = NULL,

    #' Initialize a new InvokeWithMessagesRangeRequest
    #'
    #' @param range Object describing the messages range (expected to implement `to_list` and `to_bytes`).
    #' @param query Nested query object that responds to `to_list` and `to_bytes`.
    initialize = function(range, query) {
      self$range <- range
      self$query <- query
    },

    #' Convert to list representation
    #'
    #' Produces a plain R list suitable for debugging or JSON serialization.
    #' If `range` or `query` implement `to_list`, their representations will be used.
    #'
    #' @return List with keys: `_`, `range`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeWithMessagesRangeRequest",
        range = if (!is.null(self$range) && "to_list" %in% names(self$range)) self$range$to_list() else self$range,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize to raw bytes
    #'
    #' Produces a raw vector containing:
    #' - constructor id (4 bytes, little-endian)
    #' - serialized `range` bytes (via `range$to_bytes()`)
    #' - serialized nested `query` bytes (via `query$to_bytes()`)
    #'
    #' @return Raw vector with serialized request bytes.
    to_bytes = function() {
      c(
        as.raw(c(0xf2, 0x75, 0x52, 0x36)),
        self$range$to_bytes(),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeWithMessagesRangeRequest from a binary reader
#'
#' Reads two nested Telegram-style objects from the provided `reader`:
#' first the `range` object, then the `query` object. Both are read using
#' the reader's `tgread_object()` method.
#'
#' @param reader Reader object providing `tgread_object()` to read nested objects.
#' @return Instance of `InvokeWithMessagesRangeRequest`.
InvokeWithMessagesRangeRequest_from_reader <- function(reader) {
  range <- reader$tgread_object()
  query <- reader$tgread_object()
  InvokeWithMessagesRangeRequest$new(range = range, query = query)
}


#' InvokeWithReCaptchaRequest R6 class
#'
#' R6 class representing a request that wraps a nested `query` with a ReCaptcha
#' token. The nested `query` will be serialized after the `token`.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field token Character ReCaptcha token string.
#' @field query Nested query object that must implement `to_list` and `to_bytes`.
InvokeWithReCaptchaRequest <- R6::R6Class(
  "InvokeWithReCaptchaRequest",
  public = list(
    CONSTRUCTOR_ID = 0xadbb0f94,
    SUBCLASS_OF_ID = 0xb7b2364b,
    token = NULL,
    query = NULL,

    #' Initialize a new InvokeWithReCaptchaRequest
    #'
    #' @param token ReCaptcha token (character or raw).
    #' @param query Nested query object responding to `to_list` and `to_bytes`.
    initialize = function(token, query) {
      self$token <- token
      self$query <- query
    },

    #' Convert the request to a list
    #'
    #' Produces a plain R list representation suitable for debugging or JSON
    #' serialization. If the nested `query` implements `to_list`, that
    #' representation will be used.
    #'
    #' @return List with keys: `_`, `token`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeWithReCaptchaRequest",
        token = self$token,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize the request to raw bytes
    #'
    #' Serialization order:
    #'  - constructor id (4 bytes, little-endian)
    #'  - serialized `token` (via `serialize_bytes()`)
    #'  - serialized nested `query` bytes (via `query$to_bytes()`)
    #'
    #' @return Raw vector containing the serialized bytes of the request.
    to_bytes = function() {
      c(
        as.raw(c(0x94, 0x0f, 0xbb, 0xad)),
        serialize_bytes(self$token),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeWithReCaptchaRequest from a binary reader
#'
#' Reads a `token` as a Telegram-style string and then reads the nested `query`
#' object using the reader's `tgread_object()` method.
#'
#' @param reader Reader object providing:
#'   - `tgread_string()` to read Telegram-style strings,
#'   - `tgread_object()` to read nested Telegram objects.
#' @return Instance of `InvokeWithReCaptchaRequest`.
InvokeWithReCaptchaRequest_from_reader <- function(reader) {
  token <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithReCaptchaRequest$new(token = token, query = query)
}


#' InvokeWithTakeoutRequest R6 class
#'
#' R6 class representing a request that wraps a nested `query` with a takeout
#' identifier. The `takeout_id` is typically an integer64 identifying a user's
#' takeout/export session; `query` is a nested object that must implement
#' `to_list()` and `to_bytes()`.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier for this request type.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field takeout_id Integer64 takeout identifier.
#' @field query Nested query object implementing `to_list` and `to_bytes`.
#'
#' @return An R6 object of class \code{InvokeWithTakeoutRequest}.
#' @examples
#' # q <- SomeQueryObject$new(...)
#' # req <- InvokeWithTakeoutRequest$new(takeout_id = 1234567890123456789, query = q)
InvokeWithTakeoutRequest <- R6::R6Class(
  "InvokeWithTakeoutRequest",
  public = list(
    CONSTRUCTOR_ID = 0xaca9fd2e,
    SUBCLASS_OF_ID = 0xb7b2364b,
    takeout_id = NULL,
    query = NULL,

    #' Initialize a new InvokeWithTakeoutRequest
    #'
    #' @param takeout_id Integer64 identifier of the takeout session.
    #' @param query Nested query object that responds to `to_list` and `to_bytes`.
    initialize = function(takeout_id, query) {
      self$takeout_id <- takeout_id
      self$query <- query
    },

    #' Convert to list representation
    #'
    #' Produces a plain R list suitable for debugging or JSON serialization.
    #' If the nested `query` implements `to_list()`, that representation will be used.
    #'
    #' @return List with keys: `_`, `takeout_id`, and `query`.
    to_list = function() {
      list(
        "_" = "InvokeWithTakeoutRequest",
        takeout_id = self$takeout_id,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize the request to raw bytes
    #'
    #' Serialization order:
    #'  - constructor id (4 bytes, little-endian)
    #'  - `takeout_id` as 8-byte little-endian integer
    #'  - serialized nested `query` bytes (via `query$to_bytes()`)
    #'
    #' @return Raw vector containing the serialized bytes of the request.
    to_bytes = function() {
      c(
        as.raw(c(0x2e, 0xfd, 0xa9, 0xac)),
        writeBin(bit64::as.integer64(self$takeout_id), raw(), size = 8, endian = "little"),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeWithTakeoutRequest from a binary reader
#'
#' Reads a 64-bit `takeout_id` and a nested `query` object from the provided
#' `reader`, then constructs an \code{InvokeWithTakeoutRequest} instance.
#'
#' @param reader Reader object providing:
#'   - `read_long()` to read 64-bit integers,
#'   - `tgread_object()` to read nested Telegram objects.
#' @return Instance of \code{InvokeWithTakeoutRequest}.
#' @examples
#' # reader <- Reader$new(source)
#' # req <- InvokeWithTakeoutRequest_from_reader(reader)
InvokeWithTakeoutRequest_from_reader <- function(reader) {
  takeout_id <- reader$read_long()
  query <- reader$tgread_object()
  InvokeWithTakeoutRequest$new(takeout_id = takeout_id, query = query)
}


#' InvokeWithoutUpdatesRequest R6 class
#'
#' R6 class representing a request that invokes a nested `query` without producing
#' any updates. The nested `query` object is expected to implement `to_list()`
#' and `to_bytes()` for proper serialization.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier for this request type.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field query Nested query object implementing `to_list` and `to_bytes`.
#' @return An R6 object of class \code{InvokeWithoutUpdatesRequest}.
InvokeWithoutUpdatesRequest <- R6::R6Class(
  "InvokeWithoutUpdatesRequest",
  public = list(
    CONSTRUCTOR_ID = 0xbf9459b7,
    SUBCLASS_OF_ID = 0xb7b2364b,
    query = NULL,

    #' Initialize a new InvokeWithoutUpdatesRequest
    #'
    #' @param query Nested query object that responds to \code{to_list} and \code{to_bytes}.
    initialize = function(query) {
      self$query <- query
    },

    #' Convert the request to a list
    #'
    #' Produces a plain R list suitable for debugging or JSON serialization.
    #' If the nested \code{query} implements \code{to_list()}, that representation
    #' will be used.
    #'
    #' @return A list with keys: \code{"_"} and \code{query}.
    to_list = function() {
      list(
        "_" = "InvokeWithoutUpdatesRequest",
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    #' Serialize the request to raw bytes
    #'
    #' The serialization consists of the constructor id followed by the nested
    #' query's serialized bytes.
    #'
    #' @return Raw vector containing the serialized request bytes.
    to_bytes = function() {
      c(
        as.raw(c(0xb7, 0x59, 0x94, 0xbf)),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

#' Create InvokeWithoutUpdatesRequest from a binary reader
#'
#' Reads a nested Telegram-style object using \code{reader$tgread_object()} and
#' constructs an \code{InvokeWithoutUpdatesRequest}.
#'
#' @param reader Reader object providing \code{tgread_object()}.
#' @return Instance of \code{InvokeWithoutUpdatesRequest}.
InvokeWithoutUpdatesRequest_from_reader <- function(reader) {
  query <- reader$tgread_object()
  InvokeWithoutUpdatesRequest$new(query = query)
}


#' PingRequest R6 class
#'
#' Represents a simple ping request used to check connectivity/latency.
#' Contains a 64-bit \code{ping_id} and methods to serialize to a list or raw bytes.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field ping_id Integer64 ping identifier.
#' @return An R6 object of class \code{PingRequest}.
PingRequest <- R6::R6Class(
  "PingRequest",
  public = list(
    CONSTRUCTOR_ID = 0x7abe77ec,
    SUBCLASS_OF_ID = 0x816aee71,
    ping_id = NULL,

    #' Initialize PingRequest
    #'
    #' @param ping_id Integer64 identifier for the ping.
    initialize = function(ping_id) {
      self$ping_id <- ping_id
    },

    #' Convert to list representation
    #'
    #' Produces a plain R list suitable for debugging or JSON serialization.
    #'
    #' @return A list with keys: \code{"_"} and \code{ping_id}.
    to_list = function() {
      list(
        "_" = "PingRequest",
        ping_id = self$ping_id
      )
    },

    #' Serialize to raw bytes
    #'
    #' Produces a raw vector containing:
    #' - constructor id (4 bytes little-endian)
    #' - \code{ping_id} as 8-byte little-endian integer
    #'
    #' @return Raw vector with serialized request bytes.
    to_bytes = function() {
      c(
        as.raw(c(0xec, 0x77, 0xbe, 0x7a)),
        writeBin(bit64::as.integer64(self$ping_id), raw(), size = 8, endian = "little")
      )
    }
  ),
  class = FALSE
)

#' Create PingRequest from a binary reader
#'
#' Reads a 64-bit \code{ping_id} from \code{reader} and constructs a \code{PingRequest}.
#'
#' @param reader Reader object providing \code{read_long()}.
#' @return Instance of \code{PingRequest}.
PingRequest_from_reader <- function(reader) {
  ping_id <- reader$read_long()
  PingRequest$new(ping_id = ping_id)
}


#' PingDelayDisconnectRequest R6 class
#'
#' R6 class representing a ping request that asks the server to delay a disconnect.
#' Contains a 64-bit \code{ping_id} and an integer \code{disconnect_delay} (seconds).
#' Provides methods to convert to a list and to serialize to raw bytes.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field ping_id Integer64 ping identifier.
#' @field disconnect_delay Integer delay in seconds before disconnect.
PingDelayDisconnectRequest <- R6::R6Class(
  "PingDelayDisconnectRequest",
  public = list(
    CONSTRUCTOR_ID = 0xf3427b8c,
    SUBCLASS_OF_ID = 0x816aee71,
    ping_id = NULL,
    disconnect_delay = NULL,

    #' Initialize PingDelayDisconnectRequest
    #'
    #' @param ping_id Integer64 identifier for the ping.
    #' @param disconnect_delay Integer number of seconds to delay disconnect.
    initialize = function(ping_id, disconnect_delay) {
      self$ping_id <- ping_id
      self$disconnect_delay <- disconnect_delay
    },

    #' Convert to list representation
    #'
    #' Produces a plain R list suitable for debugging or JSON serialization.
    #'
    #' @return A list with keys: \code{"_"}, \code{ping_id}, and \code{disconnect_delay}.
    to_list = function() {
      list(
        "_" = "PingDelayDisconnectRequest",
        ping_id = self$ping_id,
        disconnect_delay = self$disconnect_delay
      )
    },

    #' Serialize to raw bytes
    #'
    #' Serializes the request into a raw vector containing:
    #' - constructor id (4 bytes little-endian)
    #' - \code{ping_id} as 8-byte little-endian integer
    #' - \code{disconnect_delay} as 4-byte little-endian integer
    #'
    #' @return Raw vector with serialized request bytes.
    to_bytes = function() {
      c(
        as.raw(c(0x8c, 0x7b, 0x42, 0xf3)),
        writeBin(bit64::as.integer64(self$ping_id), raw(), size = 8, endian = "little"),
        writeBin(as.integer(self$disconnect_delay), raw(), size = 4, endian = "little")
      )
    }
  ),
  class = FALSE
)

#' Create PingDelayDisconnectRequest from a binary reader
#'
#' Reads a 64-bit \code{ping_id} and a 32-bit \code{disconnect_delay} from the
#' provided \code{reader} and constructs a \code{PingDelayDisconnectRequest}.
#'
#' @param reader Reader object providing \code{read_long()} and \code{read_int()}.
#' @return Instance of \code{PingDelayDisconnectRequest}.
PingDelayDisconnectRequest_from_reader <- function(reader) {
  ping_id <- reader$read_long()
  disconnect_delay <- reader$read_int()
  PingDelayDisconnectRequest$new(ping_id = ping_id, disconnect_delay = disconnect_delay)
}


#' ReqDHParamsRequest R6 class
#'
#' R6 class representing a request for Diffie-Hellman parameters during
#' the key exchange phase. This request carries:
#' - `nonce` and `server_nonce`: 128-bit nonces used for the DH handshake,
#' - `p` and `q`: byte sequences containing prime parameters,
#' - `public_key_fingerprint`: 64-bit fingerprint of the server public key,
#' - `encrypted_data`: bytes with encrypted DH payload.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field nonce 128-bit client nonce.
#' @field server_nonce 128-bit server nonce.
#' @field p Byte sequence for parameter \(p\).
#' @field q Byte sequence for parameter \(q\).
#' @field public_key_fingerprint 64-bit fingerprint of the public key.
#' @field encrypted_data Encrypted payload bytes.
ReqDHParamsRequest <- R6::R6Class(
  "ReqDHParamsRequest",
  public = list(
    CONSTRUCTOR_ID = 0xd712e4be,
    SUBCLASS_OF_ID = 0xa6188d9e,
    nonce = NULL,
    server_nonce = NULL,
    p = NULL,
    q = NULL,
    public_key_fingerprint = NULL,
    encrypted_data = NULL,

    #' Initialize a new ReqDHParamsRequest
    #'
    #' @param nonce 128-bit nonce generated by the client (large int or raw).
    #' @param server_nonce 128-bit nonce returned by the server (large int or raw).
    #' @param p Byte sequence for the DH parameter p.
    #' @param q Byte sequence for the DH parameter q.
    #' @param public_key_fingerprint 64-bit integer fingerprint for the public key.
    #' @param encrypted_data Encrypted byte payload required for the DH exchange.
    initialize = function(nonce, server_nonce, p, q, public_key_fingerprint, encrypted_data) {
      self$nonce <- nonce
      self$server_nonce <- server_nonce
      self$p <- p
      self$q <- q
      self$public_key_fingerprint <- public_key_fingerprint
      self$encrypted_data <- encrypted_data
    },

    #' Convert to list representation
    #'
    #' Returns a plain R list that mirrors the fields of the request. Useful for
    #' debugging, inspection or JSON-style representations.
    #' @return List with keys: \code{"_"}, \code{nonce}, \code{server_nonce}, \code{p}, \code{q}, \code{public_key_fingerprint}, \code{encrypted_data}.
    to_list = function() {
      list(
        "_" = "ReqDHParamsRequest",
        nonce = self$nonce,
        server_nonce = self$server_nonce,
        p = self$p,
        q = self$q,
        public_key_fingerprint = self$public_key_fingerprint,
        encrypted_data = self$encrypted_data
      )
    },

    #' Serialize to raw bytes
    #'
    #' Serializes the request into a raw vector according to the protocol:
    #' - constructor id (4 bytes, little-endian)
    #' - \code{nonce} and \code{server_nonce} as 128-bit values
    #' - serialized \code{p} and \code{q} byte sequences
    #' - \code{public_key_fingerprint} as 8-byte little-endian integer
    #' - serialized \code{encrypted_data}
    #'
    #' Note: the implementation relies on \code{serialize_bytes()} for byte
    #' sequence fields and uses \code{writeBin()} for integer encodings.
    to_bytes = function() {
      c(
        as.raw(c(0xbe, 0xe4, 0x12, 0xd7)),
        writeBin(bit64::as.integer64(self$nonce), raw(), size = 16, endian = "little"),
        writeBin(bit64::as.integer64(self$server_nonce), raw(), size = 16, endian = "little"),
        serialize_bytes(self$p),
        serialize_bytes(self$q),
        writeBin(bit64::as.integer64(self$public_key_fingerprint), raw(), size = 8, endian = "little"),
        serialize_bytes(self$encrypted_data)
      )
    }
  ),
  class = FALSE
)

#' Create ReqDHParamsRequest from a binary reader
#'
#' Reads fields for a ReqDHParamsRequest from a `reader` and constructs the
#' corresponding R6 instance. Expected reader helpers:
#' - \code{read_large_int(bits = 128)} for 128-bit nonces,
#' - \code{tgread_bytes()} for Telegram-style byte arrays,
#' - \code{read_long()} for 64-bit integers.
#'
#' @param reader Reader object providing binary read helpers as described above.
#' @return Instance of \code{ReqDHParamsRequest}.
ReqDHParamsRequest_from_reader <- function(reader) {
  nonce <- reader$read_large_int(bits = 128)
  server_nonce <- reader$read_large_int(bits = 128)
  p <- reader$tgread_bytes()
  q <- reader$tgread_bytes()
  public_key_fingerprint <- reader$read_long()
  encrypted_data <- reader$tgread_bytes()
  ReqDHParamsRequest$new(
    nonce = nonce,
    server_nonce = server_nonce,
    p = p,
    q = q,
    public_key_fingerprint = public_key_fingerprint,
    encrypted_data = encrypted_data
  )
}

#' ReqPqRequest R6 class
#'
#' Represents a request for the server's PQ (prime factor) during the initial
#' key exchange. Holds a 128-bit `nonce` generated by the client.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field nonce 128-bit nonce (large int or raw).
ReqPqRequest <- R6::R6Class(
  "ReqPqRequest",
  public = list(
    CONSTRUCTOR_ID = 0x60469778,
    SUBCLASS_OF_ID = 0x786986b8,
    nonce = NULL,

    #' Initialize a new ReqPqRequest
    #'
    #' @param nonce 128-bit nonce generated by the client (large int or raw).
    initialize = function(nonce) {
      self$nonce <- nonce
    },

    #' Convert to list representation
    #'
    #' Returns a plain R list representation useful for debugging or JSON-like
    #' inspection. The list includes the class discriminator and the `nonce`.
    #'
    #' @return Named list with keys `"_`" and `nonce`.
    to_list = function() {
      list(
        "_" = "ReqPqRequest",
        nonce = self$nonce
      )
    },

    #' Serialize to raw bytes
    #'
    #' Serializes the request according to the protocol:
    #' - constructor id (4 bytes, little-endian)
    #' - `nonce` as a 128-bit (16-byte) little-endian value
    #'
    #' @return Raw vector containing the serialized request bytes.
    to_bytes = function() {
      c(
        as.raw(c(0x78, 0x97, 0x46, 0x60)),
        writeBin(bit64::as.integer64(self$nonce), raw(), size = 16, endian = "little")
      )
    }
  ),
  class = FALSE
)

#' Create ReqPqRequest from a binary reader
#'
#' Reads a 128-bit `nonce` from the provided `reader` and constructs a
#' `ReqPqRequest` instance.
#'
#' @param reader Reader object providing `read_large_int(bits = 128)`.
#' @return A new instance of `ReqPqRequest`.
ReqPqRequest_from_reader <- function(reader) {
  nonce <- reader$read_large_int(bits = 128)
  ReqPqRequest$new(nonce = nonce)
}

#' ReqPqMultiRequest R6 class
#'
#' Represents a request for the server's PQ (prime factor) during the initial
#' key exchange (multi variant). Holds a 128-bit `nonce` generated by the client.
#'
#' @export
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field nonce 128-bit nonce (large int or raw).
#' @examples
#' # req <- ReqPqMultiRequest$new(nonce = some_large_int)
#' # bytes <- req$to_bytes()
ReqPqMultiRequest <- R6::R6Class(
  "ReqPqMultiRequest",
  public = list(
    CONSTRUCTOR_ID = 0xbe7e8ef1,
    SUBCLASS_OF_ID = 0x786986b8,
    nonce = NULL,

    #' Initialize a new ReqPqMultiRequest
    #'
    #' @param nonce 128-bit nonce generated by the client (large int or raw).
    initialize = function(nonce) {
      self$nonce <- nonce
    },

    #' Convert to list representation
    #'
    #' Returns a plain R list useful for debugging or JSON-like inspection.
    #' @return Named list with keys: \code{"_"} and \code{nonce}.
    to_list = function() {
      list(
        "_" = "ReqPqMultiRequest",
        nonce = self$nonce
      )
    },

    #' Serialize to raw bytes
    #'
    #' Serializes the request according to the protocol:
    #' - constructor id (4 bytes, little-endian)
    #' - `nonce` as a 128-bit (16-byte) little-endian value
    #'
    #' @return Raw vector containing the serialized request bytes.
    to_bytes = function() {
      c(
        as.raw(c(0xf1, 0x8e, 0x7e, 0xbe)),
        writeBin(bit64::as.integer64(self$nonce), raw(), size = 16, endian = "little")
      )
    }
  ),
  class = FALSE
)

#' Create ReqPqMultiRequest from a binary reader
#'
#' Reads a 128-bit `nonce` from the provided `reader` and constructs a
#' `ReqPqMultiRequest` instance.
#'
#' @param reader Reader object providing `read_large_int(bits = 128)`.
#' @return A new instance of `ReqPqMultiRequest`.
ReqPqMultiRequest_from_reader <- function(reader) {
  nonce <- reader$read_large_int(bits = 128)
  ReqPqMultiRequest$new(nonce = nonce)
}


#' RpcDropAnswerRequest R6 class
#'
#' R6 class representing a request to drop an RPC answer for a previously sent
#' request message. The server will respond with one of the \code{RpcAnswer*}
#' response variants (e.g. \code{RpcAnswerUnknown}, \code{RpcAnswerDroppedRunning},
#' \code{RpcAnswerDropped}).
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field req_msg_id Integer64 request message identifier whose answer should be dropped.
#' @return An R6 object of class \code{RpcDropAnswerRequest}.
#' @examples
#' # req <- RpcDropAnswerRequest$new(req_msg_id = 1234567890123456789)
RpcDropAnswerRequest <- R6::R6Class(
  "RpcDropAnswerRequest",
  public = list(
    CONSTRUCTOR_ID = 0x58e4a740,
    SUBCLASS_OF_ID = 0x4bca7570,
    req_msg_id = NULL,

    # Initialize the request with the target request message id.
    initialize = function(req_msg_id) {
      # :returns RpcDropAnswer: Instance of either RpcAnswerUnknown, RpcAnswerDroppedRunning, RpcAnswerDropped.
      self$req_msg_id <- req_msg_id
    },

    # Convert to a simple R list for inspection / debugging.
    to_list = function() {
      list(
        "_" = "RpcDropAnswerRequest",
        req_msg_id = self$req_msg_id
      )
    },

    # Serialize the request to a raw vector suitable for wire transmission.
    # Produces:
    #  - constructor id (4 bytes, little-endian)
    #  - req_msg_id as 8-byte little-endian integer
    to_bytes = function() {
      c(
        as.raw(c(0x40, 0xa7, 0xe4, 0x58)),
        writeBin(bit64::as.integer64(self$req_msg_id), raw(), size = 8, endian = "little")
      )
    }
  ),
  class = FALSE
)

#' Create RpcDropAnswerRequest from a binary reader
#'
#' Reads a 64-bit \code{req_msg_id} from the provided \code{reader} and
#' constructs an instance of \code{RpcDropAnswerRequest}.
#'
#' @param reader Reader object providing \code{read_long()} to read 64-bit integers.
#' @return Instance of \code{RpcDropAnswerRequest}.
RpcDropAnswerRequest_from_reader <- function(reader) {
  req_msg_id <- reader$read_long()
  RpcDropAnswerRequest$new(req_msg_id = req_msg_id)
}


#' SetClientDHParamsRequest R6 class
#'
#' Represents the client's response during the Diffie-Hellman key exchange.
#' Contains the client's \code{nonce}, the server's \code{server_nonce}, and
#' the \code{encrypted_data} payload sent to the server for verification.
#'
#' @field CONSTRUCTOR_ID Integer constructor identifier for the request.
#' @field SUBCLASS_OF_ID Integer subclass identifier.
#' @field nonce 128-bit client nonce (large integer or raw).
#' @field server_nonce 128-bit server nonce (large integer or raw).
#' @field encrypted_data Raw or character vector containing encrypted payload bytes.
#' @return An R6 object of class \code{SetClientDHParamsRequest}.
#' @examples
#' # req <- SetClientDHParamsRequest$new(nonce = some_large_int, server_nonce = other_large_int, encrypted_data = raw())
SetClientDHParamsRequest <- R6::R6Class(
  "SetClientDHParamsRequest",
  public = list(
    CONSTRUCTOR_ID = 0xf5045f1f,
    SUBCLASS_OF_ID = 0x55dd6cdb,
    nonce = NULL,
    server_nonce = NULL,
    encrypted_data = NULL,

    #' Initialize a new SetClientDHParamsRequest
    #'
    #' @param nonce 128-bit nonce generated by the client (large int or raw).
    #' @param server_nonce 128-bit nonce returned by the server (large int or raw).
    #' @param encrypted_data Encrypted byte payload required for the DH exchange.
    initialize = function(nonce, server_nonce, encrypted_data) {
      # :returns Set_client_DH_params_answer: Instance of either DhGenOk, DhGenRetry, DhGenFail.
      self$nonce <- nonce
      self$server_nonce <- server_nonce
      self$encrypted_data <- encrypted_data
    },

    #' Convert to list representation
    #'
    #' Returns a plain R list mirroring the object's fields. Useful for
    #' debugging, inspection, or JSON-style representations.
    #'
    #' @return List with keys: \code{"_"}, \code{nonce}, \code{server_nonce}, \code{encrypted_data}.
    to_list = function() {
      list(
        "_" = "SetClientDHParamsRequest",
        nonce = self$nonce,
        server_nonce = self$server_nonce,
        encrypted_data = self$encrypted_data
      )
    },

    #' Serialize to raw bytes
    #'
    #' Serializes the request into a raw vector according to the protocol:
    #' - constructor id (4 bytes, little-endian)
    #' - \code{nonce} and \code{server_nonce} as 16-byte little-endian values
    #' - serialized \code{encrypted_data} via \code{serialize_bytes()}
    #'
    #' @return Raw vector containing the serialized bytes of the request.
    to_bytes = function() {
      c(
        as.raw(c(0x1f, 0x5f, 0x04, 0xf5)),
        writeBin(bit64::as.integer64(self$nonce), raw(), size = 16, endian = "little"),
        writeBin(bit64::as.integer64(self$server_nonce), raw(), size = 16, endian = "little"),
        serialize_bytes(self$encrypted_data)
      )
    }
  ),
  class = FALSE
)

#' Create SetClientDHParamsRequest from a binary reader
#'
#' Reads a 128-bit \code{nonce}, a 128-bit \code{server_nonce}, and the
#' \code{encrypted_data} byte array from the provided \code{reader} and
#' constructs a \code{SetClientDHParamsRequest} instance.
#'
#' @param reader Reader object providing:
#'   - \code{read_large_int(bits = 128)} to read 128-bit nonces,
#'   - \code{tgread_bytes()} to read Telegram-style byte arrays.
#' @return Instance of \code{SetClientDHParamsRequest}.
SetClientDHParamsRequest_from_reader <- function(reader) {
  nonce <- reader$read_large_int(bits = 128)
  server_nonce <- reader$read_large_int(bits = 128)
  encrypted_data <- reader$tgread_bytes()
  SetClientDHParamsRequest$new(nonce = nonce, server_nonce = server_nonce, encrypted_data = encrypted_data)
}
