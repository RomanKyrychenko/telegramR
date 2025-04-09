# Various helpers not related to the Telegram API itself

library(openssl)
library(bitops)

# Enum for entity types
EntityType <- list(
  USER = 0,
  CHAT = 1,
  CHANNEL = 2
)

# Logging setup
log <- function(...) cat(sprintf(...), "\n")

# Generate a random long integer (8 bytes), optionally signed
generate_random_long <- function(signed = TRUE) {
  raw_bytes <- as.raw(sample(0:255, 8, replace = TRUE))
  int_value <- sum(as.integer(raw_bytes) * 256^(seq_along(raw_bytes) - 1))
  if (signed && int_value > 2^63 - 1) {
    int_value <- int_value - 2^64
  }
  return(int_value)
}

# Ensure the parent directory exists
ensure_parent_dir_exists <- function(file_path) {
  parent <- dirname(file_path)
  if (nzchar(parent)) {
    dir.create(parent, recursive = TRUE, showWarnings = FALSE)
  }
}

# Add surrogate pairs to text
add_surrogate <- function(text) {
  sapply(strsplit(text, NULL)[[1]], function(x) {
    code <- utf8ToInt(x)
    if (code >= 0x10000 && code <= 0x10FFFF) {
      high <- bitShiftR(code - 0x10000, 10) + 0xD800
      low <- bitAnd(code - 0x10000, 0x3FF) + 0xDC00
      return(intToUtf8(c(high, low)))
    } else {
      return(x)
    }
  }) %>% paste0(collapse = "")
}

# Remove surrogate pairs from text
del_surrogate <- function(text) {
  intToUtf8(utf8ToInt(text), multiple = TRUE)
}

# Strip text and adjust entities
strip_text <- function(text, entities) {
  if (length(entities) == 0) {
    return(trimws(text))
  }

  len_ori <- nchar(text)
  text <- sub("^\\s+", "", text)
  left_offset <- len_ori - nchar(text)
  text <- sub("\\s+$", "", text)
  len_final <- nchar(text)

  for (i in seq_along(entities)) {
    e <- entities[[i]]
    if (e$length == 0) {
      entities[[i]] <- NULL
      next
    }

    if (e$offset + e$length > left_offset) {
      if (e$offset >= left_offset) {
        e$offset <- e$offset - left_offset
      } else {
        e$length <- e$offset + e$length - left_offset
        e$offset <- 0
      }
    } else {
      entities[[i]] <- NULL
      next
    }

    if (e$offset + e$length <= len_final) {
      next
    }
    if (e$offset >= len_final) {
      entities[[i]] <- NULL
    } else {
      e$length <- len_final - e$offset
    }
  }

  return(text)
}

# Generate key data from nonce
generate_key_data_from_nonce <- function(server_nonce, new_nonce) {
  server_nonce <- as.raw(server_nonce)
  new_nonce <- as.raw(new_nonce)

  hash1 <- sha1(c(new_nonce, server_nonce))
  hash2 <- sha1(c(server_nonce, new_nonce))
  hash3 <- sha1(c(new_nonce, new_nonce))

  key <- c(hash1, hash2[1:12])
  iv <- c(hash2[13:20], hash3, new_nonce[1:4])

  return(list(key = key, iv = iv))
}

# TotalList Class
TotalList <- R6::R6Class(
  "TotalList",
  public = list(
    items = NULL,
    total = 0,

    initialize = function(items = list()) {
      self$items <- items
      self$total <- 0
    },

    to_string = function() {
      paste0("[", paste(sapply(self$items, as.character), collapse = ", "), ", total=", self$total, "]")
    },

    to_repr = function() {
      paste0("[", paste(sapply(self$items, function(x) dput(x)), collapse = ", "), ", total=", self$total, "]")
    }
  )
)

# _FileStream Class
FileStream <- R6::R6Class(
  "FileStream",
  public = list(
    file = NULL,
    file_size = NULL,
    name = NULL,
    stream = NULL,
    close_stream = NULL,

    initialize = function(file, file_size = NULL) {
      if (inherits(file, "character")) {
        self$file <- normalizePath(file)
        self$name <- basename(self$file)
        self$file_size <- file.info(self$file)$size
        self$stream <- file(self$file, "rb")
        self$close_stream <- TRUE
      } else if (inherits(file, "raw")) {
        self$file <- file
        self$file_size <- length(file)
        self$stream <- rawConnection(file, "rb")
        self$close_stream <- TRUE
      } else if (inherits(file, "connection")) {
        self$file <- file
        self$name <- summary(file)$description
        self$stream <- file
        self$close_stream <- FALSE
      } else {
        stop("Unsupported file type")
      }
    },

    read = function(length = -1) {
      readBin(self$stream, "raw", n = length)
    },

    close = function() {
      if (self$close_stream && !is.null(self$stream)) {
        close(self$stream)
      }
    },

    get_file_size = function() {
      self$file_size
    },

    get_name = function() {
      self$name
    }
  )
)

# get_running_loop function
get_running_loop <- function() {
  if (getRversion() >= "3.7.0") {
    tryCatch({
      getDefaultCluster()
    }, error = function(e) {
      makeCluster(detectCores())
    })
  } else {
    makeCluster(detectCores())
  }
}
