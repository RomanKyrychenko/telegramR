#' @import future
#' @import promises

# Constants for file operations
MIN_CHUNK_SIZE <- 4096
MAX_CHUNK_SIZE <- 512 * 1024
TIMED_OUT_SLEEP <- 1

#' @title CdnRedirect class
#' @description Class for handling CDN redirects.
CdnRedirect <- R6::R6Class(
  "CdnRedirect",
  public = list(

    #' @field cdn_redirect The CDN redirect object.
    cdn_redirect = NULL,

    #' @description Create a new CdnRedirect instance.
    #' @param cdn_redirect The CDN redirect object.
    initialize = function(cdn_redirect = NULL) {
      self$cdn_redirect <- cdn_redirect
    }
  )
)

#' @title DirectDownloadIter class
#' @description Class for direct file downloading iteration.
DirectDownloadIter <- R6::R6Class(
  "DirectDownloadIter",
  inherit = RequestIter,
  public = list(

    #' @field total The total size of the file.
    total = 0,

    #' @field stride The stride size.
    stride = NULL,

    #' @field chunk_size The chunk size.
    chunk_size = NULL,

    #' @field last_part The last part of the file.
    last_part = NULL,

    #' @field msg_data Message data if applicable.
    msg_data = NULL,

    #' @field timed_out Whether the download timed out.
    timed_out = FALSE,

    #' @field exported Whether the sender is exported.
    exported = FALSE,

    #' @field sender The sender object.
    sender = NULL,

    #' @field client The TelegramClient instance.
    client = NULL,

    #' @field cdn_redirect The CDN redirect object.
    cdn_redirect = NULL,

    #' @description Initialize the download iterator.
    #' @param client The TelegramClient instance.
    #' @param file The file to download.
    #' @param dc_id The data center ID.
    #' @param offset The byte offset.
    #' @param stride The stride size.
    #' @param chunk_size The chunk size.
    #' @param request_size The request size.
    #' @param file_size The file size.
    #' @param msg_data Message data if applicable.
    #' @param cdn_redirect CDN redirect if applicable.
    init = function(file, dc_id, offset, stride, chunk_size, request_size, file_size, msg_data, cdn_redirect = NULL) {
      future({
        if (is.null(cdn_redirect)) {
          self$request <- list(
            type = "GetFileRequest",
            file = file,
            offset = offset,
            limit = request_size
          )
          self$client <- self$client
        } else {
          self$request <- list(
            type = "GetCdnFileRequest",
            file_token = cdn_redirect$file_token,
            offset = offset,
            limit = request_size
          )
          self$client <- self$client$get_cdn_client(cdn_redirect)
        }

        self$cdn_redirect <- cdn_redirect
        self$total <- file_size
        self$stride <- stride
        self$chunk_size <- chunk_size
        self$last_part <- NULL
        self$msg_data <- msg_data
        self$timed_out <- FALSE

        self$exported <- !is.null(dc_id) && self$client$session$dc_id != dc_id

        if (!self$exported) {
          self$sender <- self$client$sender
        } else {
          tryCatch({
            self$sender <- self$client$borrow_exported_sender(dc_id)
          }, error = function(e) {
            if (grepl("DcIdInvalidError", e$message)) {
              config <- self$client$call(list(type = "GetConfigRequest"))
              for (option in config$dc_options) {
                if (option$ip_address == self$client$session$server_address) {
                  self$client$session$set_dc(
                    option$id, option$ip_address, option$port
                  )
                  self$client$session$save()
                  break
                }
              }
              self$sender <- self$client$sender
              self$exported <- FALSE
            } else {
              stop(e)
            }
          })
        }

        return(NULL)
      }) %...>% return()
    },

    #' @description Load the next chunk of data.
    load_next_chunk = function() {
      future({
        cur <- self$request()
        self$buffer$append(cur)
        if (length(cur) < self$request$limit) {
          self$left <- length(self$buffer)
          self$close()
        } else {
          self$request$offset <- self$request$offset + self$stride
        }
        return(NULL)
      }) %...>% return()
    },

    #' @description Make a request to fetch data.
    request = function() {
      future({
        tryCatch({
          result <- self$client$call(self$sender, self$request)
          self$timed_out <- FALSE

          if (inherits(result, "upload.FileCdnRedirect")) {
            if (self$client$mb_entity_cache$self_bot) {
              stop("FileCdnRedirect but the GetCdnFileRequest API access for bot users is restricted. Try to change api_id to avoid FileCdnRedirect")
            }
            stop_with_redirect <- function(e) {
              e$redirect <- result
              class(e) <- c("CdnRedirect", class(e))
              stop(e)
            }
            stop_with_redirect("CDN redirect")
          }

          if (inherits(result, "upload.CdnFileReuploadNeeded")) {
            self$client$call(
              self$client$sender,
              list(
                type = "ReuploadCdnFileRequest",
                file_token = self$cdn_redirect$file_token,
                request_token = result$request_token
              )
            )
            result <- self$client$call(self$sender, self$request)
            return(result$bytes)
          } else {
            return(result$bytes)
          }
        }, error = function(e) {
          if (inherits(e, "TimedOutError")) {
            if (self$timed_out) {
              self$client$log_warning("Got two timeouts in a row while downloading file")
              stop(e)
            }

            self$timed_out <- TRUE
            self$client$log_info("Got timeout while downloading file, retrying once")
            Sys.sleep(TIMED_OUT_SLEEP)
            return(self$request())
          }

          if (inherits(e, "FileMigrateError")) {
            self$client$log_info("File lives in another DC")
            self$sender <- self$client$borrow_exported_sender(e$new_dc)
            self$exported <- TRUE
            return(self$request())
          }

          if (inherits(e, "FilerefUpgradeNeededError") || inherits(e, "FileReferenceExpiredError")) {
            # Only implemented for documents which are the ones that may take that long to download
            if (is.null(self$msg_data) ||
                !inherits(self$request$location, "InputDocumentFileLocation") ||
                self$request$location$thumb_size != "") {
              stop(e)
            }

            self$client$log_info("File ref expired during download; refetching message")
            chat <- self$msg_data[[1]]
            msg_id <- self$msg_data[[2]]
            msg <- self$client$get_messages(chat, ids = msg_id)

            if (!inherits(msg$media, "MessageMediaDocument")) {
              stop(e)
            }

            document <- msg$media$document

            # Message media may have been edited for something else
            if (document$id != self$request$location$id) {
              stop(e)
            }

            self$request$location$file_reference <- document$file_reference
            return(self$request())
          }

          stop(e)
        })
      }) %...>% return()
    },

    #' @description Close the iterator and clean up resources.
    close = function() {
      future({
        if (is.null(self$sender)) {
          return(NULL)
        }

        tryCatch({
          if (self$exported) {
            self$client$return_exported_sender(self$sender)
          } else if (!identical(self$sender, self$client$sender)) {
            self$sender$disconnect()
          }
        }, finally = {
          self$sender <- NULL
        })

        return(NULL)
      }) %...>% return()
    }
  )
)

#' @title GenericDownloadIter class
#' @description Class for generic file downloading iteration.
GenericDownloadIter <- R6::R6Class(
  "GenericDownloadIter",
  inherit = DirectDownloadIter,
  public = list(

    #' @description Load the next chunk for generic download.
    load_next_chunk = function() {
      future({
        # 1. Fetch enough for one chunk
        data <- raw(0)

        # 1.1. "bad" is how much into the data we have we need to offset
        bad <- self$request$offset %% self$request$limit
        before <- self$request$offset

        # 1.2. We have to fetch from a valid offset, so remove that bad part
        self$request$offset <- self$request$offset - bad

        done <- FALSE
        while (!done && length(data) - bad < self$chunk_size) {
          cur <- self$request()
          self$request$offset <- self$request$offset + self$request$limit

          data <- c(data, cur)
          done <- length(cur) < self$request$limit
        }

        # 1.3 Restore our last desired offset
        self$request$offset <- before

        # 2. Fill the buffer with the data we have
        # 2.1. In R, we don't have memoryview like Python, we'll use raw vectors

        # 2.2. The current chunk starts at "bad" offset into the data,
        # and each new chunk is "stride" bytes apart from the other
        for (i in seq(from = bad + 1, to = length(data), by = self$stride)) {
          end_idx <- min(i + self$chunk_size - 1, length(data))
          self$buffer$append(data[i:end_idx])

          # 2.3. We will yield this offset, so move to the next one
          self$request$offset <- self$request$offset + self$stride
        }

        # 2.4. If we are in the last chunk, we will return the last partial data
        if (done) {
          self$left <- length(self$buffer)
          self$close()
          return(NULL)
        }

        # 2.5. If we are not done, we can't return incomplete chunks
        if (length(self$buffer[[length(self$buffer)]]) != self$chunk_size) {
          self$last_part <- self$buffer[[length(self$buffer)]]
          self$buffer$pop()

          # 3. Be careful with the offsets. Re-fetching a bit of data
          # is fine, since it greatly simplifies things.
          self$request$offset <- self$request$offset - self$stride
        }

        return(NULL)
      }) %...>% return()
    }
  )
)

#' DownloadMethods class
#'
#' @description Methods for downloading files from Telegram
#' @export
DownloadMethods <- R6::R6Class(
  "DownloadMethods",
  public = list(
    #' @description Download a profile photo
    #' @param entity The entity to download the profile photo from
    #' @param file Output file path or NULL for auto-naming
    #' @param download_big Whether to download the big version of the photo
    #' @return Path to the downloaded file or NULL if no photo
    download_profile_photo = function(entity, file = NULL, download_big = TRUE) {
      future({
        # hex(crc32(x.encode('ascii'))) for x in
        # ('User', 'Chat', 'UserFull', 'ChatFull')
        ENTITIES <- c("0x2da17977", "0xc5af5d94", "0x1f4661b9", "0xd49a2697")
        # ('InputPeer', 'InputUser', 'InputChannel')
        INPUTS <- c("0xc91c90b6", "0xe669bf46", "0x40f202fd")

        if (!inherits(entity, "TLObject") || entity$SUBCLASS_OF_ID %in% INPUTS) {
          entity <- self$get_entity(entity)
        }

        thumb <- if (download_big) -1 else 0

        possible_names <- c()
        if (!entity$SUBCLASS_OF_ID %in% ENTITIES) {
          photo <- entity
        } else {
          if (!hasattr(entity, "photo")) {
            # Special case: may be a ChatFull with photo:Photo
            # This is different from a normal UserProfilePhoto and Chat
            if (!hasattr(entity, "chat_photo")) {
              return(NULL)
            }

            return(self$download_photo(
              entity$chat_photo, file, date = NULL,
              thumb = thumb, progress_callback = NULL
            ))
          }

          for (attr in c("username", "first_name", "title")) {
            if (!is.null(entity[[attr]])) {
              possible_names <- c(possible_names, entity[[attr]])
            }
          }

          photo <- entity$photo
        }

        if (inherits(photo, c("UserProfilePhoto", "ChatPhoto"))) {
          dc_id <- photo$dc_id
          loc <- list(
            type = "InputPeerPhotoFileLocation",
            # min users can be used to download profile photos
            # self.get_input_entity would otherwise not accept those
            peer = utils$get_input_peer(entity, check_hash = FALSE),
            photo_id = photo$photo_id,
            big = download_big
          )
        } else {
          # It doesn't make any sense to check if `photo` can be used
          # as input location, because then this method would be able
          # to "download the profile photo of a message", i.e. its
          # media which should be done with `download_media` instead.
          return(NULL)
        }

        file <- self$get_proper_filename(
          file, 'profile_photo', '.jpg',
          possible_names = possible_names
        )

        tryCatch({
          result <- self$download_file(loc, file, dc_id = dc_id)
          return(if (identical(file, as.raw)) result else file)
        }, error = function(e) {
          if (inherits(e, "LocationInvalidError")) {
            # See issue #500, Android app fails as of v4.6.0 (1155).
            # The fix seems to be using the full channel chat photo.
            ie <- self$get_input_entity(entity)
            ty <- helpers$entity_type(ie)
            if (ty == helpers$EntityType$CHANNEL) {
              full <- self$call(list(
                type = "GetFullChannelRequest",
                channel = ie
              ))
              return(self$download_photo(
                full$full_chat$chat_photo, file,
                date = NULL, progress_callback = NULL,
                thumb = thumb
              ))
            } else {
              # Until there's a report for chats, no need to.
              return(NULL)
            }
          }
          stop(e)
        })
      }) %...>% return()
    },

    #' @description Download media from a message
    #' @param message The message or media to download
    #' @param file Output file path or NULL for auto-naming
    #' @param thumb Which thumbnail to download (if any)
    #' @param progress_callback Function called with progress updates
    #' @return Path to the downloaded file or NULL if no media
    download_media = function(message, file = NULL, thumb = NULL, progress_callback = NULL) {
      future({
        # Downloading large documents may be slow enough to require a new file reference
        # to be obtained mid-download. Store (input chat, message id) so that the message
        # can be re-fetched.
        msg_data <- NULL

        if (inherits(message, "Message")) {
          date <- message$date
          media <- message$media
          if (!is.null(message$input_chat)) {
            msg_data <- list(message$input_chat, message$id)
          }
        } else {
          date <- Sys.time()
          media <- message
        }

        if (is.character(media)) {
          media <- utils$resolve_bot_file_id(media)
        }

        if (inherits(media, "MessageService")) {
          if (inherits(message$action, "MessageActionChatEditPhoto")) {
            media <- media$photo
          }
        }

        if (inherits(media, "MessageMediaWebPage")) {
          if (inherits(media$webpage, "WebPage")) {
            media <- if (!is.null(media$webpage$document)) media$webpage$document else media$webpage$photo
          }
        }

        if (inherits(media, c("MessageMediaPhoto", "Photo"))) {
          return(self$download_photo(
            media, file, date, thumb, progress_callback
          ))
        } else if (inherits(media, c("MessageMediaDocument", "Document"))) {
          return(self$download_document(
            media, file, date, thumb, progress_callback, msg_data
          ))
        } else if (inherits(media, "MessageMediaContact") && is.null(thumb)) {
          return(self$download_contact(media, file))
        } else if (inherits(media, c("WebDocument", "WebDocumentNoProxy")) && is.null(thumb)) {
          return(self$download_web_document(media, file, progress_callback))
        }

        return(NULL)
      }) %...>% return()
    },

    #' @description Download a file from its input location
    #' @param input_location The file location
    #' @param file Output file path or NULL for auto-naming
    #' @param part_size_kb Chunk size when downloading files
    #' @param file_size The file size if known
    #' @param progress_callback Function called with progress updates
    #' @param dc_id Data center ID
    #' @param key Encryption key if needed
    #' @param iv Encryption IV if needed
    #' @return Downloaded file data or path
    download_file = function(input_location, file = NULL, part_size_kb = NULL,
                            file_size = NULL, progress_callback = NULL,
                            dc_id = NULL, key = NULL, iv = NULL) {
      future({
        self$.download_file(
          input_location = input_location,
          file = file,
          part_size_kb = part_size_kb,
          file_size = file_size,
          progress_callback = progress_callback,
          dc_id = dc_id,
          key = key,
          iv = iv
        )
      }) %...>% return()
    },

    #' @description Internal method to download a file
    #' @param input_location The file location
    #' @param file Output file path or NULL for auto-naming
    #' @param part_size_kb Chunk size when downloading files
    #' @param file_size The file size if known
    #' @param progress_callback Function called with progress updates
    #' @param dc_id Data center ID
    #' @param key Encryption key if needed
    #' @param iv Encryption IV if needed
    #' @param msg_data Message data if applicable
    #' @param cdn_redirect CDN redirect if applicable
    #' @return Downloaded file data or path
    .download_file = function(input_location, file = NULL, part_size_kb = NULL,
                             file_size = NULL, progress_callback = NULL,
                             dc_id = NULL, key = NULL, iv = NULL,
                             msg_data = NULL, cdn_redirect = NULL) {
      future({
        if (is.null(part_size_kb)) {
          if (is.null(file_size)) {
            part_size_kb <- 64  # Reasonable default
          } else {
            part_size_kb <- utils$get_appropriated_part_size(file_size)
          }
        }

        part_size <- as.integer(part_size_kb * 1024)
        if (part_size %% MIN_CHUNK_SIZE != 0) {
          stop("The part size must be evenly divisible by 4096.")
        }

        in_memory <- is.null(file) || identical(file, as.raw)
        if (in_memory) {
          f <- raw(0)
          is_buffer <- TRUE
        } else if (is.character(file)) {
          # Ensure that we'll be able to download the media
          helpers$ensure_parent_dir_exists(file)
          f <- file(file, "wb")
          is_buffer <- FALSE
        } else {
          f <- file
          is_buffer <- FALSE
        }

        tryCatch({
          iter <- self$iter_download(
            input_location,
            request_size = part_size,
            dc_id = dc_id,
            msg_data = msg_data,
            cdn_redirect = cdn_redirect
          )

          while (iter$has_next()) {
            chunk <- iter$.next()
            if (!is.null(iv) && !is.null(key)) {
              chunk <- AES$decrypt_ige(chunk, key, iv)
            }

            if (is_buffer) {
              f <- c(f, chunk)
            } else {
              writeBin(chunk, f)
            }

            if (!is.null(progress_callback) && is.function(progress_callback)) {
              if (is_buffer) {
                progress_callback(length(f), file_size)
              } else {
                progress_callback(seek(f, where = NA, origin = "current"), file_size)
              }
            }
          }

          # Flush if the file supports it
          if (!is_buffer && methods::hasMethod("flush", class(f)[1])) {
            flush(f)
          }

          if (in_memory) {
            return(f)
          }

          return(file)
        }, error = function(e) {
          if (inherits(e, "CdnRedirect")) {
            self$log_info(paste("FileCdnRedirect to CDN data center", e$redirect$dc_id))
            return(self$download_file(
              input_location = input_location,
              file = file,
              part_size_kb = part_size_kb,
              file_size = file_size,
              progress_callback = progress_callback,
              dc_id = e$redirect$dc_id,
              key = e$redirect$encryption_key,
              iv = e$redirect$encryption_iv,
              msg_data = msg_data,
              cdn_redirect = e$redirect
            ))
          }
          stop(e)
        }, finally = {
          if ((is.character(file) || in_memory) && !is_buffer) {
            close(f)
          }
        })
      }) %...>% return()
    },

    #' @description Iterate over a file download
    #' @param file The file to download
    #' @param offset Starting offset
    #' @param stride Stride between chunks
    #' @param limit Maximum number of chunks to download
    #' @param chunk_size Size of each chunk
    #' @param request_size Size of each request
    #' @param file_size Total file size if known
    #' @param dc_id Data center ID
    #' @return Iterator for file chunks
    iter_download = function(file, offset = 0, stride = NULL, limit = NULL,
                            chunk_size = NULL, request_size = MAX_CHUNK_SIZE,
                            file_size = NULL, dc_id = NULL) {
      future({
        self$.iter_download(
          file = file,
          offset = offset,
          stride = stride,
          limit = limit,
          chunk_size = chunk_size,
          request_size = request_size,
          file_size = file_size,
          dc_id = dc_id
        )
      }) %...>% return()
    },

    #' @description Internal implementation of iter_download
    #' @param file The file to download
    #' @param offset Starting offset
    #' @param stride Stride between chunks
    #' @param limit Maximum number of chunks to download
    #' @param chunk_size Size of each chunk
    #' @param request_size Size of each request
    #' @param file_size Total file size if known
    #' @param dc_id Data center ID
    #' @param msg_data Message data if applicable
    #' @param cdn_redirect CDN redirect if applicable
    #' @return Iterator for file chunks
    .iter_download = function(file, offset = 0, stride = NULL, limit = NULL,
                             chunk_size = NULL, request_size = MAX_CHUNK_SIZE,
                             file_size = NULL, dc_id = NULL,
                             msg_data = NULL, cdn_redirect = NULL) {
      future({
        info <- utils$get_file_info(file)
        if (!is.null(info$dc_id)) {
          dc_id <- info$dc_id
        }

        if (is.null(file_size)) {
          file_size <- info$size
        }

        file <- info$location

        if (is.null(chunk_size)) {
          chunk_size <- request_size
        }

        if (is.null(limit) && !is.null(file_size)) {
          limit <- ceiling((file_size + chunk_size - 1) / chunk_size)
        }

        if (is.null(stride)) {
          stride <- chunk_size
        } else if (stride < chunk_size) {
          stop("stride must be >= chunk_size")
        }

        request_size <- request_size - (request_size %% MIN_CHUNK_SIZE)
        if (request_size < MIN_CHUNK_SIZE) {
          request_size <- MIN_CHUNK_SIZE
        } else if (request_size > MAX_CHUNK_SIZE) {
          request_size <- MAX_CHUNK_SIZE
        }

        use_direct <- chunk_size == request_size &&
                     offset %% MIN_CHUNK_SIZE == 0 &&
                     stride %% MIN_CHUNK_SIZE == 0 &&
                     (is.null(limit) || offset %% limit == 0)

        if (use_direct) {
          cls <- DirectDownloadIter
          self$log_info(sprintf("Starting direct file download in chunks of %d at %d, stride %d",
                               request_size, offset, stride))
        } else {
          cls <- GenericDownloadIter
          self$log_info(sprintf("Starting indirect file download in chunks of %d at %d, stride %d",
                               request_size, offset, stride))
        }

        iter <- cls$new(
          client = self,
          limit = limit
        )

        iter$init(
          file = file,
          dc_id = dc_id,
          offset = offset,
          stride = stride,
          chunk_size = chunk_size,
          request_size = request_size,
          file_size = file_size,
          msg_data = msg_data,
          cdn_redirect = cdn_redirect
        )

        return(iter)
      }) %...>% return()
    },

    #' @description Get the appropriate thumbnail from thumbs
    #' @param thumbs List of available thumbnails
    #' @param thumb Which thumbnail to get (NULL for largest, integer index,
    #'              string type, or PhotoSize/VideoSize object)
    #' @return The selected thumbnail or NULL if none found
    get_thumb = function(thumbs, thumb) {
      if (length(thumbs) == 0) {
        return(NULL)
      }

      # Sort thumbs by type and size
      sort_thumbs <- function(thumb) {
        if (inherits(thumb, "PhotoStrippedSize")) {
          return(list(1, length(thumb$bytes)))
        }
        if (inherits(thumb, "PhotoCachedSize")) {
          return(list(1, length(thumb$bytes)))
        }
        if (inherits(thumb, "PhotoSize")) {
          return(list(1, thumb$size))
        }
        if (inherits(thumb, "PhotoSizeProgressive")) {
          return(list(1, max(thumb$sizes)))
        }
        if (inherits(thumb, "VideoSize")) {
          return(list(2, thumb$size))
        }

        # Empty size or invalid should go last
        return(list(0, 0))
      }

      thumbs_with_scores <- lapply(thumbs, function(t) {
        score <- sort_thumbs(t)
        list(thumb = t, score = score)
      })

      # Sort thumbs by score
      sorted_thumbs <- thumbs_with_scores[order(sapply(thumbs_with_scores, function(x) x$score[[1]]),
                                                sapply(thumbs_with_scores, function(x) x$score[[2]]))]
      sorted_thumbs <- lapply(sorted_thumbs, function(x) x$thumb)

      # Remove PhotoPathSize types (animated stickers preview)
      # Users expect thumbnails to be JPEG files
      sorted_thumbs <- Filter(function(t) !inherits(t, "PhotoPathSize"), sorted_thumbs)

      if (is.null(thumb)) {
        return(sorted_thumbs[[length(sorted_thumbs)]])
      } else if (is.numeric(thumb)) {
        return(sorted_thumbs[[thumb]])
      } else if (is.character(thumb)) {
        for (t in sorted_thumbs) {
          if (t$type == thumb) {
            return(t)
          }
        }
        return(NULL)
      } else if (inherits(thumb, c("PhotoSize", "PhotoCachedSize",
                                   "PhotoStrippedSize", "VideoSize"))) {
        return(thumb)
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Download cached photo size
    #' @param size The photo size to download
    #' @param file Output file path or NULL for auto-naming
    #' @return Downloaded file data or path
    download_cached_photo_size = function(size, file) {
      # No need to download anything, simply write the bytes
      if (inherits(size, "PhotoStrippedSize")) {
        data <- utils$stripped_photo_to_jpg(size$bytes)
      } else {
        data <- size$bytes
      }

      if (identical(file, as.raw)) {
        return(data)
      } else if (is.character(file)) {
        helpers$ensure_parent_dir_exists(file)
        f <- file(file, "wb")
      } else {
        f <- file
      }

      tryCatch({
        writeBin(data, f)
      }, finally = {
        if (is.character(file)) {
          close(f)
        }
      })
      return(file)
    },

    #' @description
    #' Download a photo
    #' @param photo The photo to download
    #' @param file Output file path or NULL for auto-naming
    #' @param date The date the photo was sent
    #' @param thumb Which thumbnail to download
    #' @param progress_callback Function called with progress updates
    #' @return Path to the downloaded file
    download_photo = function(photo, file, date, thumb, progress_callback) {
      future({
        # Determine the photo and its largest size
        if (inherits(photo, "MessageMediaPhoto")) {
          photo <- photo$photo
        }
        if (!inherits(photo, "Photo")) {
          return(NULL)
        }

        # Include video sizes here (but they may be None so provide an empty list)
        video_sizes <- if (is.null(photo$video_sizes)) list() else photo$video_sizes
        size <- self$get_thumb(c(photo$sizes, video_sizes), thumb)
        if (is.null(size) || inherits(size, "PhotoSizeEmpty")) {
          return(NULL)
        }

        if (inherits(size, "VideoSize")) {
          file <- self$get_proper_filename(file, "video", ".mp4", date = date)
        } else {
          file <- self$get_proper_filename(file, "photo", ".jpg", date = date)
        }

        if (inherits(size, c("PhotoCachedSize", "PhotoStrippedSize"))) {
          return(self$download_cached_photo_size(size, file))
        }

        if (inherits(size, "PhotoSizeProgressive")) {
          file_size <- max(size$sizes)
        } else {
          file_size <- size$size
        }

        result <- await(self$download_file(
          list(
            type = "InputPhotoFileLocation",
            id = photo$id,
            access_hash = photo$access_hash,
            file_reference = photo$file_reference,
            thumb_size = size$type
          ),
          file,
          file_size = file_size,
          progress_callback = progress_callback
        ))
        return(if (identical(file, as.raw)) result else file)
      }) %...>% return()
    },

    #' @description
    #' Get kind and possible names for DocumentAttribute
    #' @param attributes The document attributes
    #' @return List with kind and possible names
    get_kind_and_names = function(attributes) {
      kind <- "document"
      possible_names <- list()

      for (attr in attributes) {
        if (inherits(attr, "DocumentAttributeFilename")) {
          possible_names <- c(list(attr$file_name), possible_names)
        }
        else if (inherits(attr, "DocumentAttributeAudio")) {
          kind <- "audio"
          if (!is.null(attr$performer) && !is.null(attr$title)) {
            possible_names <- c(possible_names, list(paste(attr$performer, "-", attr$title)))
          } else if (!is.null(attr$performer)) {
            possible_names <- c(possible_names, list(attr$performer))
          } else if (!is.null(attr$title)) {
            possible_names <- c(possible_names, list(attr$title))
          } else if (!is.null(attr$voice) && attr$voice) {
            kind <- "voice"
          }
        }
      }

      return(list(kind = kind, possible_names = possible_names))
    },

    #' @description
    #' Download a document
    #' @param document The document to download
    #' @param file Output file path or NULL for auto-naming
    #' @param date The date the document was sent
    #' @param thumb Which thumbnail to download
    #' @param progress_callback Function called with progress updates
    #' @param msg_data Message data for reference if needed
    #' @return Path to the downloaded file
    download_document = function(document, file, date, thumb, progress_callback, msg_data) {
      future({
        if (inherits(document, "MessageMediaDocument")) {
          document <- document$document
        }
        if (!inherits(document, "Document")) {
          return(NULL)
        }

        if (is.null(thumb)) {
          kind_and_names <- self$get_kind_and_names(document$attributes)
          kind <- kind_and_names$kind
          possible_names <- kind_and_names$possible_names

          file <- self$get_proper_filename(
            file, kind, utils$get_extension(document),
            date = date, possible_names = possible_names
          )
          size <- NULL
        } else {
          file <- self$get_proper_filename(file, "photo", ".jpg", date = date)
          size <- self$get_thumb(document$thumbs, thumb)
          if (is.null(size) || inherits(size, "PhotoSizeEmpty")) {
            return(NULL)
          }

          if (inherits(size, c("PhotoCachedSize", "PhotoStrippedSize"))) {
            return(self$download_cached_photo_size(size, file))
          }
        }

        result <- await(self$download_file(
          list(
            type = "InputDocumentFileLocation",
            id = document$id,
            access_hash = document$access_hash,
            file_reference = document$file_reference,
            thumb_size = if (!is.null(size)) size$type else ""
          ),
          file,
          file_size = if (!is.null(size)) size$size else document$size,
          progress_callback = progress_callback,
          msg_data = msg_data
        ))

        return(if (identical(file, as.raw)) result else file)
      }) %...>% return()
    },

    #' @description
    #' Download a contact as vCard
    #' @param mm_contact The contact to download
    #' @param file Output file path or NULL for auto-naming
    #' @return Path to the downloaded file
    download_contact = function(mm_contact, file) {
      first_name <- mm_contact$first_name
      last_name <- mm_contact$last_name
      phone_number <- mm_contact$phone_number

      # Remove these pesky characters
      first_name <- gsub(";", "", first_name)
      last_name <- gsub(";", "", if (is.null(last_name)) "" else last_name)
      result <- sprintf(
        "BEGIN:VCARD\nVERSION:4.0\nN:%s;%s;;;\nFN:%s %s\nTEL;TYPE=cell;VALUE=uri:tel:+%s\nEND:VCARD\n",
        first_name, last_name, first_name, last_name, phone_number
      )
      result <- charToRaw(result)

      file <- self$get_proper_filename(
        file, "contact", ".vcard",
        possible_names = list(first_name, phone_number, last_name)
      )

      if (identical(file, as.raw)) {
        return(result)
      }

      if (methods::hasMethod("write", class(file)[1])) {
        f <- file
      } else {
        f <- file(file, "wb")
      }

      tryCatch({
        writeBin(result, f)
      }, finally = {
        # Only close the stream if we opened it
        if (!identical(f, file)) {
          close(f)
        }
      })

      return(file)
    },

    #' @description
    #' Download a web document
    #' @param web The web document to download
    #' @param file Output file path or NULL for auto-naming
    #' @param progress_callback Function called with progress updates
    #' @return Path to the downloaded file
    download_web_document = function(web, file, progress_callback) {
      future({
        if (!requireNamespace("httr", quietly = TRUE)) {
          stop("Cannot download web documents without the httr package. Install it (install.packages('httr'))")
        }

        kind_and_names <- self$get_kind_and_names(web$attributes)
        kind <- kind_and_names$kind
        possible_names <- kind_and_names$possible_names

        file <- self$get_proper_filename(
          file, kind, utils$get_extension(web),
          possible_names = possible_names
        )

        if (identical(file, as.raw)) {
          f <- raw(0)
          is_buffer <- TRUE
        } else if (methods::hasMethod("write", class(file)[1])) {
          f <- file
          is_buffer <- FALSE
        } else {
          f <- file(file, "wb")
          is_buffer <- FALSE
        }

        tryCatch({
          # TODO: Use progress_callback with httr
          response <- httr::GET(web$url)
          content <- httr::content(response, as = "raw")

          if (is_buffer) {
            f <- content
          } else {
            writeBin(content, f)
          }
        }, finally = {
          if (!identical(f, file) && !is_buffer) {
            close(f)
          }
        })

        return(if (is_buffer) f else file)
      }) %...>% return()
    },

    #' @description
    #' Get a proper filename for the download
    #' @param file The file path or NULL for auto-naming
    #' @param kind The kind of file (photo, document, etc.)
    #' @param extension The file extension
    #' @param date The date the file was sent
    #' @param possible_names List of possible names
    #' @return A proper filename
    get_proper_filename = function(file, kind, extension, date = NULL, possible_names = NULL) {
      if (inherits(file, "path")) {
        file <- as.character(file)
      }

      if (!is.null(file) && !is.character(file)) {
        # Probably a stream-like object, we cannot set a filename here
        return(file)
      }

      if (is.null(file)) {
        file <- ""
      } else if (file.exists(file) && !dir.exists(file)) {
        # Make no modifications to valid existing paths
        return(file)
      }

      if (dir.exists(file) || file == "") {
        name <- NULL
        if (!is.null(possible_names) && length(possible_names) > 0) {
          for (n in possible_names) {
            if (!is.null(n) && n != "") {
              name <- n
              break
            }
          }
        }

        if (is.null(name)) {
          if (is.null(date)) {
            date <- Sys.time()
          }
          date_str <- format(date, "%Y-%m-%d_%H-%M-%S")
          name <- paste0(kind, "_", date_str)
        }
        file <- file.path(file, name)
      }

      # Split path to directory and name
      directory <- dirname(file)
      name <- basename(file)

      # Split name and extension
      name_parts <- strsplit(name, "\\.")[[1]]
      if (length(name_parts) > 1) {
        name <- paste(name_parts[1:(length(name_parts)-1)], collapse = ".")
        ext <- paste0(".", name_parts[length(name_parts)])
      } else {
        name <- name_parts[1]
        ext <- ""
      }

      if (ext == "") {
        ext <- extension
      }

      result <- file.path(directory, paste0(name, ext))
      if (!file.exists(result)) {
        return(result)
      }

      i <- 1
      while (TRUE) {
        result <- file.path(directory, paste0(name, " (", i, ")", ext))
        if (!file.exists(result)) {
          return(result)
        }
        i <- i + 1
      }
    }
  ))
