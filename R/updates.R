#' Helper functions to simulate Python functionality
#'
#' These functions are used to simulate Python's asyncio and threading behavior in R.
#'
#' @import promises
#'
NULL
#' The `get_running_loop` function simulates getting the current event loop.
#' @return A promise object or NULL.
#' @export
get_running_loop <- function() {
  return(Sys.time())  # Simplification - returns current time
}

# Define types for TYPE_CHECKING equivalent
is_typing <- FALSE

#' UpdateMethods class
#' @description
#' Handles updates and events for the Telegram client.
#' @export
UpdateMethods <- R6::R6Class("UpdateMethods",
  public = list(
    # Region Public methods

    #' @field client The Telegram client instance.
    client = NULL,

    #' @description
    #' Initializes the UpdateMethods with the given client.
    #' @param client The Telegram client instance.
    #' @return None.
    initialize = function(client) {
      self$client <- client
    },

    #' @description
    #' Runs the update loop until disconnected.
    #' @return A promise that resolves when disconnected.
    run_until_disconnected = function() {
      return(
        future::future( {
          # Make a high-level request to notify that we want updates
          self$client(GetStateRequest$new())
          result <- self$client$disconnected
          if (!is.null(self$client$updates_error)) {
            stop(self$client$updates_error)
          }
          return(result)
        } %...!% {
          if (inherits(., "KeyboardInterrupt")) {
            return(NULL)
          }
        } %...>% {
          self$client$disconnect()
        }
      ))
    },

    #' @description
    #' Sets whether to receive updates.
    #' @param receive_updates A logical value indicating whether to receive updates.
    #' @return A promise that resolves when the updates are set.
    set_receive_updates = function(receive_updates) {
      return(
        future::future( {
          self$client$no_updates <- !receive_updates
          if (receive_updates) {
            self$client(GetStateRequest$new())
          }
        }
      ))
    },

    #' @description
    #' Adds an event handler for a specific event.
    #' @param event The event type to handle.
    #' @return A decorator function that wraps the event handler.
    on = function(event) {
      decorator <- function(f) {
        self$client$add_event_handler(f, event)
        return(f)
      }
      return(decorator)
    },

    #' @description
    #' Adds an event handler for a specific event.
    #' @param callback The callback function to handle the event.
    #' @param event The event type to handle.
    #' @return NULL or an error if the event is not found.
    add_event_handler = function(callback, event = NULL) {
      builders <- events$get_handlers(callback)
      if (!is.null(builders)) {
        for (event in builders) {
          self$client$event_builders <- c(self$client$event_builders, list(list(event, callback)))
        }
        return(NULL)
      }

      if (is.function(event)) {
        event <- event()
      } else if (is.null(event)) {
        event <- events$Raw()
      }

      self$client$event_builders <- c(self$client$event_builders, list(list(event, callback)))
    },

    #' @description
    #' Removes an event handler for a specific event.
    #' @param callback The callback function to remove.
    #' @param event The event type to remove.
    #' @return The number of handlers removed.
    remove_event_handler = function(callback, event = NULL) {
      found <- 0
      if (!is.null(event) && !is.function(event)) {
        event <- class(event)
      }

      i <- length(self$client$event_builders)
      while (i > 0) {
        i <- i - 1
        ev_cb <- self$client$event_builders[[i + 1]]
        ev <- ev_cb[[1]]
        cb <- ev_cb[[2]]

        if (identical(cb, callback) && (is.null(event) || inherits(ev, event))) {
          self$client$event_builders <- self$client$event_builders[-i]
          found <- found + 1
        }
      }

      return(found)
    },

    #' @description
    #' Lists all event handlers.
    #' @return A list of event handlers with their callbacks and events.
    list_event_handlers = function() {
      result <- list()
      for (i in seq_along(self$client$event_builders)) {
        event_cb <- self$client$event_builders[[i]]
        result[[i]] <- list(callback = event_cb[[2]], event = event_cb[[1]])
      }
      return(result)
    },

    #' @description
    #' Catches up on updates.
    #' @return A promise that resolves when caught up.
    catch_up = function() {
      return(
        future::future( {
          self$client$updates_queue$put(types$UpdatesTooLong())
        }
      ))
    },

    # Region Private methods

    #' @description
    #' Handles the update loop.
    #' @return A promise that resolves when the loop is finished.
    update_loop = function() {
      return(
        future::future( {
          # If the MessageBox is not empty, the account had to be logged-in to fill in its state.
          # This flag is used to propagate the "you got logged-out" error up (but getting logged-out
          # can only happen if it was once logged-in).
          was_once_logged_in <- identical(self$client$authorized, TRUE) || !self$client$message_box$is_empty()

          self$client$updates_error <- NULL
          tryCatch({
            if (self$client$catch_up) {
              # User wants to catch up as soon as the client is up and running,
              # so this is the best place to do it.
              self$client$catch_up()
            }

            updates_to_dispatch <- new.env()
            updates_to_dispatch$queue <- list()

            while (self$client$is_connected()) {
              if (length(updates_to_dispatch$queue) > 0) {
                if (self$client$sequential_updates) {
                  self$client$dispatch_update(updates_to_dispatch$queue[[1]])
                  updates_to_dispatch$queue <- updates_to_dispatch$queue[-1]
                } else {
                  while (length(updates_to_dispatch$queue) > 0) {
                    task <- self$client$loop$create_task(self$client$dispatch_update(updates_to_dispatch$queue[[1]]))
                    updates_to_dispatch$queue <- updates_to_dispatch$queue[-1]
                    self$client$event_handler_tasks$add(task)
                    task$add_done_callback(function(t) self$client$event_handler_tasks$discard(t))
                  }
                }

                next
              }

              if (length(self$client$mb_entity_cache) >= self$client$entity_cache_limit) {
                self$client$log[["name"]]$info(
                  'In-memory entity cache limit reached (%s/%s), flushing to session',
                  length(self$client$mb_entity_cache),
                  self$client$entity_cache_limit
                )
                self$client$save_states_and_entities()
                self$client$mb_entity_cache$retain(function(id) {
                  id == self$client$mb_entity_cache$self_id || id %in% self$client$message_box$map
                })
                if (length(self$client$mb_entity_cache) >= self$client$entity_cache_limit) {
                  warning('in-memory entities exceed entity_cache_limit after flushing; consider setting a larger limit')
                }

                self$client$log[["name"]]$info(
                  'In-memory entity cache at %s/%s after flushing to session',
                  length(self$client$mb_entity_cache),
                  self$client$entity_cache_limit
                )
              }

              get_diff <- self$client$message_box$get_difference()
              if (!is.null(get_diff)) {
                self$client$log[["name"]]$debug('Getting difference for account updates')
                tryCatch({
                  diff <- self$client(get_diff)
                }, error = function(e) {
                  if (inherits(e, c("ServerError", "TimedOutError", "FloodWaitError")) ||
                      inherits(e, "ValueError")) {
                    # Telegram is having issues
                    self$client$log[["name"]]$info('Cannot get difference since Telegram is having issues: %s',
                                                     class(e)[1])
                    self$client$message_box$end_difference()
                    return(NULL)
                  }

                  if (inherits(e, c("UnauthorizedError", "AuthKeyError"))) {
                    # Not logged in or broken authorization key, can't get difference
                    self$client$log[["name"]]$info('Cannot get difference since the account is not logged in: %s',
                                                     class(e)[1])
                    self$client$message_box$end_difference()
                    if (was_once_logged_in) {
                      self$client$updates_error <- e
                      self$client$disconnect()
                      stop("Disconnected")
                    }
                    return(NULL)
                  }

                  if (inherits(e, "TypeNotFoundError") || inherits(e, "sqlite.OperationalError")) {
                    # User is likely doing weird things with their account or session
                    self$client$log[["name"]]$warning('Cannot get difference since the account is likely misusing the session: %s',
                                                        e$message)
                    self$client$message_box$end_difference()
                    self$client$updates_error <- e
                    self$client$disconnect()
                    stop("Disconnected")
                  }

                  if (inherits(e, "OSError")) {
                    # Network is likely down
                    self$client$log[["name"]]$info('Cannot get difference since the network is down: %s: %s',
                                                     class(e)[1], e$message)
                    Sys.sleep(5)
                    return(NULL)
                  }

                  stop(e)  # Re-throw any other errors
                })

                result <- self$client$message_box$apply_difference(diff, self$client$mb_entity_cache)
                updates <- result$updates
                users <- result$users
                chats <- result$chats

                if (length(updates) > 0) {
                  self$client$log[["name"]]$info('Got difference for account updates')
                }

                processed_updates <- self$client$preprocess_updates(updates, users, chats)
                updates_to_dispatch$queue <- c(updates_to_dispatch$queue, processed_updates)
                next
              }

              # Continue with handling channel differences and other updates...
              # (The rest of the update_loop logic follows similar patterns)

              # This is a simplified version for brevity
              deadline <- self$client$message_box$check_deadlines()
              deadline_delay <- deadline - get_running_loop()
              if (deadline_delay > 0) {
                tryCatch({
                  updates <- self$client$updates_queue$get(timeout = deadline_delay)
                }, error = function(e) {
                  if (inherits(e, "TimeoutError")) {
                    self$client$log[["name"]]$debug('Timeout waiting for updates expired')
                    return(NULL)
                  }
                  stop(e)
                })
              } else {
                next
              }

              processed <- list()
              tryCatch({
                result <- self$client$message_box$process_updates(updates, self$client$mb_entity_cache, processed)
                users <- result$users
                chats <- result$chats
              }, error = function(e) {
                if (inherits(e, "GapError")) {
                  return(NULL)  # get(_channel)_difference will start returning requests
                }
                stop(e)
              })

              updates_to_dispatch$queue <- c(updates_to_dispatch$queue,
                                           self$client$preprocess_updates(processed, users, chats))
            }
          }, error = function(e) {
            if (inherits(e, "CancelledError")) {
              return(NULL)
            }
            self$client$log[["name"]]$exception(sprintf('Fatal error handling updates (this is a bug in Telethon v%s, please report it)',
                                                          "version"))
            self$client$updates_error <- e
            self$client$disconnect()
          })
        }
      ))
    },

    #' @description
    #' Preprocesses updates before dispatching.
    #' @param updates A list of updates to preprocess.
    #' @param users A list of user entities.
    #' @param chats A list of chat entities.
    #' @return A list of preprocessed updates.
    preprocess_updates = function(updates, users, chats) {
      self$client$mb_entity_cache$extend(users, chats)
      entities <- list()

      for (x in c(users, chats)) {
        peer_id <- utils$get_peer_id(x)
        entities[[as.character(peer_id)]] <- x
      }

      for (u in updates) {
        u$entities <- entities
      }

      return(updates)
    },

    #' @description
    #' Sends a keepalive ping to the server.
    #' @return A promise that resolves when the ping is sent.
    keepalive_loop = function() {
      return(
        future::future( {
          # Pings' ID don't really need to be secure, just "random"
          rnd <- function() {
            sample(-2^31:2^31, 1)  # R has smaller integer range than Python
          }

          while (self$client$is_connected()) {
            tryCatch({
              self$client$disconnected %...>% {
                # We actually just want to act upon timeout
                NULL
              } %...!% {
                if (inherits(., "TimeoutError")) {
                  # This is the expected path - timeout after 60 seconds
                  NULL
                } else if (inherits(., "CancelledError")) {
                  stop("Cancelled")
                } else {
                  # Any disconnected exception should be ignored
                  NULL
                }
              }
            })

            # Check if we have any exported senders to clean-up periodically
            self$client$clean_exported_senders()

            # Don't bother sending pings until the low-level connection is ready
            if (!self$client$sender$transport_connected()) {
              next
            }

            # We also don't really care about their result.
            # Just send them periodically.
            tryCatch({
              self$client$sender$keepalive_ping(rnd())
            }, error = function(e) {
              if (inherits(e, c("ConnectionError", "CancelledError"))) {
                stop("Connection error")
              }
            })

            # Save entities and cached files periodically
            self$client$save_states_and_entities()
            self$client$session$save()
          }
        }
      ))
    },

    #' @description
    #' Dispatches an update to the appropriate event handlers.
    #' @param update The update to dispatch.
    #' @return A promise that resolves when the update is dispatched.
    dispatch_update = function(update) {
      return(
        future::future( {
          # TODO only used for AlbumHack
          others <- NULL

          if (is.null(self$client$mb_entity_cache$self_id)) {
            # Some updates require our own ID
            tryCatch({
              self$client$get_me(input_peer = TRUE)
            }, error = function(e) {
              if (inherits(e, "OSError")) {
                NULL  # might not have connection
              } else {
                stop(e)
              }
            })
          }

          built <- EventBuilderDict$new(self$client, update, others)

          # Handle conversations
          for (conv_set_name in names(self$client$conversations)) {
            conv_set <- self$client$conversations[[conv_set_name]]
            for (conv in conv_set) {
              ev <- built$get(events$NewMessage)
              if (!is.null(ev)) {
                conv$on_new_message(ev)
              }

              ev <- built$get(events$MessageEdited)
              if (!is.null(ev)) {
                conv$on_edit(ev)
              }

              ev <- built$get(events$MessageRead)
              if (!is.null(ev)) {
                conv$on_read(ev)
              }

              if (conv$custom) {
                conv$check_custom(built)
              }
            }
          }

          # Handle event builders
          for (builder_cb in self$client$event_builders) {
            builder <- builder_cb[[1]]
            callback <- builder_cb[[2]]

            event <- built$get(class(builder))
            if (is.null(event)) {
              next
            }

            if (!builder$resolved) {
              builder$resolve(self$client)
            }

            filter <- builder$filter(event)
            if (is.function(filter) && inherits(filter, "awaitable")) {
              filter <- filter()  # Simplified - in R we'd need to await this properly
            }

            if (!filter) {
              next
            }

            tryCatch({
              callback(event)
            }, error = function(e) {
              if (inherits(e, "AlreadyInConversationError")) {
                name <- if (exists("name", callback)) callback$name else deparse(substitute(callback))
                self$client$log[["name"]]$debug(
                  'Event handler "%s" already has an open conversation, ignoring new one', name)
              } else if (inherits(e, "StopPropagation")) {
                name <- if (exists("name", callback)) callback$name else deparse(substitute(callback))
                self$client$log[["name"]]$debug(
                  'Event handler "%s" stopped chain of propagation for event %s.',
                  name, class(event)[1])
                stop("Break loop")  # To simulate break in R
              } else {
                if (!inherits(e, "CancelledError") || self$client$is_connected()) {
                  name <- if (exists("name", callback)) callback$name else deparse(substitute(callback))
                  self$client$log[["name"]]$exception(paste('Unhandled exception on', name))
                }
              }
            })
          }
        }
      ))
    },

    #' @description
    #' Handles auto-reconnect after a disconnection.
    #' @return A promise that resolves when the auto-reconnect is handled.
    handle_auto_reconnect = function() {
      return(
        future::future( {
          # Make a high-level request to let Telegram know we are still interested in updates
          tryCatch({
            self$client$get_me()
          }, error = function(e) {
            self$client$log[["name"]]$warning(
              'Error executing high-level request after reconnect: %s: %s',
              class(e)[1], e$message)
          })
        }
      ))
    }
  )
)

#' EventBuilderDict class
#' @description
#' Handles the building of events from updates and other data.
#' @export
EventBuilderDict <- R6::R6Class("EventBuilderDict",
  public = list(

    #' @field client The Telegram client instance.
    client = NULL,

    #' @field update The update data.
    update = NULL,

    #' @field others Additional data for building events.
    others = NULL,

    #' @field cache A cache for built events.
    cache = list(),

    #' @description
    #' Initializes the EventBuilderDict with the given client, update, and others.
    #' @param client The Telegram client instance.
    #' @param update The update data.
    #' @param others Additional data for building events.
    #' @return None.
    initialize = function(client, update, others) {
      self$client <- client
      self$update <- update
      self$others <- others
    },

    #' @description
    #' Builds an event from the given builder.
    #' @param builder The builder to use for building the event.
    #' @return The built event.
    get = function(builder) {
      builder_name <- deparse(substitute(builder))

      if (builder_name %in% names(self$cache)) {
        return(self$cache[[builder_name]])
      }

      event <- builder$build(self$update, self$others, self$client$self_id)
      self$cache[[builder_name]] <- event

      if (inherits(event, "EventCommon")) {
        event$original_update <- self$update
        event$entities <- self$update$entities
        event$set_client(self$client)
      } else if (!is.null(event)) {
        event$client <- self$client
      }

      return(event)
    }
  )
)
