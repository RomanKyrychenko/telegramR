#' @title FileStream helper class
#' @description A helper class to handle file streams for uploading files.
FileStream <- R6::R6Class("FileStream",
  public = list(
    #' @field file The file to be streamed (can be a path, raw bytes, etc.).
    file = NULL,

    #' @field file_size The size of the file in bytes.
    file_size = NULL,

    #' @field name The name of the file.
    name = NULL,

    #' @description Initializes the FileStream object.
    #' @param file The file to be streamed (path, raw bytes, etc.).
    #' @param file_size Optional size of the file in bytes.
    initialize = function(file, file_size = NULL) {
      self$file <- file
      self$name <- if (is.character(file)) basename(file) else "unnamed"

      if (!is.null(file_size)) {
        self$file_size <- file_size
      } else if (is.character(file) && file.exists(file)) {
        self$file_size <- file.info(file)$size
      } else if (is.raw(file)) {
        self$file_size <- length(file)
      }
    },

    #' @description Reads a chunk of the file.
    #' @param size The size of the chunk to read in bytes.
    #' @return A raw vector containing the file chunk.
    read = function(size) {
      if (is.character(self$file) && file.exists(self$file)) {
        con <- file(self$file, "rb")
        on.exit(close(con))
        readBin(con, raw(), size)
      } else if (is.raw(self$file)) {
        self$file[seq_len(min(size, length(self$file)))]
      }
    }
  )
)
