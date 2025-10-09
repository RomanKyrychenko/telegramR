#' GetDifferenceRequest R6 class
#'
#' TLRequest: GetDifferenceRequest
#'
#' @field lang_pack character Language pack identifier
#' @field lang_code character Language code
#' @field from_version integer Version to get difference from
#' @return A GetDifferenceRequest R6 object
#' @examples
#' # req <- GetDifferenceRequest$new("default", "en", 123)
GetDifferenceRequest <- R6::R6Class(
  "GetDifferenceRequest",
  inherit = TLRequest,
  public = list(
    lang_pack = NULL,
    lang_code = NULL,
    from_version = NULL,
    initialize = function(lang_pack, lang_code, from_version) {
      self$lang_pack <- lang_pack
      self$lang_code <- lang_code
      self$from_version <- as.integer(from_version)
    },
    to_dict = function() {
      list(
        '_' = 'GetDifferenceRequest',
        lang_pack = self$lang_pack,
        lang_code = self$lang_code,
        from_version = self$from_version
      )
    },
    bytes = function() {
      version_raw <- writeBin(as.integer(self$from_version), raw(), size = 4, endian = "little")
      c(
        as.raw(c(0xa5, 0x4a, 0x98, 0xcd)),
        self$serialize_bytes(self$lang_pack),
        self$serialize_bytes(self$lang_code),
        version_raw
      )
    },
    from_reader = function(reader) {
      lang_pack <- reader$tgread_string()
      lang_code <- reader$tgread_string()
      from_version <- reader$read_int()
      GetDifferenceRequest$new(lang_pack = lang_pack, lang_code = lang_code, from_version = from_version)
    }
  )
)


#' GetLangPackRequest R6 class
#'
#' TLRequest: GetLangPackRequest
#'
#' @field lang_pack character Language pack identifier
#' @field lang_code character Language code
#' @return A GetLangPackRequest R6 object
#' @examples
#' # req <- GetLangPackRequest$new("default", "en")
GetLangPackRequest <- R6::R6Class(
  "GetLangPackRequest",
  inherit = TLRequest,
  public = list(
    lang_pack = NULL,
    lang_code = NULL,
    initialize = function(lang_pack, lang_code) {
      self$lang_pack <- lang_pack
      self$lang_code <- lang_code
    },
    to_dict = function() {
      list('_' = 'GetLangPackRequest', lang_pack = self$lang_pack, lang_code = self$lang_code)
    },
    bytes = function() {
      c(
        as.raw(c(0x0a, 0x33, 0xf2, 0xf2)),
        self$serialize_bytes(self$lang_pack),
        self$serialize_bytes(self$lang_code)
      )
    },
    from_reader = function(reader) {
      lang_pack <- reader$tgread_string()
      lang_code <- reader$tgread_string()
      GetLangPackRequest$new(lang_pack = lang_pack, lang_code = lang_code)
    }
  )
)

#' GetLanguageRequest R6 class
#'
#' TLRequest: GetLanguageRequest
#'
#' @field lang_pack character Language pack identifier
#' @field lang_code character Language code
#' @return A GetLanguageRequest R6 object
#' @examples
#' # req <- GetLanguageRequest$new("default", "en")
GetLanguageRequest <- R6::R6Class(
  "GetLanguageRequest",
  inherit = TLRequest,
  public = list(
    lang_pack = NULL,
    lang_code = NULL,
    initialize = function(lang_pack, lang_code) {
      self$lang_pack <- lang_pack
      self$lang_code <- lang_code
    },
    to_dict = function() {
      list('_' = 'GetLanguageRequest', lang_pack = self$lang_pack, lang_code = self$lang_code)
    },
    bytes = function() {
      c(
        as.raw(c(0x02, 0x65, 0x59, 0x6a)),
        self$serialize_bytes(self$lang_pack),
        self$serialize_bytes(self$lang_code)
      )
    },
    from_reader = function(reader) {
      lang_pack <- reader$tgread_string()
      lang_code <- reader$tgread_string()
      GetLanguageRequest$new(lang_pack = lang_pack, lang_code = lang_code)
    }
  )
)


#' GetLanguagesRequest R6 class
#'
#' TLRequest: GetLanguagesRequest
#'
#' @field lang_pack character Language pack identifier
#' @return A GetLanguagesRequest R6 object
#' @examples
#' # req <- GetLanguagesRequest$new("default")
GetLanguagesRequest <- R6::R6Class(
  "GetLanguagesRequest",
  inherit = TLRequest,
  public = list(
    lang_pack = NULL,
    initialize = function(lang_pack) {
      self$lang_pack <- lang_pack
    },
    to_dict = function() {
      list('_' = 'GetLanguagesRequest', lang_pack = self$lang_pack)
    },
    bytes = function() {
      c(
        as.raw(c(0x8f, 0x97, 0xc6, 0x42)),
        self$serialize_bytes(self$lang_pack)
      )
    },
    from_reader = function(reader) {
      lang_pack <- reader$tgread_string()
      GetLanguagesRequest$new(lang_pack = lang_pack)
    }
  )
)

#' GetStringsRequest R6 class
#'
#' TLRequest: GetStringsRequest
#'
#' @field lang_pack character Language pack identifier
#' @field lang_code character Language code
#' @field keys character Vector of keys to request
#' @return A GetStringsRequest R6 object
#' @examples
#' # req <- GetStringsRequest$new("default", "en", c("hello", "bye"))
GetStringsRequest <- R6::R6Class(
  "GetStringsRequest",
  inherit = TLRequest,
  public = list(
    lang_pack = NULL,
    lang_code = NULL,
    keys = NULL,
    initialize = function(lang_pack, lang_code, keys) {
      self$lang_pack <- lang_pack
      self$lang_code <- lang_code
      self$keys <- keys
    },
    to_dict = function() {
      list(
        '_' = 'GetStringsRequest',
        lang_pack = self$lang_pack,
        lang_code = self$lang_code,
        keys = if (is.null(self$keys)) character() else as.character(self$keys)
      )
    },
    bytes = function() {
      # vector constructor (little-endian): 0x1cb5c415 -> bytes 15 c4 b5 1c
      len_raw <- writeBin(as.integer(length(self$keys)), raw(), size = 4, endian = "little")
      keys_raw <- if (length(self$keys) == 0) raw() else do.call(c, lapply(self$keys, self$serialize_bytes))
      c(
        as.raw(c(0x03, 0x38, 0xea, 0xef)),
        self$serialize_bytes(self$lang_pack),
        self$serialize_bytes(self$lang_code),
        as.raw(c(0x15, 0xc4, 0xb5, 0x1c)),
        len_raw,
        keys_raw
      )
    },
    from_reader = function(reader) {
      lang_pack <- reader$tgread_string()
      lang_code <- reader$tgread_string()
      # expecting vector constructor then count
      vector_magic <- reader$read_int()
      count <- reader$read_int()
      keys <- character(count)
      for (i in seq_len(count)) {
        keys[i] <- reader$tgread_string()
      }
      GetStringsRequest$new(lang_pack = lang_pack, lang_code = lang_code, keys = keys)
    }
  )
)
