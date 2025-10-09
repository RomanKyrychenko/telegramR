#' AddStickerToSetRequest R6 class
#'
#' Represents a request to add a sticker to a sticker set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field stickerset object InputStickerSet (TL) — required
#' @field sticker object InputStickerSetItem (TL) — required
#'
#' @section Methods:
#' - initialize(stickerset, sticker): create instance.
#' - resolve(client, utils): resolve friendly references to TL inputs (optional helper).
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' All methods are exported as part of the R6 object.
#'
#' @export
AddStickerToSetRequest <- R6::R6Class(
  "AddStickerToSetRequest",
  public = list(
    CONSTRUCTOR_ID = 0x8653febe,
    SUBCLASS_OF_ID = 0x9b704a5a,

    stickerset = NULL,
    sticker = NULL,

    #' Initialize AddStickerToSetRequest
    #'
    #' @param stickerset InputStickerSet (TL object or representation)
    #' @param sticker InputStickerSetItem (TL object or representation)
    initialize = function(stickerset, sticker) {
      if (missing(stickerset)) stop("stickerset is required")
      if (missing(sticker)) stop("sticker is required")
      self$stickerset <- stickerset
      self$sticker <- sticker
      invisible(self)
    },

    #' Optionally resolve friendly inputs to TL input objects
    #'
    #' @param client client object (used for entity resolution if needed)
    #' @param utils utilities object with helper conversions (may implement get_input_document / get_input_user)
    resolve = function(client, utils) {
      # If utilities provide resolution functions, apply them (no-op otherwise)
      if (!is.null(utils) && is.function(utils$get_input_document)) {
        # stickerset may be an InputStickerSet, often no conversion; keep conservative
        try(self$stickerset <- utils$get_input_document(self$stickerset), silent = TRUE)
        try(self$sticker <- utils$get_input_document(self$sticker), silent = TRUE)
      }
      invisible(self)
    },

    #' Convert to an R list
    #'
    #' @return list representation
    to_list = function() {
      list(
        `_` = "AddStickerToSetRequest",
        stickerset = if (inherits(self$stickerset, "TLObject")) self$stickerset$to_list() else self$stickerset,
        sticker = if (inherits(self$sticker, "TLObject")) self$sticker$to_list() else self$sticker
      )
    },

    #' Serialize to raw bytes (TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      stickerset_bytes <- if (inherits(self$stickerset, "TLObject") && is.function(self$stickerset$to_bytes)) {
        self$stickerset$to_bytes()
      } else if (is.raw(self$stickerset)) {
        self$stickerset
      } else {
        raw(0)
      }

      sticker_bytes <- if (inherits(self$sticker, "TLObject") && is.function(self$sticker$to_bytes)) {
        self$sticker$to_bytes()
      } else if (is.raw(self$sticker)) {
        self$sticker
      } else {
        raw(0)
      }

      c(constructor_bytes, stickerset_bytes, sticker_bytes)
    }
  )
)

#' Create AddStickerToSetRequest from a reader
#'
#' The reader object is expected to provide method tgread_object().
#'
#' @param reader Reader object
#' @return AddStickerToSetRequest instance
#' @export
AddStickerToSetRequest$set("public", "from_reader", function(reader) {
  stickerset_obj <- reader$tgread_object()
  sticker_obj <- reader$tgread_object()
  AddStickerToSetRequest$new(stickerset = stickerset_obj, sticker = sticker_obj)
})


#' ChangeStickerRequest R6 class
#'
#' Represents a request to change sticker attributes (emoji, mask coordinates, keywords).
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field sticker object InputDocument (TL) — required
#' @field emoji character — optional
#' @field mask_coords object MaskCoords (TL) — optional
#' @field keywords character — optional
#'
#' @section Methods:
#' - initialize(sticker, emoji = NULL, mask_coords = NULL, keywords = NULL): create instance.
#' - resolve(client, utils): resolve friendly references to TL inputs (documents).
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' All methods are exported as part of the R6 object.
#'
#' @export
ChangeStickerRequest <- R6::R6Class(
  "ChangeStickerRequest",
  public = list(
    CONSTRUCTOR_ID = 0xf5537ebc,
    SUBCLASS_OF_ID = 0x9b704a5a,

    sticker = NULL,
    emoji = NULL,
    mask_coords = NULL,
    keywords = NULL,

    #' Initialize a ChangeStickerRequest
    #'
    #' @param sticker InputDocument (TL object or representation)
    #' @param emoji optional character emoji string
    #' @param mask_coords optional MaskCoords TL object (or raw representation)
    #' @param keywords optional character keywords string
    initialize = function(sticker, emoji = NULL, mask_coords = NULL, keywords = NULL) {
      if (missing(sticker)) stop("sticker is required")
      self$sticker <- sticker
      self$emoji <- if (is.null(emoji)) NULL else as.character(emoji)
      self$mask_coords <- mask_coords
      self$keywords <- if (is.null(keywords)) NULL else as.character(keywords)
      invisible(self)
    },

    #' Resolve friendly inputs to TL input objects
    #'
    #' @param client client object (used for entity resolution if needed)
    #' @param utils utilities object with helper conversions (must implement get_input_document)
    resolve = function(client, utils) {
      # convert user-friendly sticker references to an InputDocument TL object
      self$sticker <- utils$get_input_document(self$sticker)
      invisible(self)
    },

    #' Convert to an R list
    #'
    #' @return list representation
    to_list = function() {
      list(
        `_` = "ChangeStickerRequest",
        sticker = if (inherits(self$sticker, "TLObject")) self$sticker$to_list() else self$sticker,
        emoji = self$emoji,
        mask_coords = if (inherits(self$mask_coords, "TLObject")) self$mask_coords$to_list() else self$mask_coords,
        keywords = self$keywords
      )
    },

    #' Serialize to raw bytes (TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      int32_to_raw_le <- function(x) {
        x <- as.integer(x)
        as.raw(c(
          bitwAnd(x, 0xFF),
          bitwAnd(bitwShiftR(x, 8), 0xFF),
          bitwAnd(bitwShiftR(x, 16), 0xFF),
          bitwAnd(bitwShiftR(x, 24), 0xFF)
        ))
      }
      serialize_string <- function(s) {
        sbytes <- charToRaw(enc2utf8(s))
        c(int32_to_raw_le(length(sbytes)), sbytes)
      }

      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      flag_emoji <- if (!is.null(self$emoji)) 1L else 0L
      flag_mask_coords <- if (!is.null(self$mask_coords)) 2L else 0L
      flag_keywords <- if (!is.null(self$keywords)) 4L else 0L
      flags <- flag_emoji + flag_mask_coords + flag_keywords
      flags_bytes <- int32_to_raw_le(flags)

      sticker_bytes <- if (inherits(self$sticker, "TLObject") && is.function(self$sticker$to_bytes)) {
        self$sticker$to_bytes()
      } else if (is.raw(self$sticker)) {
        self$sticker
      } else {
        raw(0)
      }

      emoji_bytes <- if (!is.null(self$emoji)) serialize_string(self$emoji) else raw(0)

      mask_coords_bytes <- if (!is.null(self$mask_coords) && inherits(self$mask_coords, "TLObject") && is.function(self$mask_coords$to_bytes)) {
        self$mask_coords$to_bytes()
      } else if (!is.null(self$mask_coords) && is.raw(self$mask_coords)) {
        self$mask_coords
      } else {
        raw(0)
      }

      keywords_bytes <- if (!is.null(self$keywords)) serialize_string(self$keywords) else raw(0)

      c(constructor_bytes, flags_bytes, sticker_bytes, emoji_bytes, mask_coords_bytes, keywords_bytes)
    }
  )
)

#' Create ChangeStickerRequest from a reader
#'
#' The reader object is expected to provide methods:
#' - read_int() -> integer (32-bit)
#' - tgread_object() -> returns a TL object
#' - tgread_string() -> returns a string
#'
#' @param reader Reader object
#' @return ChangeStickerRequest instance
#' @export
ChangeStickerRequest$set("public", "from_reader", function(reader) {
  flags_val <- reader$read_int()
  sticker_obj <- reader$tgread_object()
  emoji_val <- if (bitwAnd(flags_val, 1L) != 0L) reader$tgread_string() else NULL
  mask_coords_obj <- if (bitwAnd(flags_val, 2L) != 0L) reader$tgread_object() else NULL
  keywords_val <- if (bitwAnd(flags_val, 4L) != 0L) reader$tgread_string() else NULL

  ChangeStickerRequest$new(
    sticker = sticker_obj,
    emoji = emoji_val,
    mask_coords = mask_coords_obj,
    keywords = keywords_val
  )
})


#' ChangeStickerPositionRequest R6 class
#'
#' Represents a request to change a sticker's position within a sticker set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field sticker object InputDocument (TL) — required
#' @field position integer — required
#'
#' @section Methods:
#' - initialize(sticker, position): create instance.
#' - resolve(client, utils): resolve friendly references to TL inputs (documents).
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' All methods are exported as part of the R6 object.
#'
#' @export
ChangeStickerPositionRequest <- R6::R6Class(
  "ChangeStickerPositionRequest",
  public = list(
    CONSTRUCTOR_ID = 0xffb6d4ca,
    SUBCLASS_OF_ID = 0x9b704a5a,

    sticker = NULL,
    position = NULL,

    #' Initialize a ChangeStickerPositionRequest
    #'
    #' @param sticker InputDocument (TL object or representation)
    #' @param position integer new position
    initialize = function(sticker, position) {
      if (missing(sticker)) stop("sticker is required")
      if (missing(position) || !is.numeric(position) || length(position) != 1) stop("position must be a single numeric value")
      self$sticker <- sticker
      self$position <- as.integer(position)
      invisible(self)
    },

    #' Resolve friendly inputs to TL input objects
    #'
    #' @param client client object (used for entity resolution if needed)
    #' @param utils utilities object with helper conversions (must implement get_input_document)
    resolve = function(client, utils) {
      # convert user-friendly sticker references to an InputDocument TL object
      self$sticker <- utils$get_input_document(self$sticker)
      invisible(self)
    },

    #' Convert to an R list
    #'
    #' @return list representation
    to_list = function() {
      list(
        `_` = "ChangeStickerPositionRequest",
        sticker = if (inherits(self$sticker, "TLObject")) self$sticker$to_list() else self$sticker,
        position = self$position
      )
    },

    #' Serialize to raw bytes (TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      int32_to_raw_le <- function(x) {
        x <- as.integer(x)
        as.raw(c(
          bitwAnd(x, 0xFF),
          bitwAnd(bitwShiftR(x, 8), 0xFF),
          bitwAnd(bitwShiftR(x, 16), 0xFF),
          bitwAnd(bitwShiftR(x, 24), 0xFF)
        ))
      }

      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      sticker_bytes <- if (inherits(self$sticker, "TLObject") && is.function(self$sticker$to_bytes)) {
        self$sticker$to_bytes()
      } else if (is.raw(self$sticker)) {
        self$sticker
      } else {
        raw(0)
      }

      position_bytes <- int32_to_raw_le(self$position)

      c(constructor_bytes, sticker_bytes, position_bytes)
    }
  )
)

#' Create ChangeStickerPositionRequest from a reader
#'
#' The reader object is expected to provide methods:
#' - tgread_object() -> returns a TL object
#' - read_int() -> integer (32-bit)
#'
#' @param reader Reader object
#' @return ChangeStickerPositionRequest instance
#' @export
ChangeStickerPositionRequest$set("public", "from_reader", function(reader) {
  sticker_obj <- reader$tgread_object()
  position_val <- reader$read_int()
  ChangeStickerPositionRequest$new(sticker = sticker_obj, position = position_val)
})


#' CheckShortNameRequest R6 class
#'
#' Represents a request to check whether a short name is available/valid.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field short_name character — required
#'
#' @section Methods:
#' - initialize(short_name): create instance.
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' @export
CheckShortNameRequest <- R6::R6Class(
  "CheckShortNameRequest",
  public = list(
    CONSTRUCTOR_ID = 0x284b3639,
    SUBCLASS_OF_ID = 0xf5b399ac,

    short_name = NULL,

    #' Initialize a CheckShortNameRequest
    #'
    #' @param short_name character short name string
    initialize = function(short_name) {
      if (missing(short_name) || !is.character(short_name) || length(short_name) != 1) stop("short_name must be a single string")
      self$short_name <- short_name
      invisible(self)
    },

    #' Convert to an R list
    #'
    #' @return list representation
    to_list = function() {
      list(
        `_` = "CheckShortNameRequest",
        short_name = self$short_name
      )
    },

    #' Serialize to raw bytes (TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      # constructor bytes (little endian)
      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      serialize_string <- function(s) {
        sbytes <- charToRaw(enc2utf8(s))
        len_bytes <- as.raw(c(
          bitwAnd(length(sbytes), 0xFF),
          bitwAnd(bitwShiftR(length(sbytes), 8), 0xFF),
          bitwAnd(bitwShiftR(length(sbytes), 16), 0xFF),
          bitwAnd(bitwShiftR(length(sbytes), 24), 0xFF)
        ))
        c(len_bytes, sbytes)
      }

      c(constructor_bytes, serialize_string(self$short_name))
    }
  )
)

#' Create CheckShortNameRequest from a reader
#'
#' Reader must implement tgread_string() returning a single string.
#'
#' @param reader Reader object
#' @return CheckShortNameRequest instance
#' @export
CheckShortNameRequest$set("public", "from_reader", function(reader) {
  short_name_val <- reader$tgread_string()
  CheckShortNameRequest$new(short_name = short_name_val)
})


#' CreateStickerSetRequest R6 class
#'
#' Represents a request to create a sticker set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field user_id object InputUser (TL) — required
#' @field title character — required
#' @field short_name character — required
#' @field stickers list of InputStickerSetItem (TL) — required
#' @field masks logical — optional
#' @field emojis logical — optional
#' @field text_color logical — optional
#' @field thumb object InputDocument (TL) — optional
#' @field software character — optional
#'
#' @section Methods:
#' - initialize(user_id, title, short_name, stickers, masks = NULL, emojis = NULL, text_color = NULL, thumb = NULL, software = NULL): create instance.
#' - resolve(client, utils): resolve friendly references to TL inputs (documents / users).
#' - to_list(): returns a list representation suitable for inspection/JSON.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): static-style constructor that reads values from a reader object.
#'
#' All methods are exported as part of the R6 object.
#'
#' @export
CreateStickerSetRequest <- R6::R6Class(
  "CreateStickerSetRequest",
  public = list(
    CONSTRUCTOR_ID = 0x9021ab67,
    SUBCLASS_OF_ID = 0x9b704a5a,

    user_id = NULL,
    title = NULL,
    short_name = NULL,
    stickers = NULL,
    masks = NULL,
    emojis = NULL,
    text_color = NULL,
    thumb = NULL,
    software = NULL,

    #' Initialize a CreateStickerSetRequest
    #'
    #' @param user_id InputUser (TL object or representation)
    #' @param title character Title string
    #' @param short_name character Short name string
    #' @param stickers list of InputStickerSetItem TL objects (or raw representations)
    #' @param masks logical optional
    #' @param emojis logical optional
    #' @param text_color logical optional
    #' @param thumb optional InputDocument TL object (or raw)
    #' @param software optional character string
    initialize = function(user_id, title, short_name, stickers, masks = NULL, emojis = NULL, text_color = NULL, thumb = NULL, software = NULL) {
      if (missing(user_id)) stop("user_id is required")
      if (missing(title) || !is.character(title) || length(title) != 1) stop("title must be a single string")
      if (missing(short_name) || !is.character(short_name) || length(short_name) != 1) stop("short_name must be a single string")
      if (missing(stickers) || !is.list(stickers)) stop("stickers must be a list of sticker items")
      self$user_id <- user_id
      self$title <- title
      self$short_name <- short_name
      self$stickers <- stickers
      self$masks <- masks
      self$emojis <- emojis
      self$text_color <- text_color
      self$thumb <- thumb
      self$software <- software
      invisible(self)
    },

    #' Resolve friendly inputs to TL input objects
    #'
    #' @param client client object (used for entity resolution if needed)
    #' @param utils utilities object with helper conversions (must implement get_input_user and get_input_document)
    resolve = function(client, utils) {
      # resolve user_id via client/utils
      self$user_id <- utils$get_input_user(client$get_input_entity(self$user_id))
      if (!is.null(self$thumb)) {
        self$thumb <- utils$get_input_document(self$thumb)
      }
      invisible(self)
    },

    #' Convert to an R list
    #'
    #' @return list representation
    to_list = function() {
      list(
        `_` = "CreateStickerSetRequest",
        user_id = if (inherits(self$user_id, "TLObject")) self$user_id$to_list() else self$user_id,
        title = self$title,
        short_name = self$short_name,
        stickers = if (is.null(self$stickers)) list() else lapply(self$stickers, function(x) if (inherits(x, "TLObject")) x$to_list() else x),
        masks = self$masks,
        emojis = self$emojis,
        text_color = self$text_color,
        thumb = if (inherits(self$thumb, "TLObject")) self$thumb$to_list() else self$thumb,
        software = self$software
      )
    },

    #' Serialize to raw bytes (TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      int32_to_raw_le <- function(x) {
        x <- as.integer(x)
        as.raw(c(
          bitwAnd(x, 0xFF),
          bitwAnd(bitwShiftR(x, 8), 0xFF),
          bitwAnd(bitwShiftR(x, 16), 0xFF),
          bitwAnd(bitwShiftR(x, 24), 0xFF)
        ))
      }
      serialize_string <- function(s) {
        sbytes <- charToRaw(enc2utf8(s))
        c(int32_to_raw_le(length(sbytes)), sbytes)
      }

      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      flag_masks <- if (!is.null(self$masks) && isTRUE(self$masks)) 1L else 0L
      flag_emojis <- if (!is.null(self$emojis) && isTRUE(self$emojis)) 32L else 0L
      flag_text_color <- if (!is.null(self$text_color) && isTRUE(self$text_color)) 64L else 0L
      flag_thumb <- if (!is.null(self$thumb)) 4L else 0L
      flag_software <- if (!is.null(self$software)) 8L else 0L

      flags <- flag_masks + flag_emojis + flag_text_color + flag_thumb + flag_software
      flags_bytes <- int32_to_raw_le(flags)

      user_bytes <- if (inherits(self$user_id, "TLObject") && is.function(self$user_id$to_bytes)) {
        self$user_id$to_bytes()
      } else if (is.raw(self$user_id)) {
        self$user_id
      } else {
        raw(0)
      }

      thumb_bytes <- if (!is.null(self$thumb) && inherits(self$thumb, "TLObject") && is.function(self$thumb$to_bytes)) {
        self$thumb$to_bytes()
      } else {
        raw(0)
      }

      # vector constructor for list: 0x1cb5c415 -> bytes in little endian: 0x15 0xC4 0xB5 0x1C
      vector_constructor <- as.raw(c(0x15, 0xC4, 0xB5, 0x1C))
      stickers_len <- if (is.null(self$stickers)) 0L else as.integer(length(self$stickers))
      stickers_len_bytes <- int32_to_raw_le(stickers_len)

      stickers_bytes_list <- list()
      if (!is.null(self$stickers) && length(self$stickers) > 0) {
        for (it in self$stickers) {
          item_bytes <- if (inherits(it, "TLObject") && is.function(it$to_bytes)) {
            it$to_bytes()
          } else if (is.raw(it)) {
            it
          } else {
            raw(0)
          }
          stickers_bytes_list <- c(stickers_bytes_list, list(item_bytes))
        }
      }
      stickers_bytes <- if (length(stickers_bytes_list) == 0) raw(0) else do.call(c, stickers_bytes_list)

      software_bytes <- if (!is.null(self$software)) serialize_string(self$software) else raw(0)

      c(constructor_bytes, flags_bytes, user_bytes, serialize_string(self$title), serialize_string(self$short_name),
        (if (length(thumb_bytes) > 0) thumb_bytes else raw(0)),
        vector_constructor, stickers_len_bytes, stickers_bytes,
        software_bytes)
    }
  )
)

# Create from_reader as a public function similar to other classes
#' Create CreateStickerSetRequest from a reader
#'
#' The reader object is expected to provide methods:
#' - read_int() -> integer (32-bit)
#' - tgread_object() -> returns a TL object
#' - tgread_string() -> returns a string
#'
#' @param reader Reader object
#' @return CreateStickerSetRequest instance
#' @export
CreateStickerSetRequest$set("public", "from_reader", function(reader) {
  flags <- reader$read_int()
  masks_val <- bitwAnd(flags, 1L) != 0L
  emojis_val <- bitwAnd(flags, 32L) != 0L
  text_color_val <- bitwAnd(flags, 64L) != 0L

  user_obj <- reader$tgread_object()
  title_val <- reader$tgread_string()
  short_name_val <- reader$tgread_string()

  thumb_obj <- if (bitwAnd(flags, 4L) != 0L) reader$tgread_object() else NULL

  # read and ignore vector constructor id, then read count
  reader$read_int()
  count <- reader$read_int()
  stickers_list <- list()
  if (count > 0) {
    for (i in seq_len(count)) {
      stickers_list[[i]] <- reader$tgread_object()
    }
  }

  software_val <- if (bitwAnd(flags, 8L) != 0L) reader$tgread_string() else NULL

  CreateStickerSetRequest$new(
    user_id = user_obj,
    title = title_val,
    short_name = short_name_val,
    stickers = stickers_list,
    masks = masks_val,
    emojis = emojis_val,
    text_color = text_color_val,
    thumb = thumb_obj,
    software = software_val
  )
})


#' DeleteStickerSetRequest R6 class
#'
#' Represents a request to delete a sticker set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field stickerset object InputStickerSet (TL) — required
#'
#' @section Methods:
#' - initialize(stickerset): create instance.
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' @export
DeleteStickerSetRequest <- R6::R6Class(
  "DeleteStickerSetRequest",
  public = list(
    CONSTRUCTOR_ID = 0x87704394,
    SUBCLASS_OF_ID = 0xf5b399ac,
    stickerset = NULL,

    #' Initialize a DeleteStickerSetRequest
    #'
    #' @param stickerset InputStickerSet (TL object or representation)
    initialize = function(stickerset) {
      if (missing(stickerset)) stop("stickerset is required")
      self$stickerset <- stickerset
      invisible(self)
    },

    #' Convert to an R list (dictionary-like)
    #'
    #' @return list representation of the request
    to_list = function() {
      list(
        `_` = "DeleteStickerSetRequest",
        stickerset = if (inherits(self$stickerset, "TLObject")) self$stickerset$to_list() else self$stickerset
      )
    },

    #' Serialize to raw bytes (simple TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      stickerset_bytes <- if (inherits(self$stickerset, "TLObject") && is.function(self$stickerset$to_bytes)) {
        self$stickerset$to_bytes()
      } else if (is.raw(self$stickerset)) {
        self$stickerset
      } else {
        raw(0)
      }

      c(constructor_bytes, stickerset_bytes)
    }
  )
)

#' Create DeleteStickerSetRequest from a reader
#'
#' The reader object is expected to provide method tgread_object().
#'
#' @param reader Reader object
#' @return DeleteStickerSetRequest instance
#' @export
DeleteStickerSetRequest$set("public", "from_reader", function(reader) {
  stickerset_obj <- reader$tgread_object()
  DeleteStickerSetRequest$new(stickerset = stickerset_obj)
})


#' RemoveStickerFromSetRequest R6 class
#'
#' Represents a request to remove a sticker from a set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field sticker object InputDocument (TL) — required
#'
#' @section Methods:
#' - initialize(sticker): create instance.
#' - resolve(client, utils): resolves the sticker to an InputDocument using utils.
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' @export
RemoveStickerFromSetRequest <- R6::R6Class(
  "RemoveStickerFromSetRequest",
  public = list(
    CONSTRUCTOR_ID = 0xf7760f51,
    SUBCLASS_OF_ID = 0x9b704a5a,
    sticker = NULL,

    #' Initialize a RemoveStickerFromSetRequest
    #'
    #' @param sticker InputDocument (TL object or representation)
    initialize = function(sticker) {
      if (missing(sticker)) stop("sticker is required")
      self$sticker <- sticker
      invisible(self)
    },

    #' Resolve references (e.g. convert user-friendly inputs to TL inputs)
    #'
    #' @param client client object (used for entity resolution if needed)
    #' @param utils utilities object with helper conversions (must implement get_input_document)
    resolve = function(client, utils) {
      # utils$get_input_document should return an InputDocument TL object
      self$sticker <- utils$get_input_document(self$sticker)
      invisible(self)
    },

    #' Convert to an R list (dictionary-like)
    #'
    #' @return list representation of the request
    to_list = function() {
      list(
        `_` = "RemoveStickerFromSetRequest",
        sticker = if (inherits(self$sticker, "TLObject")) self$sticker$to_list() else self$sticker
      )
    },

    #' Serialize to raw bytes (simple TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      sticker_bytes <- if (inherits(self$sticker, "TLObject") && is.function(self$sticker$to_bytes)) {
        self$sticker$to_bytes()
      } else if (is.raw(self$sticker)) {
        self$sticker
      } else {
        raw(0)
      }

      c(constructor_bytes, sticker_bytes)
    }
  )
)

#' Create RemoveStickerFromSetRequest from a reader
#'
#' The reader object is expected to provide method tgread_object().
#'
#' @param reader Reader object
#' @return RemoveStickerFromSetRequest instance
#' @export
RemoveStickerFromSetRequest$set("public", "from_reader", function(reader) {
  sticker_obj <- reader$tgread_object()
  RemoveStickerFromSetRequest$new(sticker = sticker_obj)
})


#' RenameStickerSetRequest R6 class
#'
#' Represents a request to rename a sticker set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field stickerset object InputStickerSet (TL) — required
#' @field title character — required
#'
#' @section Methods:
#' - initialize(stickerset, title): create instance.
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' @export
RenameStickerSetRequest <- R6::R6Class(
  "RenameStickerSetRequest",
  public = list(
    CONSTRUCTOR_ID = 0x124b1c00,
    SUBCLASS_OF_ID = 0x9b704a5a,
    stickerset = NULL,
    title = NULL,

    #' Initialize a RenameStickerSetRequest
    #'
    #' @param stickerset InputStickerSet (TL object or representation)
    #' @param title character Title string
    initialize = function(stickerset, title) {
      if (missing(stickerset)) stop("stickerset is required")
      if (missing(title) || !is.character(title) || length(title) != 1) stop("title must be a single string")
      self$stickerset <- stickerset
      self$title <- title
      invisible(self)
    },

    #' Convert to an R list (dictionary-like)
    #'
    #' @return list representation of the request
    to_list = function() {
      list(
        `_` = "RenameStickerSetRequest",
        stickerset = if (inherits(self$stickerset, "TLObject")) self$stickerset$to_list() else self$stickerset,
        title = self$title
      )
    },

    #' Serialize to raw bytes (simple TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      int32_to_raw_le <- function(x) {
        x <- as.integer(x)
        as.raw(c(
          bitwAnd(x, 0xFF),
          bitwAnd(bitwShiftR(x, 8), 0xFF),
          bitwAnd(bitwShiftR(x, 16), 0xFF),
          bitwAnd(bitwShiftR(x, 24), 0xFF)
        ))
      }
      serialize_string <- function(s) {
        sbytes <- charToRaw(enc2utf8(s))
        len_bytes <- int32_to_raw_le(length(sbytes))
        c(len_bytes, sbytes)
      }

      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      stickerset_bytes <- if (inherits(self$stickerset, "TLObject") && is.function(self$stickerset$to_bytes)) {
        self$stickerset$to_bytes()
      } else if (is.raw(self$stickerset)) {
        self$stickerset
      } else {
        raw(0)
      }

      c(constructor_bytes, stickerset_bytes, serialize_string(self$title))
    }
  )
)

#' Create RenameStickerSetRequest from a reader
#'
#' The reader object is expected to provide methods:
#' - tgread_object() -> returns a TL object
#' - tgread_string() -> returns a string
#'
#' @param reader Reader object
#' @return RenameStickerSetRequest instance
#' @export
RenameStickerSetRequest$set("public", "from_reader", function(reader) {
  stickerset_obj <- reader$tgread_object()
  title_val <- reader$tgread_string()
  RenameStickerSetRequest$new(stickerset = stickerset_obj, title = title_val)
})


#' ReplaceStickerRequest R6 class
#'
#' Represents a request to replace a sticker with a new sticker item.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field sticker object InputDocument (TL) — required
#' @field new_sticker object InputStickerSetItem (TL) — required
#'
#' @section Methods:
#' - initialize(sticker, new_sticker): create instance.
#' - resolve(client, utils): resolves references (e.g. ensure sticker is InputDocument).
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' @export
ReplaceStickerRequest <- R6::R6Class(
  "ReplaceStickerRequest",
  public = list(
    CONSTRUCTOR_ID = 0x4696459a,
    SUBCLASS_OF_ID = 0x9b704a5a,
    sticker = NULL,
    new_sticker = NULL,

    #' Initialize a ReplaceStickerRequest
    #'
    #' @param sticker InputDocument (TL object or representation)
    #' @param new_sticker InputStickerSetItem (TL object or representation)
    initialize = function(sticker, new_sticker) {
      if (missing(sticker)) stop("sticker is required")
      if (missing(new_sticker)) stop("new_sticker is required")
      self$sticker <- sticker
      self$new_sticker <- new_sticker
      invisible(self)
    },

    #' Resolve references (e.g. convert user-friendly inputs to TL inputs)
    #'
    #' @param client client object (used for entity resolution if needed)
    #' @param utils utilities object with helper conversions (must implement get_input_document)
    resolve = function(client, utils) {
      # utils$get_input_document should return an InputDocument TL object
      self$sticker <- utils$get_input_document(self$sticker)
      invisible(self)
    },

    #' Convert to an R list (dictionary-like)
    #'
    #' @return list representation of the request
    to_list = function() {
      list(
        `_` = "ReplaceStickerRequest",
        sticker = if (inherits(self$sticker, "TLObject")) self$sticker$to_list() else self$sticker,
        new_sticker = if (inherits(self$new_sticker, "TLObject")) self$new_sticker$to_list() else self$new_sticker
      )
    },

    #' Serialize to raw bytes (simple TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      sticker_bytes <- if (inherits(self$sticker, "TLObject") && is.function(self$sticker$to_bytes)) {
        self$sticker$to_bytes()
      } else if (is.raw(self$sticker)) {
        self$sticker
      } else {
        raw(0)
      }

      new_sticker_bytes <- if (inherits(self$new_sticker, "TLObject") && is.function(self$new_sticker$to_bytes)) {
        self$new_sticker$to_bytes()
      } else if (is.raw(self$new_sticker)) {
        self$new_sticker
      } else {
        raw(0)
      }

      c(constructor_bytes, sticker_bytes, new_sticker_bytes)
    }
  )
)

#' Create ReplaceStickerRequest from a reader
#'
#' The reader object is expected to provide method tgread_object().
#'
#' @param reader Reader object
#' @return ReplaceStickerRequest instance
#' @export
ReplaceStickerRequest$set("public", "from_reader", function(reader) {
  sticker_obj <- reader$tgread_object()
  new_sticker_obj <- reader$tgread_object()
  ReplaceStickerRequest$new(sticker = sticker_obj, new_sticker = new_sticker_obj)
})


#' SetStickerSetThumbRequest R6 class
#'
#' Represents a request to set a thumbnail for a sticker set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field stickerset object InputStickerSet (TL) — required
#' @field thumb object InputDocument (TL) — optional
#' @field thumb_document_id integer64 / numeric — optional
#'
#' @section Methods:
#' - initialize(stickerset, thumb = NULL, thumb_document_id = NULL): create instance.
#' - resolve(client, utils): resolves references (e.g. ensure thumb is InputDocument).
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' @export
SetStickerSetThumbRequest <- R6::R6Class(
  "SetStickerSetThumbRequest",
  public = list(
    CONSTRUCTOR_ID = 0xa76a5392,
    SUBCLASS_OF_ID = 0x9b704a5a,
    stickerset = NULL,
    thumb = NULL,
    thumb_document_id = NULL,

    #' Initialize a SetStickerSetThumbRequest
    #'
    #' @param stickerset InputStickerSet (TL object or representation)
    #' @param thumb Optional InputDocument (TL object or representation)
    #' @param thumb_document_id Optional integer identifier for thumb document
    initialize = function(stickerset, thumb = NULL, thumb_document_id = NULL) {
      if (missing(stickerset)) stop("stickerset is required")
      self$stickerset <- stickerset
      self$thumb <- thumb
      self$thumb_document_id <- thumb_document_id
      invisible(self)
    },

    #' Resolve references (e.g. convert user-friendly inputs to TL inputs)
    #'
    #' @param client client object (used for entity resolution if needed)
    #' @param utils utilities object with helper conversions (must implement get_input_document)
    resolve = function(client, utils) {
      if (!is.null(self$thumb)) {
        # utils$get_input_document should return an InputDocument TL object
        self$thumb <- utils$get_input_document(self$thumb)
      }
      invisible(self)
    },

    #' Convert to an R list (dictionary-like)
    #'
    #' @return list representation of the request
    to_list = function() {
      list(
        `_` = "SetStickerSetThumbRequest",
        stickerset = if (inherits(self$stickerset, "TLObject")) self$stickerset$to_list() else self$stickerset,
        thumb = if (inherits(self$thumb, "TLObject")) self$thumb$to_list() else self$thumb,
        thumb_document_id = self$thumb_document_id
      )
    },

    #' Serialize to raw bytes (simple TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      # helper: little-endian 32-bit int
      int32_to_raw_le <- function(x) {
        x <- as.integer(x)
        as.raw(c(
          bitwAnd(x, 0xFF),
          bitwAnd(bitwShiftR(x, 8), 0xFF),
          bitwAnd(bitwShiftR(x, 16), 0xFF),
          bitwAnd(bitwShiftR(x, 24), 0xFF)
        ))
      }
      # helper: little-endian 64-bit integer
      int64_to_raw_le <- function(x) {
        # convert numeric/integer64 to integer vector of 8 bytes
        # careful: numeric may lose precision for >53-bit; assume safe here
        x <- as.numeric(x)
        bytes <- raw(8)
        v <- x
        for (i in 1:8) {
          bytes[i] <- as.raw(as.integer(v %% 256))
          v <- floor(v / 256)
        }
        bytes
      }

      flag_thumb <- if (!is.null(self$thumb)) 1L else 0L
      flag_thumb_doc_id <- if (!is.null(self$thumb_document_id)) 2L else 0L
      flags <- flag_thumb + flag_thumb_doc_id

      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))

      flags_bytes <- int32_to_raw_le(flags)

      # For stickerset and thumb, assume they implement a $to_bytes() returning raw
      stickerset_bytes <- if (inherits(self$stickerset, "TLObject") && is.function(self$stickerset$to_bytes)) {
        self$stickerset$to_bytes()
      } else if (is.raw(self$stickerset)) {
        self$stickerset
      } else {
        raw(0)
      }

      thumb_bytes <- if (!is.null(self$thumb) && inherits(self$thumb, "TLObject") && is.function(self$thumb$to_bytes)) {
        self$thumb$to_bytes()
      } else {
        raw(0)
      }

      thumb_doc_id_bytes <- if (!is.null(self$thumb_document_id)) int64_to_raw_le(self$thumb_document_id) else raw(0)

      c(constructor_bytes, flags_bytes, stickerset_bytes, thumb_bytes, thumb_doc_id_bytes)
    }
  )
)

#' Create SetStickerSetThumbRequest from a reader
#'
#' The reader object is expected to provide methods:
#' - read_int() -> integer (32-bit)
#' - tgread_object() -> returns a TL object
#' - read_long() -> numeric/integer64 (64-bit)
#'
#' @param reader Reader object
#' @return SetStickerSetThumbRequest instance
#' @export
SetStickerSetThumbRequest$set("public", "from_reader", function(reader) {
  flags <- reader$read_int()
  stickerset_obj <- reader$tgread_object()
  thumb_obj <- if (bitwAnd(flags, 1L) != 0L) reader$tgread_object() else NULL
  thumb_document_id_val <- if (bitwAnd(flags, 2L) != 0L) reader$read_long() else NULL
  SetStickerSetThumbRequest$new(stickerset = stickerset_obj, thumb = thumb_obj, thumb_document_id = thumb_document_id_val)
})


#' SuggestShortNameRequest R6 class
#'
#' Represents a request to suggest a short name for a sticker set.
#'
#' @field CONSTRUCTOR_ID numeric constructor id (hex)
#' @field SUBCLASS_OF_ID numeric subclass id (hex)
#' @field title character — required
#'
#' @section Methods:
#' - initialize(title): create instance.
#' - to_list(): returns a list representation suitable for JSON/inspection.
#' - to_bytes(): returns a raw vector representing serialized bytes (TL-like).
#' - from_reader(reader): reads a request from a reader object and returns a new instance.
#'
#' @export
SuggestShortNameRequest <- R6::R6Class(
  "SuggestShortNameRequest",
  public = list(
    CONSTRUCTOR_ID = 0x4dafc503,
    SUBCLASS_OF_ID = 0xc44a4b21,
    title = NULL,

    #' Initialize a SuggestShortNameRequest
    #'
    #' @param title character Title string
    initialize = function(title) {
      if (missing(title) || !is.character(title) || length(title) != 1) stop("title must be a single string")
      self$title <- title
      invisible(self)
    },

    #' Convert to an R list (dictionary-like)
    #'
    #' @return list representation
    to_list = function() {
      list(
        `_` = "SuggestShortNameRequest",
        title = self$title
      )
    },

    #' Serialize to raw bytes (simple TL-like approximation)
    #'
    #' @return raw vector
    to_bytes = function() {
      # constructor bytes
      constructor_bytes <- as.raw(c(
        bitwAnd(self$CONSTRUCTOR_ID, 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 8), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 16), 0xFF),
        bitwAnd(bitwShiftR(self$CONSTRUCTOR_ID, 24), 0xFF)
      ))
      # Very simple string encoding: length (32-bit le) + utf8 bytes
      str_bytes <- charToRaw(enc2utf8(self$title))
      len_bytes <- as.raw(c(
        bitwAnd(length(str_bytes), 0xFF),
        bitwAnd(bitwShiftR(length(str_bytes), 8), 0xFF),
        bitwAnd(bitwShiftR(length(str_bytes), 16), 0xFF),
        bitwAnd(bitwShiftR(length(str_bytes), 24), 0xFF)
      ))
      c(constructor_bytes, len_bytes, str_bytes)
    }
  )
)

#' Create SuggestShortNameRequest from a reader
#'
#' Reader must implement tgread_string() returning a single string.
#'
#' @param reader Reader object
#' @return SuggestShortNameRequest instance
#' @export
SuggestShortNameRequest$set("public", "from_reader", function(reader) {
  title_val <- reader$tgread_string()
  SuggestShortNameRequest$new(title = title_val)
})
