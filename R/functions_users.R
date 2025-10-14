#' GetFullUserRequest
#'
#' An R6 class representing a request to get full information about a user.
#' This class inherits from TLRequest and is used to construct and serialize
#' Telegram API requests for retrieving detailed user data.
#'
#' @field CONSTRUCTOR_ID The constructor ID for this request (0xb60f5918).
#' @field SUBCLASS_OF_ID The subclass ID (0x83df9df5).
#' @field id The user identifier, which can be a TLInputUser object or a
#'   representation accepted by utils$get_input_user. This field is resolved
#'   during the request preparation.
#' @examples
#' # Example usage (assuming client and utils are set up)
#' request <- GetFullUserRequest$new(id = some_user_id)
#' request$resolve(client, utils)
#' dict <- request$to_dict()
#' bytes <- request$.bytes()
#'
#' @export
GetFullUserRequest <- R6::R6Class(
  "GetFullUserRequest",
  inherit = TLRequest,
  public = list(
    CONSTRUCTOR_ID = 0xb60f5918,
    SUBCLASS_OF_ID = 0x83df9df5,
    id = NULL,
    initialize = function(id = NULL) {
      self$id <- id
    },
    resolve = function(client, utils) {
      if (!is.null(self$id)) {
        self$id <- utils$get_input_user(client$get_input_entity(self$id))
      }
    },
    to_dict = function() {
      list(
        `_` = "GetFullUserRequest",
        id = if (!is.null(self$id) && inherits(self$id, "TLObject")) self$id$to_dict() else self$id
      )
    },
    .bytes = function() {
      con <- rawConnection(raw(0), "r+")
      on.exit(close(con))

      # constructor id (little-endian bytes)
      writeBin(as.raw(c(0x18, 0x59, 0x0f, 0xb6)), con)

      # id bytes
      if (!is.null(self$id) && is.function(self$id$.bytes)) {
        writeBin(self$id$.bytes(), con)
      } else if (!is.null(self$id) && is.raw(self$id)) {
        writeBin(self$id, con)
      }

      rawConnectionValue(con)
    },
    from_reader = function(reader) {
      id_obj <- reader$tgread_object()
      self$new(id = id_obj)
    }
  )
)


#' GetRequirementsToContactRequest
#'
#' Request to get a vector of RequirementToContact by input user references.
#'
#' Fields:
#' - id: list of TLInputUser (or representations accepted by utils/get_input_user)
GetRequirementsToContactRequest <- R6::R6Class(
  "GetRequirementsToContactRequest",
  inherit = TLRequest,
  public = list(
    CONSTRUCTOR_ID = 0xd89a83a3,
    SUBCLASS_OF_ID = 0x322623c3,
    id = NULL,
    initialize = function(id = NULL) {
      self$id <- id
    },
    resolve = function(client, utils) {
      if (!is.null(self$id) && length(self$id) > 0) {
        tmp_list <- list()
        for (i in seq_along(self$id)) {
          tmp_list[[i]] <- utils$get_input_user(client$get_input_entity(self$id[[i]]))
        }
        self$id <- tmp_list
      }
    },
    to_dict = function() {
      list(
        `_` = "GetRequirementsToContactRequest",
        id = if (is.null(self$id)) list() else lapply(self$id, function(x) if (inherits(x, "TLObject")) x$to_dict() else x)
      )
    },
    .bytes = function() {
      con <- rawConnection(raw(0), "r+")
      on.exit(close(con))

      # constructor id (little-endian)
      writeBin(as.raw(c(0xa3, 0x83, 0x9a, 0xd8)), con)

      # vector constructor for id (0x1cb5c415 little-endian)
      writeBin(as.raw(c(0x15, 0xc4, 0xb5, 0x1c)), con)

      # length of id vector (int32 little-endian)
      writeBin(as.integer(if (is.null(self$id)) 0L else length(self$id)), con, size = 4, endian = "little")

      # append each id object's bytes
      if (!is.null(self$id) && length(self$id) > 0) {
        for (elem in self$id) {
          if (!is.null(elem) && is.function(elem$.bytes)) {
            writeBin(elem$.bytes(), con)
          } else if (!is.null(elem) && is.raw(elem)) {
            writeBin(elem, con)
          }
        }
      }

      rawConnectionValue(con)
    },
    from_reader = function(reader) {
      # read and ignore the vector constructor int
      reader$read_int()
      id_list <- list()
      count <- reader$read_int()
      if (count > 0) {
        for (i in seq_len(count)) {
          x <- reader$tgread_object()
          id_list[[i]] <- x
        }
      }
      self$new(id = id_list)
    }
  )
)


#' GetSavedMusicRequest
#'
#' Request to get saved music for a user.
#'
#' Fields:
#' - id: TLInputUser or a representation accepted by utils$get_input_user
#' - offset: integer
#' - limit: integer
#' - hash: integer64 (may be represented as numeric in R)
#'
#' Returns: users.SavedMusic (either SavedMusicNotModified or SavedMusic)
GetSavedMusicRequest <- R6::R6Class(
  "GetSavedMusicRequest",
  inherit = TLRequest,
  public = list(
    CONSTRUCTOR_ID = 0x788d7fe3,
    SUBCLASS_OF_ID = 0xf813ae37,
    id = NULL,
    offset = NULL,
    limit = NULL,
    hash = NULL,
    initialize = function(id = NULL, offset = NULL, limit = NULL, hash = NULL) {
      self$id <- id
      self$offset <- offset
      self$limit <- limit
      self$hash <- hash
    },
    resolve = function(client, utils) {
      if (!is.null(self$id)) {
        self$id <- utils$get_input_user(client$get_input_entity(self$id))
      }
    },
    to_dict = function() {
      list(
        `_` = "GetSavedMusicRequest",
        id = if (!is.null(self$id) && inherits(self$id, "TLObject")) self$id$to_dict() else self$id,
        offset = self$offset,
        limit = self$limit,
        hash = self$hash
      )
    },
    .bytes = function() {
      con <- rawConnection(raw(0), "r+")
      on.exit(close(con))

      # constructor id (little-endian)
      writeBin(as.raw(c(0xe3, 0x7f, 0x8d, 0x78)), con)

      # id bytes
      if (!is.null(self$id) && is.function(self$id$.bytes)) {
        writeBin(self$id$.bytes(), con)
      } else if (!is.null(self$id) && is.raw(self$id)) {
        writeBin(self$id, con)
      }

      # offset (int32 little-endian)
      writeBin(as.integer(self$offset), con, size = 4, endian = "little")

      # limit (int32 little-endian)
      writeBin(as.integer(self$limit), con, size = 4, endian = "little")

      # hash (int64 little-endian). Represented as numeric in R; may lose precision for very large values.
      writeBin(as.numeric(self$hash), con, size = 8, endian = "little")

      rawConnectionValue(con)
    },
    from_reader = function(reader) {
      id_obj <- reader$tgread_object()
      offset_val <- reader$read_int()
      limit_val <- reader$read_int()
      hash_val <- reader$read_long()
      self$new(id = id_obj, offset = offset_val, limit = limit_val, hash = hash_val)
    }
  )
)


#' GetSavedMusicByIDRequest
#'
#' Request to get saved music by document IDs for a user.
#'
#' Fields:
#' - id: TLInputUser or a representation accepted by utils$get_input_user
#' - documents: list of TLInputDocument or representations accepted by utils$get_input_document
GetSavedMusicByIDRequest <- R6::R6Class(
  "GetSavedMusicByIDRequest",
  inherit = TLRequest,
  public = list(
    CONSTRUCTOR_ID = 0x7573a4e9,
    SUBCLASS_OF_ID = 0xf813ae37,
    id = NULL,
    documents = NULL,
    initialize = function(id = NULL, documents = NULL) {
      self$id <- id
      self$documents <- documents
    },
    resolve = function(client, utils) {
      # Translate asynchronous style to synchronous calls expected in R.
      if (!is.null(self$id)) {
        self$id <- utils$get_input_user(client$get_input_entity(self$id))
      }
      if (!is.null(self$documents) && length(self$documents) > 0) {
        tmp_list <- list()
        for (i in seq_along(self$documents)) {
          tmp_list[[i]] <- utils$get_input_document(self$documents[[i]])
        }
        self$documents <- tmp_list
      }
    },
    to_dict = function() {
      list(
        `_` = "GetSavedMusicByIDRequest",
        id = if (!is.null(self$id) && inherits(self$id, "TLObject")) self$id$to_dict() else self$id,
        documents = if (is.null(self$documents)) list() else lapply(self$documents, function(x) if (inherits(x, "TLObject")) x$to_dict() else x)
      )
    },
    .bytes = function() {
      con <- rawConnection(raw(0), "r+")
      on.exit(close(con))

      # constructor id (little-endian bytes)
      writeBin(as.raw(c(0xe9, 0xa4, 0x73, 0x75)), con)

      # id bytes (assumes TLObject-like id with method .bytes)
      if (!is.null(self$id) && is.function(self$id$.bytes)) {
        writeBin(self$id$.bytes(), con)
      } else if (!is.null(self$id) && is.raw(self$id)) {
        writeBin(self$id, con)
      }

      # vector constructor for documents (0x1cb5c415 little-endian: b'\x15\xc4\xb5\x1c')
      writeBin(as.raw(c(0x15, 0xc4, 0xb5, 0x1c)), con)

      # length of documents vector (int32 little-endian)
      writeBin(as.integer(if (is.null(self$documents)) 0L else length(self$documents)), con, size = 4, endian = "little")

      # append each document object's bytes
      if (!is.null(self$documents) && length(self$documents) > 0) {
        for (elem in self$documents) {
          if (!is.null(elem) && is.function(elem$.bytes)) {
            writeBin(elem$.bytes(), con)
          } else if (!is.null(elem) && is.raw(elem)) {
            writeBin(elem, con)
          }
        }
      }

      rawConnectionValue(con)
    },
    from_reader = function(reader) {
      id_obj <- reader$tgread_object()
      # read and ignore the vector constructor int (present in Python-generated code)
      reader$read_int()
      docs_list <- list()
      count <- reader$read_int()
      if (count > 0) {
        for (i in seq_len(count)) {
          x <- reader$tgread_object()
          docs_list[[i]] <- x
        }
      }
      self$new(id = id_obj, documents = docs_list)
    }
  )
)


#' GetUsersRequest
#'
#' Request to get a vector of users by input user references.
#'
#' Fields:
#' - id: list of TLInputUser (or representations accepted by utils/get_input_user)
GetUsersRequest <- R6::R6Class(
  "GetUsersRequest",
  inherit = TLRequest,
  public = list(
    CONSTRUCTOR_ID = 0x0d91a548,
    SUBCLASS_OF_ID = 0x406da4d,
    id = NULL,
    initialize = function(id = NULL) {
      self$id <- id
    },
    resolve = function(client, utils) {
      # Translate asynchronous style to synchronous calls expected in R.
      if (!is.null(self$id) && length(self$id) > 0) {
        tmp_list <- list()
        for (i in seq_along(self$id)) {
          tmp_list[[i]] <- utils$get_input_user(client$get_input_entity(self$id[[i]]))
        }
        self$id <- tmp_list
      }
    },
    to_dict = function() {
      list(
        `_` = "GetUsersRequest",
        id = if (is.null(self$id)) list() else lapply(self$id, function(x) if (inherits(x, "TLObject")) x$to_dict() else x)
      )
    },
    .bytes = function() {
      con <- rawConnection(raw(0), "r+")
      on.exit(close(con))

      # constructor id (little-endian bytes)
      writeBin(as.raw(c(0x48, 0xa5, 0x91, 0x0d)), con)

      # vector constructor (0x1cb5c415 little-endian)
      writeBin(as.raw(c(0x15, 0xc4, 0xb5, 0x1c)), con)

      # length of id vector (int32 little-endian)
      writeBin(as.integer(if (is.null(self$id)) 0L else length(self$id)), con, size = 4, endian = "little")

      # append each id object's bytes
      if (!is.null(self$id) && length(self$id) > 0) {
        for (elem in self$id) {
          if (!is.null(elem) && is.function(elem$.bytes)) {
            writeBin(elem$.bytes(), con)
          } else if (!is.null(elem) && is.raw(elem)) {
            writeBin(elem, con)
          }
        }
      }

      rawConnectionValue(con)
    },
    from_reader = function(reader) {
      # read and ignore the vector constructor int (present in Python-generated code)
      reader$read_int()
      id_list <- list()
      count <- reader$read_int()
      if (count > 0) {
        for (i in seq_len(count)) {
          x <- reader$tgread_object()
          id_list[[i]] <- x
        }
      }
      self$new(id = id_list)
    }
  )
)


#' @title SetSecureValueErrorsRequest R6 Class
#'
#' @description
#' Represents a request to set secure value errors for a Telegram user. This class is typically used internally to serialize and deserialize requests and responses when interacting with the Telegram API.
#'
#' @field CONSTRUCTOR_ID Integer. Unique constructor ID for this request type.
#' @field SUBCLASS_OF_ID Integer. Unique subclass ID.
#' @field id Object or NULL. The user identifier, expected to be a TLObject or compatible input.
#' @field errors List or NULL. List of error objects (typically TLObjects) to be set for the user.
#'
#' @export
SetSecureValueErrorsRequest <- R6::R6Class(
  "SetSecureValueErrorsRequest",
  inherit = TLRequest,
  public = list(
    CONSTRUCTOR_ID = 0x90c894b5,
    SUBCLASS_OF_ID = 0xf5b399ac,
    id = NULL,
    errors = NULL,
    initialize = function(id = NULL, errors = NULL) {
      self$id <- id
      self$errors <- errors
    },
    resolve = function(client, utils) {
      # translate await/async style to synchronous calls expected in R
      self$id <- utils$get_input_user(client$get_input_entity(self$id))
    },
    to_dict = function() {
      list(
        `_` = "SetSecureValueErrorsRequest",
        id = if (!is.null(self$id) && inherits(self$id, "TLObject")) self$id$to_dict() else self$id,
        errors = if (is.null(self$errors)) list() else lapply(self$errors, function(x) if (inherits(x, "TLObject")) x$to_dict() else x)
      )
    },
    .bytes = function() {
      # build raw bytes similar to Python implementation
      con <- rawConnection(raw(0), "r+")
      on.exit(close(con))

      # constructor id (little-endian bytes as in Python)
      writeBin(as.raw(c(0xb5, 0x94, 0xc8, 0x90)), con)

      # id bytes (assumes TLObject-like id with method .bytes)
      if (!is.null(self$id) && is.function(self$id$.bytes)) {
        writeBin(self$id$.bytes(), con)
      } else if (!is.null(self$id) && is.raw(self$id)) {
        writeBin(self$id, con)
      }

      # vector constructor (0x1cb5c415 in little-endian: b'\x15\xc4\xb5\x1c')
      writeBin(as.raw(c(0x15, 0xc4, 0xb5, 0x1c)), con)

      # length of errors (int32 little-endian)
      writeBin(as.integer(length(self$errors)), con, size = 4, endian = "little")

      # append each error object's bytes
      if (!is.null(self$errors) && length(self$errors) > 0) {
        for (err in self$errors) {
          if (!is.null(err) && is.function(err$.bytes)) {
            writeBin(err$.bytes(), con)
          }
        }
      }

      rawConnectionValue(con)
    },
    from_reader = function(reader) {
      id <- reader$tgread_object()
      # read and ignore the vector constructor int (Python code called reader.read_int())
      reader$read_int()
      errors <- list()
      count <- reader$read_int()
      if (count > 0) {
        for (i in seq_len(count)) {
          x <- reader$tgread_object()
          errors[[i]] <- x
        }
      }
      self$new(id = id, errors = errors)
    }
  )
)
