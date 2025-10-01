DestroyAuthKeyRequest <- R6::R6Class(
  "DestroyAuthKeyRequest",
  public = list(
    CONSTRUCTOR_ID = 0xd1435160,
    SUBCLASS_OF_ID = 0x8291e68e,

    to_list = function() {
      list(
        "_" = "DestroyAuthKeyRequest"
      )
    },

    to_bytes = function() {
      as.raw(c(0x60, 0x51, 0x43, 0xd1))
    }
  ),
  class = FALSE
)

DestroyAuthKeyRequest_from_reader <- function(reader) {
  DestroyAuthKeyRequest$new()
}


DestroySessionRequest <- R6::R6Class(
  "DestroySessionRequest",
  public = list(
    CONSTRUCTOR_ID = 0xe7512126,
    SUBCLASS_OF_ID = 0xaf0ce7bd,
    session_id = NULL,

    initialize = function(session_id) {
      self$session_id <- session_id
    },

    to_list = function() {
      list(
        "_" = "DestroySessionRequest",
        session_id = self$session_id
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x26, 0x21, 0x51, 0xe7)),
        writeBin(as.integer64(self$session_id), raw(), size = 8, endian = "little")
      )
    }
  ),
  class = FALSE
)

DestroySessionRequest_from_reader <- function(reader) {
  session_id <- reader$read_long()
  DestroySessionRequest$new(session_id = session_id)
}

GetFutureSaltsRequest <- R6::R6Class(
  "GetFutureSaltsRequest",
  public = list(
    CONSTRUCTOR_ID = 0xb921bd04,
    SUBCLASS_OF_ID = 0x1090f517,
    num = NULL,

    initialize = function(num) {
      self$num <- num
    },

    to_list = function() {
      list(
        "_" = "GetFutureSaltsRequest",
        num = self$num
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x04, 0xbd, 0x21, 0xb9)),
        writeBin(as.integer(self$num), raw(), size = 4, endian = "little")
      )
    }
  ),
  class = FALSE
)

GetFutureSaltsRequest_from_reader <- function(reader) {
  num <- reader$read_int()
  GetFutureSaltsRequest$new(num = num)
}


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

    to_bytes = function() {
      # You need to implement serialize_bytes and ._bytes for proxy/query/params objects
      raw_vec <- c(
        as.raw(c(0xa9, 0x5e, 0xcd, 0xc1)),
        writeBin(
          as.integer((if (is.null(self$proxy) || identical(self$proxy, FALSE)) 0 else 1) |
                     (if (is.null(self$params) || identical(self$params, FALSE)) 0 else 2)),
          raw(), size = 4, endian = "little"
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

InvokeAfterMsgRequest <- R6::R6Class(
  "InvokeAfterMsgRequest",
  public = list(
    CONSTRUCTOR_ID = 0xcb9f372d,
    SUBCLASS_OF_ID = 0xb7b2364b,
    msg_id = NULL,
    query = NULL,

    initialize = function(msg_id, query) {
      self$msg_id <- msg_id
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeAfterMsgRequest",
        msg_id = self$msg_id,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x2d, 0x37, 0x9f, 0xcb)),
        writeBin(as.integer64(self$msg_id), raw(), size = 8, endian = "little"),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

InvokeAfterMsgRequest_from_reader <- function(reader) {
  msg_id <- reader$read_long()
  query <- reader$tgread_object()
  InvokeAfterMsgRequest$new(msg_id = msg_id, query = query)
}


InvokeAfterMsgsRequest <- R6::R6Class(
  "InvokeAfterMsgsRequest",
  public = list(
    CONSTRUCTOR_ID = 0x3dc4b4f0,
    SUBCLASS_OF_ID = 0xb7b2364b,
    msg_ids = NULL,
    query = NULL,

    initialize = function(msg_ids, query) {
      self$msg_ids <- msg_ids
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeAfterMsgsRequest",
        msg_ids = if (is.null(self$msg_ids)) list() else self$msg_ids,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    to_bytes = function() {
      raw_vec <- c(
        as.raw(c(0xf0, 0xb4, 0xc4, 0x3d)),
        as.raw(c(0x1c, 0xb5, 0xc4, 0x15)),
        writeBin(as.integer(length(self$msg_ids)), raw(), size = 4, endian = "little"),
        as.raw(unlist(lapply(self$msg_ids, function(x) writeBin(as.integer64(x), raw(), size = 8, endian = "little")))),
        self$query$to_bytes()
      )
      as.raw(unlist(raw_vec))
    }
  ),
  class = FALSE
)

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


InvokeWithApnsSecretRequest <- R6::R6Class(
  "InvokeWithApnsSecretRequest",
  public = list(
    CONSTRUCTOR_ID = 0xdae54f8,
    SUBCLASS_OF_ID = 0xb7b2364b,
    nonce = NULL,
    secret = NULL,
    query = NULL,

    initialize = function(nonce, secret, query) {
      self$nonce <- nonce
      self$secret <- secret
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithApnsSecretRequest",
        nonce = self$nonce,
        secret = self$secret,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

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

InvokeWithApnsSecretRequest_from_reader <- function(reader) {
  nonce <- reader$tgread_string()
  secret <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithApnsSecretRequest$new(nonce = nonce, secret = secret, query = query)
}


InvokeWithBusinessConnectionRequest <- R6::R6Class(
  "InvokeWithBusinessConnectionRequest",
  public = list(
    CONSTRUCTOR_ID = 0xdd289f8e,
    SUBCLASS_OF_ID = 0xb7b2364b,
    connection_id = NULL,
    query = NULL,

    initialize = function(connection_id, query) {
      self$connection_id <- connection_id
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithBusinessConnectionRequest",
        connection_id = self$connection_id,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

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

InvokeWithBusinessConnectionRequest_from_reader <- function(reader) {
  connection_id <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithBusinessConnectionRequest$new(connection_id = connection_id, query = query)
}


InvokeWithGooglePlayIntegrityRequest <- R6::R6Class(
  "InvokeWithGooglePlayIntegrityRequest",
  public = list(
    CONSTRUCTOR_ID = 0x1df92984,
    SUBCLASS_OF_ID = 0xb7b2364b,
    nonce = NULL,
    token = NULL,
    query = NULL,

    initialize = function(nonce, token, query) {
      self$nonce <- nonce
      self$token <- token
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithGooglePlayIntegrityRequest",
        nonce = self$nonce,
        token = self$token,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

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

InvokeWithGooglePlayIntegrityRequest_from_reader <- function(reader) {
  nonce <- reader$tgread_string()
  token <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithGooglePlayIntegrityRequest$new(nonce = nonce, token = token, query = query)
}


InvokeWithLayerRequest <- R6::R6Class(
  "InvokeWithLayerRequest",
  public = list(
    CONSTRUCTOR_ID = 0xda9b0d0d,
    SUBCLASS_OF_ID = 0xb7b2364b,
    layer = NULL,
    query = NULL,

    initialize = function(layer, query) {
      self$layer <- layer
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithLayerRequest",
        layer = self$layer,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

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

InvokeWithLayerRequest_from_reader <- function(reader) {
  layer <- reader$read_int()
  query <- reader$tgread_object()
  InvokeWithLayerRequest$new(layer = layer, query = query)
}


InvokeWithMessagesRangeRequest <- R6::R6Class(
  "InvokeWithMessagesRangeRequest",
  public = list(
    CONSTRUCTOR_ID = 0x365275f2,
    SUBCLASS_OF_ID = 0xb7b2364b,
    range = NULL,
    query = NULL,

    initialize = function(range, query) {
      self$range <- range
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithMessagesRangeRequest",
        range = if (!is.null(self$range) && "to_list" %in% names(self$range)) self$range$to_list() else self$range,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

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

InvokeWithMessagesRangeRequest_from_reader <- function(reader) {
  range <- reader$tgread_object()
  query <- reader$tgread_object()
  InvokeWithMessagesRangeRequest$new(range = range, query = query)
}


InvokeWithReCaptchaRequest <- R6::R6Class(
  "InvokeWithReCaptchaRequest",
  public = list(
    CONSTRUCTOR_ID = 0xadbb0f94,
    SUBCLASS_OF_ID = 0xb7b2364b,
    token = NULL,
    query = NULL,

    initialize = function(token, query) {
      self$token <- token
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithReCaptchaRequest",
        token = self$token,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

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

InvokeWithReCaptchaRequest_from_reader <- function(reader) {
  token <- reader$tgread_string()
  query <- reader$tgread_object()
  InvokeWithReCaptchaRequest$new(token = token, query = query)
}


InvokeWithTakeoutRequest <- R6::R6Class(
  "InvokeWithTakeoutRequest",
  public = list(
    CONSTRUCTOR_ID = 0xaca9fd2e,
    SUBCLASS_OF_ID = 0xb7b2364b,
    takeout_id = NULL,
    query = NULL,

    initialize = function(takeout_id, query) {
      self$takeout_id <- takeout_id
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithTakeoutRequest",
        takeout_id = self$takeout_id,
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x2e, 0xfd, 0xa9, 0xac)),
        writeBin(as.integer64(self$takeout_id), raw(), size = 8, endian = "little"),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

InvokeWithTakeoutRequest_from_reader <- function(reader) {
  takeout_id <- reader$read_long()
  query <- reader$tgread_object()
  InvokeWithTakeoutRequest$new(takeout_id = takeout_id, query = query)
}


InvokeWithoutUpdatesRequest <- R6::R6Class(
  "InvokeWithoutUpdatesRequest",
  public = list(
    CONSTRUCTOR_ID = 0xbf9459b7,
    SUBCLASS_OF_ID = 0xb7b2364b,
    query = NULL,

    initialize = function(query) {
      self$query <- query
    },

    to_list = function() {
      list(
        "_" = "InvokeWithoutUpdatesRequest",
        query = if (!is.null(self$query) && "to_list" %in% names(self$query)) self$query$to_list() else self$query
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0xb7, 0x59, 0x94, 0xbf)),
        self$query$to_bytes()
      )
    }
  ),
  class = FALSE
)

InvokeWithoutUpdatesRequest_from_reader <- function(reader) {
  query <- reader$tgread_object()
  InvokeWithoutUpdatesRequest$new(query = query)
}


PingRequest <- R6::R6Class(
  "PingRequest",
  public = list(
    CONSTRUCTOR_ID = 0x7abe77ec,
    SUBCLASS_OF_ID = 0x816aee71,
    ping_id = NULL,

    initialize = function(ping_id) {
      self$ping_id <- ping_id
    },

    to_list = function() {
      list(
        "_" = "PingRequest",
        ping_id = self$ping_id
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0xec, 0x77, 0xbe, 0x7a)),
        writeBin(as.integer64(self$ping_id), raw(), size = 8, endian = "little")
      )
    }
  ),
  class = FALSE
)

PingRequest_from_reader <- function(reader) {
  ping_id <- reader$read_long()
  PingRequest$new(ping_id = ping_id)
}


PingDelayDisconnectRequest <- R6::R6Class(
  "PingDelayDisconnectRequest",
  public = list(
    CONSTRUCTOR_ID = 0xf3427b8c,
    SUBCLASS_OF_ID = 0x816aee71,
    ping_id = NULL,
    disconnect_delay = NULL,

    initialize = function(ping_id, disconnect_delay) {
      self$ping_id <- ping_id
      self$disconnect_delay <- disconnect_delay
    },

    to_list = function() {
      list(
        "_" = "PingDelayDisconnectRequest",
        ping_id = self$ping_id,
        disconnect_delay = self$disconnect_delay
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x8c, 0x7b, 0x42, 0xf3)),
        writeBin(as.integer64(self$ping_id), raw(), size = 8, endian = "little"),
        writeBin(as.integer(self$disconnect_delay), raw(), size = 4, endian = "little")
      )
    }
  ),
  class = FALSE
)

PingDelayDisconnectRequest_from_reader <- function(reader) {
  ping_id <- reader$read_long()
  disconnect_delay <- reader$read_int()
  PingDelayDisconnectRequest$new(ping_id = ping_id, disconnect_delay = disconnect_delay)
}


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

    initialize = function(nonce, server_nonce, p, q, public_key_fingerprint, encrypted_data) {
      self$nonce <- nonce
      self$server_nonce <- server_nonce
      self$p <- p
      self$q <- q
      self$public_key_fingerprint <- public_key_fingerprint
      self$encrypted_data <- encrypted_data
    },

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

    to_bytes = function() {
      c(
        as.raw(c(0xbe, 0xe4, 0x12, 0xd7)),
        writeBin(as.integer64(self$nonce), raw(), size = 16, endian = "little"),
        writeBin(as.integer64(self$server_nonce), raw(), size = 16, endian = "little"),
        serialize_bytes(self$p),
        serialize_bytes(self$q),
        writeBin(as.integer64(self$public_key_fingerprint), raw(), size = 8, endian = "little"),
        serialize_bytes(self$encrypted_data)
      )
    }
  ),
  class = FALSE
)

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

ReqPqRequest <- R6::R6Class(
  "ReqPqRequest",
  public = list(
    CONSTRUCTOR_ID = 0x60469778,
    SUBCLASS_OF_ID = 0x786986b8,
    nonce = NULL,

    initialize = function(nonce) {
      self$nonce <- nonce
    },

    to_list = function() {
      list(
        "_" = "ReqPqRequest",
        nonce = self$nonce
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x78, 0x97, 0x46, 0x60)),
        writeBin(as.integer64(self$nonce), raw(), size = 16, endian = "little")
      )
    }
  ),
  class = FALSE
)

ReqPqRequest_from_reader <- function(reader) {
  nonce <- reader$read_large_int(bits = 128)
  ReqPqRequest$new(nonce = nonce)
}


ReqPqMultiRequest <- R6::R6Class(
  "ReqPqMultiRequest",
  public = list(
    CONSTRUCTOR_ID = 0xbe7e8ef1,
    SUBCLASS_OF_ID = 0x786986b8,
    nonce = NULL,

    initialize = function(nonce) {
      self$nonce <- nonce
    },

    to_list = function() {
      list(
        "_" = "ReqPqMultiRequest",
        nonce = self$nonce
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0xf1, 0x8e, 0x7e, 0xbe)),
        writeBin(as.integer64(self$nonce), raw(), size = 16, endian = "little")
      )
    }
  ),
  class = FALSE
)

ReqPqMultiRequest_from_reader <- function(reader) {
  nonce <- reader$read_large_int(bits = 128)
  ReqPqMultiRequest$new(nonce = nonce)
}


RpcDropAnswerRequest <- R6::R6Class(
  "RpcDropAnswerRequest",
  public = list(
    CONSTRUCTOR_ID = 0x58e4a740,
    SUBCLASS_OF_ID = 0x4bca7570,
    req_msg_id = NULL,

    initialize = function(req_msg_id) {
      # :returns RpcDropAnswer: Instance of either RpcAnswerUnknown, RpcAnswerDroppedRunning, RpcAnswerDropped.
      self$req_msg_id <- req_msg_id
    },

    to_list = function() {
      list(
        "_" = "RpcDropAnswerRequest",
        req_msg_id = self$req_msg_id
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x40, 0xa7, 0xe4, 0x58)),
        writeBin(as.integer64(self$req_msg_id), raw(), size = 8, endian = "little")
      )
    }
  ),
  class = FALSE
)

RpcDropAnswerRequest_from_reader <- function(reader) {
  req_msg_id <- reader$read_long()
  RpcDropAnswerRequest$new(req_msg_id = req_msg_id)
}


SetClientDHParamsRequest <- R6::R6Class(
  "SetClientDHParamsRequest",
  public = list(
    CONSTRUCTOR_ID = 0xf5045f1f,
    SUBCLASS_OF_ID = 0x55dd6cdb,
    nonce = NULL,
    server_nonce = NULL,
    encrypted_data = NULL,

    initialize = function(nonce, server_nonce, encrypted_data) {
      # :returns Set_client_DH_params_answer: Instance of either DhGenOk, DhGenRetry, DhGenFail.
      self$nonce <- nonce
      self$server_nonce <- server_nonce
      self$encrypted_data <- encrypted_data
    },

    to_list = function() {
      list(
        "_" = "SetClientDHParamsRequest",
        nonce = self$nonce,
        server_nonce = self$server_nonce,
        encrypted_data = self$encrypted_data
      )
    },

    to_bytes = function() {
      c(
        as.raw(c(0x1f, 0x5f, 0x04, 0xf5)),
        writeBin(as.integer64(self$nonce), raw(), size = 16, endian = "little"),
        writeBin(as.integer64(self$server_nonce), raw(), size = 16, endian = "little"),
        serialize_bytes(self$encrypted_data)
      )
    }
  ),
  class = FALSE
)

SetClientDHParamsRequest_from_reader <- function(reader) {
  nonce <- reader$read_large_int(bits = 128)
  server_nonce <- reader$read_large_int(bits = 128)
  encrypted_data <- reader$tgread_bytes()
  SetClientDHParamsRequest$new(nonce = nonce, server_nonce = server_nonce, encrypted_data = encrypted_data)
}
