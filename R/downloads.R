NULL
#' Constants for file operations
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
          tryCatch(
            {
              self$sender <- self$client$borrow_exported_sender(dc_id)
            },
            error = function(e) {
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
            }
          )
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
        tryCatch(
          {
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
          },
          error = function(e) {
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
          }
        )
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
