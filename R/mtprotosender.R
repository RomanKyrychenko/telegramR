#' MTProto Mobile Protocol sender
#'
#' This class is responsible for wrapping requests into TLMessage objects,
#' sending them over the network and receiving them in a safe manner.
#' Automatic reconnection due to temporary network issues is handled by this class,
#' including retry of messages that could not be sent successfully.
#' A new authorization key will be generated on connection if no other key exists yet.
#' @importFrom R6 R6Class
#' @importFrom future plan multisession resolved value
#' @export
MTProtoSender <- R6::R6Class("MTProtoSender",
  public = list(

    #' @field auth_key Authentication key
    auth_key = NULL,

    #' @field time_offset Time offset with server
    time_offset = NULL,

    #' @description
    #' Initialize a new MTProtoSender
    #' @param auth_key Authentication key
    #' @param loggers Logger instances
    #' @param retries Number of retries for failed operations
    #' @param delay Delay between retries in seconds
    #' @param auto_reconnect Whether to automatically reconnect
    #' @param connect_timeout Connection timeout in seconds
    #' @param auth_key_callback Callback for auth key updates
    #' @param updates_queue Queue for updates
    #' @param auto_reconnect_callback Callback after reconnection
    initialize = function(auth_key = NULL, loggers = NULL,
                          retries = 5, delay = 1, auto_reconnect = TRUE,
                          connect_timeout = NULL, auth_key_callback = NULL,
                          updates_queue = NULL, auto_reconnect_callback = NULL) {
      private$connection <- NULL
      private$retries <- retries
      private$delay <- delay
      private$auto_reconnect <- auto_reconnect
      private$connect_timeout <- connect_timeout
      private$auth_key_callback <- auth_key_callback
      private$updates_queue <- updates_queue
      private$auto_reconnect_callback <- auto_reconnect_callback
      private$connect_lock <- { lock <- NULL; list(lock = \() { lock <<- TRUE }, unlock = \() { lock <<- NULL }) }
      private$ping <- NULL

      # Connection state
      private$user_connected <- FALSE
      private$reconnecting <- FALSE
      private$disconnected <- future::future(NULL, seed = TRUE)

      # Loop handles
      private$send_loop_handle <- NULL
      private$recv_loop_handle <- NULL

      # Preserve auth_key reference
      self$auth_key <- auth_key %||% AuthKey$new(NULL)
      private$state <- MTProtoState$new(self$auth_key, loggers = private$loggers)

      # Outgoing message queue
      private$send_queue <- MessagePacker$new(private$state, loggers = private$loggers)

      # Track sent states
      private$pending_state <- list()

      # Responses to acknowledge
      private$pending_ack <- set()

      # Last acknowledgments
      private$last_acks <- deque(10)

      # Jump table from response ID to method that handles it
      private$handlers <- list(
        RpcResult.CONSTRUCTOR_ID = private$handle_rpc_result,
        MessageContainer.CONSTRUCTOR_ID = private$handle_container,
        GzipPacked.CONSTRUCTOR_ID = private$handle_gzip_packed,
        Pong.CONSTRUCTOR_ID = private$handle_pong,
        BadServerSalt.CONSTRUCTOR_ID = private$handle_bad_server_salt,
        BadMsgNotification.CONSTRUCTOR_ID = private$handle_bad_notification,
        MsgDetailedInfo.CONSTRUCTOR_ID = private$handle_detailed_info,
        MsgNewDetailedInfo.CONSTRUCTOR_ID = private$handle_new_detailed_info,
        NewSessionCreated.CONSTRUCTOR_ID = private$handle_new_session_created,
        MsgsAck.CONSTRUCTOR_ID = private$handle_ack,
        FutureSalts.CONSTRUCTOR_ID = private$handle_future_salts,
        MsgsStateReq.CONSTRUCTOR_ID = private$handle_state_forgotten,
        MsgResendReq.CONSTRUCTOR_ID = private$handle_state_forgotten,
        MsgsAllInfo.CONSTRUCTOR_ID = private$handle_msg_all,
        DestroySessionOk.CONSTRUCTOR_ID = private$handle_destroy_session,
        DestroySessionNone.CONSTRUCTOR_ID = private$handle_destroy_session,
        DestroyAuthKeyOk.CONSTRUCTOR_ID = private$handle_destroy_auth_key,
        DestroyAuthKeyNone.CONSTRUCTOR_ID = private$handle_destroy_auth_key,
        DestroyAuthKeyFail.CONSTRUCTOR_ID = private$handle_destroy_auth_key
      )
    },

    #' @description
    #' Connects to the specified given connection using the given auth key.
    #' @param connection Connection object to use
    #' @return TRUE if connected successfully, FALSE otherwise
    connect = function(connection) {
      result <- future({
        private$connect_lock$lock()
        on.exit(private$connect_lock$unlock())

        if (private$user_connected) {
          private$log$info('User is already connected!')
          return(FALSE)
        }

        private$connection <- connection
        private$.connect()
        private$user_connected <- TRUE
        return(TRUE)
      })
      return(result)
    },

    #' @description
    #' Check if user is connected
    #' @return TRUE if connected, FALSE otherwise
    is_connected = function() {
      return(private$user_connected)
    },

    #' @description
    #' Check if transport layer is connected
    #' @return TRUE if transport connected, FALSE otherwise
    transport_connected = function() {
      return(
        !private$reconnecting &&
          !is.null(private$connection) &&
          private$connection$connected
      )
    },

    #' @description
    #' Cleanly disconnects the instance from the network, cancels
    #' all pending requests, and closes the send and receive loops.
    disconnect = function() {
      result <- future(private$disconnect())
      return(result)
    },

    #' @description
    #' Enqueues the given request to be sent. Its send state will
    #' be saved until a response arrives, and a future that will be
    #' resolved when the response arrives will be returned.
    #'
    #' @param request Request or list of requests to send
    #' @param ordered Whether requests should be executed in order
    #' @return Future or list of futures that will resolve with the response
    send = function(request, ordered = FALSE) {
      if (!private$user_connected) {
        stop("ConnectionError: Cannot send requests while disconnected")
      }

      if (!is_list_like(request)) {
        tryCatch({
          state <- RequestState$new(request)
        }, error = function(e) {
          private$log$error('Request caused error: %s: %s', e$message, request)
          stop(e)
        })

        private$send_queue$append(state)
        return(state$future)
      } else {
        states <- list()
        futures <- list()
        state <- NULL

        for (req in request) {
          tryCatch({
            state <- RequestState$new(req, after = ordered && !is.null(state))
          }, error = function(e) {
            private$log$error('Request caused error: %s: %s', e$message, request)
            stop(e)
          })

          states <- append(states, state)
          futures <- append(futures, state$future)
        }

        private$send_queue$extend(states)
        return(futures)
      }
    },

    #' @description
    #' Get future that resolves when connection to Telegram ends
    #' @return Future that resolves on disconnection
    disconnected = function() {
      return(future::future_promise(private$disconnected))
    },

    #' @description
    #' Generate a new unique message ID
    #' @return New message ID
    get_new_msg_id = function() {
      now <- as.numeric(Sys.time()) + self$time_offset
      nanoseconds <- as.integer((now - as.integer(now)) * 1e+9)
      new_msg_id <- bitwOr(bitwShiftL(as.integer(now), 32), bitwShiftL(nanoseconds, 2))

      if (private$last_msg_id >= new_msg_id) {
        new_msg_id <- private$last_msg_id + 4
      }

      private$last_msg_id <- new_msg_id
      return(new_msg_id)
    },

    #' @description
    #' Update time offset based on a correct message ID
    #' @param correct_msg_id Known valid message ID
    #' @return Updated time offset
    update_time_offset = function(correct_msg_id) {
      bad <- self$get_new_msg_id()
      old <- self$time_offset

      now <- as.integer(Sys.time())
      correct <- bitwShiftR(correct_msg_id, 32)
      self$time_offset <- correct - now

      if (self$time_offset != old) {
        private$last_msg_id <- 0
        private$log$debug(
          'Updated time offset (old offset %d, bad %d, good %d, new %d)',
          old, bad, correct_msg_id, self$time_offset
        )
      }

      return(self$time_offset)
    }
  ),

  private = list(
    connection = NULL,
    loggers = NULL,
    log = NULL,
    retries = NULL,
    delay = NULL,
    auto_reconnect = NULL,
    connect_timeout = NULL,
    auth_key_callback = NULL,
    updates_queue = NULL,
    auto_reconnect_callback = NULL,
    connect_lock = NULL,
    ping = NULL,
    user_connected = NULL,
    reconnecting = NULL,
    send_loop_handle = NULL,
    recv_loop_handle = NULL,
    state = NULL,
    send_queue = NULL,
    pending_state = NULL,
    pending_ack = NULL,
    last_acks = NULL,
    handlers = NULL,
    last_msg_id = NULL,
    sequence = NULL,

    #' Internal method to perform connection
    .connect = function() {
      private$log$info('Connecting to %s...', private$connection$to_string())

      connected <- FALSE

      for (attempt in retry_range(private$retries)) {
        if (!connected) {
          connected <- future::value(private$try_connect(attempt))
          if (!connected) {
            next  # Skip auth key generation until connected
          }
        }

        if (is.null(self$auth_key$key)) {
          tryCatch({
            if (!future::value(private$try_gen_auth_key(attempt))) {
              next  # Keep retrying until we have the auth key
            }
          }, error = function(e) {
            # Sometimes Telegram may close the connection during auth_key generation
            private$log$warning('Connection error %d during auth_key gen: %s: %s',
                              attempt, class(e)[1], e$message)

            # Disconnect for clean reconnection
            future::value(private$connection$disconnect())
            connected <- FALSE
            Sys.sleep(private$delay)
          })
        }

        break  # All steps done, break retry loop
      }

      if (!connected) {
        stop(sprintf("ConnectionError: Connection to Telegram failed %d time(s)",
                    private$retries))
      }

      if (is.null(self$auth_key$key)) {
        e <- simpleError(sprintf("ConnectionError: auth_key generation failed %d time(s)",
                               private$retries))
        future::value(private$disconnect(error = e))
        stop(e)
      }

      # Start send and receive loops
      private$log$debug('Starting send loop')
      private$send_loop_handle <- future({
        tryCatch(
          private$send_loop(),
          error = function(e) private$log$error("Send loop error: %s", e$message)
        )
      })

      private$log$debug('Starting receive loop')
      private$recv_loop_handle <- future({
        tryCatch(
          private$recv_loop(),
          error = function(e) private$log$error("Receive loop error: %s", e$message)
        )
      })

      # Reset disconnected future if already completed
      if (future::resolved(private$disconnected)) {
        private$disconnected <- future::future(NULL, seed = TRUE)
      }

      private$log$info('Connection to %s complete!', private$connection$to_string())
    },

    #' Try to establish connection
    try_connect = function(attempt) {
      tryCatch({
        private$log$debug('Connection attempt %d...', attempt)
        future::value(private$connection$connect(timeout = private$connect_timeout))
        private$log$debug('Connection success!')
        return(TRUE)
      }, error = function(e) {
        private$log$warning('Attempt %d at connecting failed: %s: %s',
                          attempt, class(e)[1], e$message)
        Sys.sleep(private$delay)
        return(FALSE)
      })
    },

    #' Try to generate authentication key
    try_gen_auth_key = function(attempt) {
      plain <- MTProtoPlainSender$new(private$connection, loggers = private$loggers)
      tryCatch({
        private$log$debug('New auth_key attempt %d...', attempt)
        result <- future::value(authenticator$do_authentication(plain))

        self$auth_key$key <- result$auth_key
        private$state$time_offset <- result$time_offset

        # Notify about auth key change if callback provided
        if (!is.null(private$auth_key_callback)) {
          private$auth_key_callback(self$auth_key)
        }

        private$log$debug('auth_key generation success!')
        return(TRUE)
      }, error = function(e) {
        if (inherits(e, c("SecurityError", "AssertionError"))) {
          private$log$warning('Attempt %d at new auth_key failed: %s', attempt, e$message)
          Sys.sleep(private$delay)
          return(FALSE)
        } else {
          stop(e)
        }
      })
    },

    #' Disconnect from server
    .disconnect = function(error = NULL) {
      if (is.null(private$connection)) {
        private$log$info('Not disconnecting (already have no connection)')
        return(NULL)
      }

      private$log$info('Disconnecting from %s...', private$connection$to_string())
      private$user_connected <- FALSE

      tryCatch({
        private$log$debug('Closing current connection...')
        future::value(private$connection$disconnect())
      }, finally = {
        private$log$debug('Cancelling %d pending message(s)...', length(private$pending_state))

        for (state in private$pending_state) {
          if (!is.null(error) && !future::resolved(state$future)) {
            future::value(state$future$set_exception(error))
          } else {
            future::value(state$future$cancel())
          }
        }

        private$pending_state <- list()
        cancel_futures(
          private$log,
          send_loop_handle = private$send_loop_handle,
          recv_loop_handle = private$recv_loop_handle
        )

        private$log$info('Disconnection from %s complete!', private$connection$to_string())
        private$connection <- NULL
      })

      if (!is.null(private$disconnected) && !future::resolved(private$disconnected)) {
        if (!is.null(error)) {
          future::value(private$disconnected$set_exception(error))
        } else {
          future::value(private$disconnected$set_result(NULL))
        }
      }
    },

    #' Reconnect to server
    .reconnect = function(last_error) {
      private$log$info('Closing current connection to begin reconnect...')
      future::value(private$connection$disconnect())

      cancel_futures(
        private$log,
        send_loop_handle = private$send_loop_handle,
        recv_loop_handle = private$recv_loop_handle
      )

      private$reconnecting <- FALSE

      # Start with clean state to avoid old messages
      private$state$reset()

      retries <- if (private$auto_reconnect) private$retries else 0

      attempt <- 0
      ok <- TRUE

      # Try reconnection
      for (attempt in retry_range(retries, force_retry = FALSE)) {
        tryCatch({
          private$connect()
        }, error = function(e) {
          if (inherits(e, c("IOError", "TimeoutError"))) {
            last_error <- e
            private$log$info('Failed reconnection attempt %d with %s',
                           attempt, class(e)[1])
            Sys.sleep(private$delay)
          } else if (inherits(e, "InvalidBufferError") && e$code == 404) {
            private$log$info('Server does not know about the current auth key; the session may need to be recreated')
            last_error <- AuthKeyNotFound$new()
            ok <- FALSE
            return(FALSE) # Break the loop
          } else if (inherits(e, "BufferError")) {
            private$log$warning('Invalid buffer %s', e$message)
          } else {
            last_error <- e
            private$log$error('Unexpected exception reconnecting on attempt %d: %s',
                             attempt, e$message)
            private$log$error(get_traceback(e))
            Sys.sleep(private$delay)
          }
        })

        # If we made it here without error, reconnection was successful
        if (ok) {
          # Requeue pending requests
          private$send_queue$extend(private$pending_state)
          private$pending_state <- list()

          # Call callback if defined
          if (!is.null(private$auto_reconnect_callback)) {
            future({
              tryCatch(
                private$auto_reconnect_callback(),
                error = function(e) private$log$error("Error in reconnect callback: %s", e$message)
              )
            })
          }

          break
        }
      }

      if (!ok) {
        private$log$error('Automatic reconnection failed %d time(s)', attempt)
        # Use the last error encountered or NULL if none
        error <- if (!is.null(last_error)) clone_error(last_error) else NULL
        future::value(private$disconnect(error = error))
      }
    },

    #' Start reconnection process in background
    start_reconnect = function(error) {
      if (private$user_connected && !private$reconnecting) {
        # Set reconnecting flag to avoid race conditions
        private$reconnecting <- TRUE
        future({
          tryCatch(
            private$reconnect(error),
            error = function(e) private$log$error("Error in reconnect: %s", e$message)
          )
        })
      }
    },

    #' Send a keep-alive ping
    keepalive_ping = function(rnd_id) {
      # If no ping is in progress, send one
      if (is.null(private$ping)) {
        private$ping <- rnd_id
        self$send(PingRequest$new(rnd_id))
      } else {
        # Start reconnection if we didn't get a response
        private$start_reconnect(NULL)
      }
    },

    # Main processing loops

    #' Send loop - encrypts and sends messages
    send_loop = function() {
      while (private$user_connected && !private$reconnecting) {
        # Handle pending acknowledgments
        if (length(private$pending_ack) > 0) {
          ack <- RequestState$new(MsgsAck$new(as.list(private$pending_ack)))
          private$send_queue$append(ack)
          private$last_acks$append(ack)
          private$pending_ack$clear()
        }

        private$log$debug('Waiting for messages to send...')

        # Get batch from queue (with timeout)
        result <- future::value(private$send_queue$get())
        batch <- result$batch
        data <- result$data

        if (is.null(data) || length(data) == 0) {
          next
        }

        private$log$debug('Encrypting %d message(s) in %d bytes for sending',
                        length(batch), length(data))

        # Encrypt the message data
        data <- private$state$encrypt_message_data(data)

        # Track pending states
        for (state in batch) {
          if (!is.list(state)) {
            if (inherits(state$request, "TLRequest")) {
              private$pending_state[[as.character(state$msg_id)]] <- state
            }
          } else {
            for (s in state) {
              if (inherits(s$request, "TLRequest")) {
                private$pending_state[[as.character(s$msg_id)]] <- s
              }
            }
          }
        }

        # Send the data
        tryCatch({
          future::value(private$connection$send(data))
        }, error = function(e) {
          private$log$info('Connection closed while sending data: %s', e$message)
          private$start_reconnect(e)
          return(FALSE)  # Exit loop
        })

        private$log$debug('Encrypted messages sent')
      }
    },

    #' Receive loop - reads and processes incoming data
    recv_loop = function() {
      while (private$user_connected && !private$reconnecting) {
        private$log$debug('Receiving items from the network...')

        # Receive data
        body <- NULL
        tryCatch({
          body <- future::value(private$connection$recv())
        }, error = function(e) {
          if (inherits(e, c("IOError", "IncompleteReadError"))) {
            private$log$info('Connection closed while receiving data: %s', e$message)
            private$start_reconnect(e)
            return(FALSE)  # Exit loop
          } else if (inherits(e, "InvalidBufferError")) {
            if (e$code == 429) {
              private$log$warning('Server indicated flood error at transport level: %s', e$message)
              future::value(private$disconnect(error = e))
            } else {
              private$log$error('Server sent invalid buffer: %s', e$message)
              private$start_reconnect(e)
            }
            return(FALSE)  # Exit loop
          } else {
            private$log$error('Unhandled error while receiving data: %s', e$message)
            private$log$error(get_traceback(e))
            private$start_reconnect(e)
            return(FALSE)  # Exit loop
          }
        })

        if (is.null(body)) next

        # Decrypt the message
        message <- NULL
        tryCatch({
          message <- private$state$decrypt_message_data(body)
          if (is.null(message)) {
            next  # Message to be ignored
          }
        }, error = function(e) {
          if (inherits(e, "TypeNotFoundError")) {
            # Unknown object type
            private$log$info('Type %08x not found, remaining data %r',
                           e$invalid_constructor_id, e$remaining)
          } else if (inherits(e, "SecurityError")) {
            # Decoding error, ignore the message
            private$log$warning('Security error while unpacking a received message: %s', e$message)
          } else if (inherits(e, "InvalidBufferError") && e$code == 404) {
            private$log$info('Server does not know about the current auth key; the session may need to be recreated')
            future::value(private$disconnect(error = AuthKeyNotFound$new()))
            return(FALSE)  # Exit loop
          } else if (inherits(e, "BufferError")) {
            private$log$warning('Invalid buffer: %s', e$message)
            private$start_reconnect(e)
            return(FALSE)  # Exit loop
          } else {
            private$log$error('Unhandled error while decrypting data: %s', e$message)
            private$log$error(get_traceback(e))
            private$start_reconnect(e)
            return(FALSE)  # Exit loop
          }
        })

        if (is.null(message)) next

        # Process the message
        tryCatch({
          future::value(private$process_message(message))
        }, error = function(e) {
          private$log$error('Unhandled error while processing message: %s', e$message)
          private$log$error(get_traceback(e))
        })
      }
    },

    # Message handlers

    #' Process received message
    process_message = function(message) {
      # Add to pending acknowledgments
      private$pending_ack$add(message$msg_id)

      # Find appropriate handler
      constructor_id <- message$obj$CONSTRUCTOR_ID
      handler <- private$handlers[[as.character(constructor_id)]]

      # Default to update handler if not found
      if (is.null(handler)) {
        handler <- private$handle_update
      }

      # Execute the handler
      return(handler(message))
    },

    #' Find states matching a message ID
    pop_states = function(msg_id) {
      # Look for exact match
      msg_id_str <- as.character(msg_id)
      state <- private$pending_state[[msg_id_str]]
      if (!is.null(state)) {
        private$pending_state[[msg_id_str]] <- NULL
        return(list(state))
      }

      # Look for container ID match
      to_pop <- character(0)
      for (id in names(private$pending_state)) {
        if (private$pending_state[[id]]$container_id == msg_id) {
          to_pop <- c(to_pop, id)
        }
      }

      if (length(to_pop) > 0) {
        states <- list()
        for (id in to_pop) {
          states <- append(states, private$pending_state[[id]])
          private$pending_state[[id]] <- NULL
        }
        return(states)
      }

      # Check last acknowledgments
      for (ack in private$last_acks$items) {
        if (ack$msg_id == msg_id) {
          return(list(ack))
        }
      }

      return(list())
    },

    #' Handle RPC results
    handle_rpc_result = function(message) {
      rpc_result <- message$obj
      state <- private$pending_state[[as.character(rpc_result$req_msg_id)]]
      private$pending_state[[as.character(rpc_result$req_msg_id)]] <- NULL

      private$log$debug('Handling RPC result for message %d', rpc_result$req_msg_id)

      if (is.null(state)) {
        # Handle response without parent request
        if (!is.null(rpc_result$error)) {
          private$log$info('Received error without parent request: %s', rpc_result$error)
        } else {
          tryCatch({
            reader <- BinaryReader$new(rpc_result$body)
            obj <- reader$tgread_object()
            if (!inherits(obj, "upload.File")) {
              private$log$info('Received response without parent request: %s', rpc_result$body)
            }
          }, error = function(e) {
            private$log$info('Received response without parent request: %s', rpc_result$body)
          })
        }
        return(NULL)
      }

      # Handle error or result
      if (!is.null(rpc_result$error)) {
        error <- rpc_message_to_error(rpc_result$error, state$request)
        private$send_queue$append(
          RequestState$new(MsgsAck$new(list(state$msg_id)))
        )

        if (!future::resolved(state$future)) {
          state$future$set_exception(error)
        }
      } else {
        tryCatch({
          reader <- BinaryReader$new(rpc_result$body)
          result <- state$request$read_result(reader)

          # Check for updates in the result
          private$store_own_updates(result)

          if (!future::resolved(state$future)) {
            state$future$set_result(result)
          }
        }, error = function(e) {
          if (!future::resolved(state$future)) {
            state$future$set_exception(e)
          }
        })
      }
    },

    #' Handle message containers
    handle_container = function(message) {
      private$log$debug('Handling container')
      for (inner_message in message$obj$messages) {
        future::value(private$process_message(inner_message))
      }
    },

    #' Handle gzipped data
    handle_gzip_packed = function(message) {
      private$log$debug('Handling gzipped data')
      reader <- BinaryReader$new(message$obj$data)
      message$obj <- reader$tgread_object()
      future::value(private$process_message(message))
    },

    #' Handle updates
    handle_update = function(message) {
      tryCatch({
        if (message$obj$SUBCLASS_OF_ID != 0x8af52aac) {  # crc32(b'Updates')
          private$log$warning(
            'Note: %s is not an update, not dispatching it %s',
            class(message$obj)[1],
            message$obj
          )
          return(NULL)
        }

        private$log$debug('Handling update %s', class(message$obj)[1])
        private$updates_queue$put_nowait(message$obj)
      }, error = function(e) {
        private$log$error("Error handling update: %s", e$message)
      })
    },

    #' Store updates originating from our own requests
    #' @param obj Object to check for updates
    store_own_updates = function(obj) {
      update_ids <- c(
        UpdateShortMessage$CONSTRUCTOR_ID,
        UpdateShortChatMessage$CONSTRUCTOR_ID,
        UpdateShort$CONSTRUCTOR_ID,
        UpdatesCombined$CONSTRUCTOR_ID,
        Updates$CONSTRUCTOR_ID,
        UpdateShortSentMessage$CONSTRUCTOR_ID
      )

      update_like_ids <- c(
        messages.AffectedHistory$CONSTRUCTOR_ID,
        messages.AffectedMessages$CONSTRUCTOR_ID,
        messages.AffectedFoundMessages$CONSTRUCTOR_ID
      )

      tryCatch({
        if (obj$CONSTRUCTOR_ID %in% update_ids) {
          obj$.self_outgoing <- TRUE  # flag to only process, but not dispatch these
          private$updates_queue$put_nowait(obj)
        } else if (obj$CONSTRUCTOR_ID %in% update_like_ids) {
          # Ugly "hack" (?) - otherwise bots reliably detect gaps when deleting messages.
          #
          # Note: the `date` being `NULL` is used to check for `updatesTooLong`, so epoch
          # is used instead. It is still not read, because `updateShort` has no `seq`.
          #
          # Some requests, such as `readHistory`, also return these types. But the `pts_count`
          # seems to be zero, so while this will produce some bogus `updateDeleteMessages`,
          # it's still one of the "cleaner" approaches to handling the new `pts`.
          # `updateDeleteMessages` is probably the "least-invasive" update that can be used.
          epoch_time <- as.POSIXct("1970-01-01 00:00:00", tz = "UTC")
          upd <- UpdateShort$new(
            UpdateDeleteMessages$new(list(), obj$pts, obj$pts_count),
            epoch_time
          )
          upd$.self_outgoing <- TRUE
          private$updates_queue$put_nowait(upd)
        } else if (obj$CONSTRUCTOR_ID == messages.InvitedUsers$CONSTRUCTOR_ID) {
          obj$updates$.self_outgoing <- TRUE
          private$updates_queue$put_nowait(obj$updates)
        }
      }, error = function(e) {
        # Ignore attribute errors
      })
    },

    #' Handle pong results
    #' @param message Message containing pong
    handle_pong = function(message) {
      pong <- message$obj
      private$log$debug('Handling pong for message %d', pong$msg_id)
      if (identical(private$ping, pong$ping_id)) {
        private$ping <- NULL
      }

      state <- private$pending_state[[as.character(pong$msg_id)]]
      private$pending_state[[as.character(pong$msg_id)]] <- NULL

      if (!is.null(state)) {
        future::value(state$future$set_result(pong))
      }
    },

    #' Handle bad server salt notifications
    #' @param message Message containing bad salt notification
    handle_bad_server_salt = function(message) {
      bad_salt <- message$obj
      private$log$debug('Handling bad salt for message %d', bad_salt$bad_msg_id)
      private$state$salt <- bad_salt$new_server_salt
      states <- private$pop_states(bad_salt$bad_msg_id)
      private$send_queue$extend(states)

      private$log$debug('%d message(s) will be resent', length(states))
    },

    #' Handle bad message notifications
    #' @param message Message containing bad message notification
    handle_bad_notification = function(message) {
      bad_msg <- message$obj
      states <- private$pop_states(bad_msg$bad_msg_id)

      private$log$debug('Handling bad msg %s', bad_msg)
      if (bad_msg$error_code %in% c(16, 17)) {
        # Sent msg_id too low or too high (respectively).
        # Use the current msg_id to determine the right time offset.
        to <- private$state$update_time_offset(correct_msg_id = message$msg_id)
        private$log$info('System clock is wrong, set time offset to %ds', to)
      } else if (bad_msg$error_code == 32) {
        # msg_seqno too low, so just pump it up by some "large" amount
        # TODO A better fix would be to start with a new fresh session ID
        private$state$sequence <- private$state$sequence + 64
      } else if (bad_msg$error_code == 33) {
        # msg_seqno too high never seems to happen but just in case
        private$state$sequence <- private$state$sequence - 16
      } else {
        for (state in states) {
          future::value(state$future$set_exception(
            BadMessageError$new(state$request, bad_msg$error_code)
          ))
        }
        return(NULL)
      }

      # Messages are to be re-sent once we've corrected the issue
      private$send_queue$extend(states)
      private$log$debug('%d messages will be resent due to bad msg', length(states))
    },

    #' Handle detailed info messages
    #' @param message Message containing detailed info
    handle_detailed_info = function(message) {
      msg_id <- message$obj$answer_msg_id
      private$log$debug('Handling detailed info for message %d', msg_id)
      private$pending_ack$add(msg_id)
    },

    #' Handle new detailed info messages
    #' @param message Message containing new detailed info
    handle_new_detailed_info = function(message) {
      msg_id <- message$obj$answer_msg_id
      private$log$debug('Handling new detailed info for message %d', msg_id)
      private$pending_ack$add(msg_id)
    },

    #' Handle new session created
    #' @param message Message containing new session info
    handle_new_session_created = function(message) {
      private$log$debug('Handling new session created')
      private$state$salt <- message$obj$server_salt
    },

    #' Handle server acknowledgments
    #' @param message Message containing acknowledgments
    handle_ack = function(message) {
      ack <- message$obj
      private$log$debug('Handling acknowledge for %s', paste(ack$msg_ids, collapse=", "))
      for (msg_id in ack$msg_ids) {
        state <- private$pending_state[[as.character(msg_id)]]
        if (!is.null(state) && inherits(state$request, "LogOutRequest")) {
          private$pending_state[[as.character(msg_id)]] <- NULL
          if (!future::resolved(state$future)) {
            future::value(state$future$set_result(TRUE))
          }
        }
      }
    },

    #' Handle future salts
    #' @param message Message containing future salts
    handle_future_salts = function(message) {
      # TODO save these salts and automatically adjust to the
      # correct one whenever the salt in use expires.
      private$log$debug('Handling future salts for message %d', message$msg_id)
      state <- private$pending_state[[as.character(message$msg_id)]]
      private$pending_state[[as.character(message$msg_id)]] <- NULL
      if (!is.null(state)) {
        future::value(state$future$set_result(message$obj))
      }
    },

    #' Handle state forgotten (MsgsStateReq and MsgResendReq)
    #' @param message Message requesting state or resend
    handle_state_forgotten = function(message) {
      private$send_queue$append(
        RequestState$new(
          MsgsStateInfo$new(
            req_msg_id = message$msg_id,
            info = paste0(rep("1", length(message$obj$msg_ids)), collapse="")
          )
        )
      )
    },

    #' Handle MsgsAllInfo
    #' @param message Message containing MsgsAllInfo
    handle_msg_all = function(message) {
      # Currently does nothing
    },

    #' Handle destroy session responses
    #' @param message Message containing destroy session response
    handle_destroy_session = function(message) {
      msg_id <- NULL
      state <- NULL

      for (id in names(private$pending_state)) {
        s <- private$pending_state[[id]]
        if (inherits(s$request, "DestroySessionRequest") &&
            s$request$session_id == message$obj$session_id) {
          msg_id <- id
          state <- s
          break
        }
      }

      if (is.null(msg_id)) {
        return(NULL)
      }

      private$pending_state[[msg_id]] <- NULL
      if (!future::resolved(state$future)) {
        future::value(state$future$set_result(message$obj))
      }
    },

    #' Handle destroy auth key responses
    #' @param message Message containing destroy auth key response
    handle_destroy_auth_key = function(message) {
      private$log$debug('Handling destroy auth key %s', message$obj)

      ids_to_process <- character(0)
      for (id in names(private$pending_state)) {
        state <- private$pending_state[[id]]
        if (inherits(state$request, "DestroyAuthKeyRequest")) {
          ids_to_process <- c(ids_to_process, id)
        }
      }

      for (id in ids_to_process) {
        state <- private$pending_state[[id]]
        private$pending_state[[id]] <- NULL
        if (!future::resolved(state$future)) {
          future::value(state$future$set_result(message$obj))
        }
      }

      # If the auth key has been destroyed, that pretty much means the
      # library can't continue as our auth key will no longer be found
      # on the server.
      # Even if the library didn't disconnect, the server would (and then
      # the library would reconnect and learn about auth key being invalid).
      if (inherits(message$obj, "DestroyAuthKeyOk")) {
        future::value(private$disconnect(error = AuthKeyNotFound$new()))
      }
    }
  )
  )
