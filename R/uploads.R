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

#' @title TelegramClient class for file upload operations
#' @description A class containing methods for uploading files to Telegram.
UploadMethods <- R6Class("UploadMethods",
  public = list(
    #' @field session The session object for the Telegram client.
    session = NULL,

    #' @field api_id The API ID for the Telegram client.
    api_id = NULL,

    #' @field api_hash The API hash for the Telegram client.
    api_hash = NULL,

    #' @description Initializes the UploadMethods object.
    #' @param session The session object for the Telegram client.
    #' @param api_id The API ID for the Telegram client.
    #' @param api_hash The API hash for the Telegram client.
    #' @return None.
    initialize = function(session, api_id, api_hash) {
      self$session <- session
      self$api_id <- api_id
      self$api_hash <- api_hash
    },

    #' @description Sends a file to a specified entity.
    #' @param entity The entity to send the file to.
    #' @param file The file to send (path, raw bytes, or URL).
    #' @param caption Optional caption for the media.
    #' @param force_document Whether to force sending the file as a document.
    #' @param file_size Optional size of the file in bytes.
    #' @param progress_callback Optional callback to track upload progress.
    #' @param ... Additional parameters.
    #' @return A future object representing the result of the operation.
    send_file = function(entity, file, caption = NULL, force_document = FALSE,
                         file_size = NULL, progress_callback = NULL, ...) {
      future({
        input_entity <- self$get_input_entity(entity)
        media_result <- self$file_to_media(
          file,
          force_document = force_document,
          file_size = file_size,
          progress_callback = progress_callback,
          ...
        )

        file_handle <- media_result$file_handle
        media <- media_result$media

        if (is.null(media)) {
          stop(paste("Cannot use", file, "as file"))
        }

        request <- list(
          entity = input_entity,
          media = media,
          message = caption %||% ""
        )

        result <- self$invoke(request)
        self$get_response_message(request, result, entity)
      })
    },

    #' @description Uploads a file to Telegram's servers without sending it.
    #' @param file The file to upload.
    #' @param part_size_kb The size of chunks in KB.
    #' @param file_size Optional size of the file in bytes.
    #' @param progress_callback Optional callback to track upload progress.
    #' @param ... Additional parameters.
    #' @return A future object representing the uploaded file details.
    upload_file = function(file, part_size_kb = NULL, file_size = NULL,
                           progress_callback = NULL, ...) {
      future::future({
        stream <- FileStream$new(file, file_size)
        file_size <- stream$file_size

        if (is.null(part_size_kb)) {
          part_size_kb <- self$get_appropriated_part_size(file_size)
        }

        if (part_size_kb > 512) {
          stop("The part size must be less or equal to 512KB")
        }

        part_size <- as.integer(part_size_kb * 1024)
        file_id <- as.character(sample.int(2^31 - 1, 1))
        file_name <- stream$name %||% file_id
        is_big <- file_size > 10 * 1024 * 1024
        hash_md5 <- md5_init()
        part_count <- ceiling(file_size / part_size)

        pos <- 0
        for (part_index in 0:(part_count - 1)) {
          part <- stream$read(part_size)
          pos <- pos + length(part)

          if (!is_big) {
            hash_md5 <- md5_update(hash_md5, part)
          }

          if (is_big) {
            request <- list(
              method = "upload.saveBigFilePart",
              file_id = file_id,
              file_part = part_index,
              file_total_parts = part_count,
              bytes = part
            )
          } else {
            request <- list(
              method = "upload.saveFilePart",
              file_id = file_id,
              file_part = part_index,
              bytes = part
            )
          }

          result <- self$invoke(request)

          if (result) {
            if (!is.null(progress_callback)) {
              progress_callback(pos, file_size)
            }
          } else {
            stop(paste("Failed to upload file part", part_index))
          }
        }

        if (is_big) {
          list(
            type = "InputFileBig",
            id = file_id,
            parts = part_count,
            name = file_name
          )
        } else {
          list(
            type = "InputFile",
            id = file_id,
            parts = part_count,
            name = file_name,
            md5_checksum = md5_final(hash_md5),
            size = file_size
          )
        }
      })
    },

    #' @description Converts a file to a media format.
    #' @param file The file to convert.
    #' @param force_document Whether to force sending the file as a document.
    #' @param file_size Optional size of the file in bytes.
    #' @param progress_callback Optional callback to track upload progress.
    #' @param attributes Optional attributes for the media.
    #' @param thumb Optional thumbnail for the media.
    #' @param allow_cache Whether to allow caching of the media.
    #' @param ... Additional parameters.
    #' @return A list containing the file handle, media, and whether it is an image.
    file_to_media = function(file, force_document = FALSE, file_size = NULL,
                             progress_callback = NULL, attributes = NULL,
                             thumb = NULL, allow_cache = TRUE, voice_note = FALSE,
                             video_note = FALSE, supports_streaming = FALSE,
                             mime_type = NULL, as_image = NULL, ttl = NULL,
                             nosound_video = NULL) {
      if (is.null(file)) {
        return(list(file_handle = NULL, media = NULL, as_image = NULL))
      }

      is_image <- self$is_image(file)
      as_image <- if (is.null(as_image)) is_image && !force_document else as_image

      if (is.character(file) && grepl("^https?://", file)) {
        if (as_image) {
          media <- list(type = "InputMediaPhotoExternal", url = file)
        } else {
          media <- list(type = "InputMediaDocumentExternal", url = file)
        }
        return(list(file_handle = NULL, media = media, as_image = as_image))
      } else {
        file_handle <- self$upload_file(
          self$resize_photo_if_needed(file, as_image),
          file_size = file_size,
          progress_callback = progress_callback
        )

        file_handle_result <- value(file_handle)

        if (as_image) {
          media <- list(type = "InputMediaUploadedPhoto", file = file_handle_result)
        } else {
          attr_result <- self$get_attributes(file, attributes = attributes)
          attributes <- attr_result$attributes
          mime_type <- attr_result$mime_type

          if (!is.null(thumb)) {
            thumb_handle <- self$upload_file(thumb, file_size = file_size)
            thumb_result <- value(thumb_handle)
          } else {
            thumb_result <- NULL
          }

          media <- list(
            type = "InputMediaUploadedDocument",
            file = file_handle_result,
            mime_type = mime_type,
            attributes = attributes,
            thumb = thumb_result
          )
        }

        return(list(
          file_handle = file_handle_result,
          media = media,
          as_image = as_image
        ))
      }
    },

    #' @description Resizes a photo if needed to meet Telegram's requirements.
    #' @param file The file to resize.
    #' @param is_image Whether the file is an image.
    #' @param width The maximum width of the image.
    #' @param height The maximum height of the image.
    #' @return The resized file or the original file if no resizing is needed.
    resize_photo_if_needed = function(file, is_image, width = 2560, height = 2560) {
      if (!is_image || !requireNamespace("magick", quietly = TRUE)) {
        return(file)
      }

      if (is.character(file) && file.exists(file)) {
        file_size <- file.info(file)$size
        if (file_size <= 10000000) {
          tryCatch(
            {
              img <- magick::image_read(file)
              img_info <- magick::image_info(img)

              if (img_info$width <= width && img_info$height <= height) {
                return(file)
              }

              img_resized <- magick::image_resize(img, paste0(width, "x", height, "^"))
              temp_file <- tempfile(fileext = ".jpg")
              magick::image_write(img_resized, temp_file, format = "jpeg", quality = 90)
              return(temp_file)
            },
            error = function(e) {
              return(file)
            }
          )
        } else {
          return(file)
        }
      } else if (is.raw(file)) {
        tryCatch(
          {
            img <- magick::image_read(file)
            img_info <- magick::image_info(img)

            if (img_info$width <= width && img_info$height <= height) {
              return(file)
            }

            img_resized <- magick::image_resize(img, paste0(width, "x", height, "^"))
            return(magick::image_write(img_resized, format = "jpeg", quality = 90))
          },
          error = function(e) {
            return(file)
          }
        )
      }

      return(file)
    },

    #' @description Checks if a file is an image.
    #' @param file The file to check.
    #' @return TRUE if the file is an image, FALSE otherwise.
    is_image = function(file) {
      if (is.character(file) && file.exists(file)) {
        ext <- tolower(tools::file_ext(file))
        return(ext %in% c("jpg", "jpeg", "png", "bmp", "webp"))
      }
      return(FALSE)
    },

    #' @description Determines the appropriate part size for file uploads.
    #' @param file_size The size of the file in bytes.
    #' @return The part size in KB.
    get_appropriated_part_size = function(file_size) {
      if (file_size <= 104857600) { # 100MB
        return(64)
      } else if (file_size <= 786432000) { # 750MB
        return(128)
      } else {
        return(256)
      }
    },

    #' @description Invokes an API request.
    #' @param request The request to invoke.
    #' @return The result of the API call.
    invoke = function(request) {
      TRUE # Mock implementation
    }
  )
)
