#' ftm_flood - Format flood wait message
#' @param delay Delay time in seconds
#' @param request The request object
#' @param early Boolean indicating if the message is for an early flood wait
#' @param td Function to convert delay to time difference
#' @return Formatted flood wait message
fmt_flood <- function(delay, request, early = FALSE, td = as.difftime) {
  sprintf(
    "Sleeping%s for %ds (%s) on %s flood wait",
    if (early) " early" else "",
    delay,
    as.character(td(delay, units = "secs")),
    class(request)[1]
  )
}

#' @title UserMethods
#' @description UserMethods class for handling user-related methods in Telethon.
#' @details
#' This class provides methods to interact with Telegram's API, including user authorization,
#' getting user information, and handling input entities.
#' @export
UserMethods <- R6::R6Class(
  "UserMethods",
  public = list(

    #' @field client The client object.
    client = NULL,

    #' @description
    #' Initialize the UserMethods class.
    #' @param client The client object.
    #' @return None.
    initialize = function(client) {
      self$client <- client
    },

    #' @description
    #' Make a call to the Telegram API.
    #' @param request The request object.
    #' @param ordered Boolean indicating if the call is ordered.
    #' @param flood_sleep_threshold The threshold for flood sleep.
    #' @return A future object representing the result of the API call.
    call = function(request, ordered = FALSE, flood_sleep_threshold = NULL) {
      future::future({
        self$call_internal(self$client$sender, request, ordered, flood_sleep_threshold)
      })
    },

    #' @description
    #' Make an internal call to the Telegram API.
    #' @param sender The sender object.
    #' @param request The request object.
    #' @param ordered Boolean indicating if the call is ordered.
    #' @param flood_sleep_threshold The threshold for flood sleep.
    #' @return The result of the API call.
    call_internal = function(sender, request, ordered = FALSE, flood_sleep_threshold = NULL) {
      if (!is.null(self$client$loop) && self$client$loop != helpers$get_running_loop()) {
        stop("The asyncio event loop must not change after connection (see the FAQ for details)")
      }

      if (is.null(flood_sleep_threshold)) {
        flood_sleep_threshold <- self$client$flood_sleep_threshold
      }

      requests <- if (is_list_like(request)) as.list(request) else list(request)
      request <- if (is_list_like(request)) as.list(request) else request

      for (i in seq_along(requests)) {
        r <- requests[[i]]
        if (!inherits(r, "TLRequest")) {
          stop("You can only invoke requests, not types!")
        }
        r$resolve(self$client, utils)

        # Avoid making the request if it's already in a flood wait
        if (!is.null(self$client$flood_waited_requests[[r$CONSTRUCTOR_ID]])) {
          due <- self$client$flood_waited_requests[[r$CONSTRUCTOR_ID]]
          diff <- round(due - Sys.time())
          if (diff <= 3) {
            self$client$flood_waited_requests[[r$CONSTRUCTOR_ID]] <- NULL
          } else if (diff <= flood_sleep_threshold) {
            message(fmt_flood(diff, r, early = TRUE))
            Sys.sleep(diff)
            self$client$flood_waited_requests[[r$CONSTRUCTOR_ID]] <- NULL
          } else {
            stop(errors$FloodWaitError(request = r, capture = diff))
          }
        }

        if (self$client$no_updates) {
          if (is_list_like(request)) {
            request[[i]] <- InvokeWithoutUpdatesRequest$new(r)
          } else {
            # This should only run once as requests should be a list of 1 item
            request <- InvokeWithoutUpdatesRequest$new(r)
          }
        }
      }

      request_index <- 1
      last_error <- NULL
      self$client$last_request <- Sys.time()

      for (attempt in retry_range(self$client$request_retries)) {
        tryCatch({
          future_result <- sender$send(request, ordered = ordered)
          if (is.list(future_result)) {
            results <- list()
            exceptions <- list()
            for (f in future_result) {
              tryCatch({
                result <- future::value(f)
                self$client$session$process_entities(result)
                exceptions <- c(exceptions, list(NULL))
                results <- c(results, list(result))
                request_index <- request_index + 1
              }, error = function(e) {
                exceptions <- c(exceptions, list(e))
                results <- c(results, list(NULL))
              })
            }
            if (any(!sapply(exceptions, is.null))) {
              stop(errors$MultiError(exceptions, results, requests))
            } else {
              return(results)
            }
          } else {
            result <- future::value(future_result)
            self$client$session$process_entities(result)
            return(result)
          }
        }, error = function(e) {
          if (inherits(e, c("ServerError", "RpcCallFailError",
                          "RpcMcgetFailError", "InterdcCallErrorError",
                          "TimedOutError", "InterdcCallRichErrorError"))) {
            last_error <<- e
            message(sprintf("Telegram is having internal issues %s: %s",
                           class(e)[1], e$message))
            Sys.sleep(2)
          } else if (inherits(e, c("FloodWaitError", "FloodPremiumWaitError",
                                  "SlowModeWaitError", "FloodTestPhoneWaitError"))) {
            last_error <<- e
            if (is_list_like(request)) {
              request <<- request[[request_index]]
            }

            # SLOW_MODE_WAIT is chat-specific, not request-specific
            if (!inherits(e, "SlowModeWaitError")) {
              self$client$flood_waited_requests[[request$CONSTRUCTOR_ID]] <- Sys.time() + e$seconds
            }

            # In test servers, FLOOD_WAIT_0 has been observed, and sleeping for
            # such a short amount will cause retries very fast leading to issues.
            if (e$seconds == 0) {
              e$seconds <- 1
            }

            if (e$seconds <= flood_sleep_threshold) {
              message(fmt_flood(e$seconds, request))
              Sys.sleep(e$seconds)
            } else {
              stop(e)
            }
          } else if (inherits(e, c("PhoneMigrateError", "NetworkMigrateError",
                                 "UserMigrateError"))) {
            last_error <<- e
            message(sprintf("Phone migrated to %d", e$new_dc))
            should_raise <- inherits(e, c("PhoneMigrateError", "NetworkMigrateError"))

            if (should_raise && self$is_user_authorized()) {
              stop(e)
            }
            self$client$switch_dc(e$new_dc)
          } else {
            stop(e)
          }
        })
      }

      if (self$client$raise_last_call_error && !is.null(last_error)) {
        stop(last_error)
      }
      stop(sprintf("Request was unsuccessful %d time(s)", attempt))
    },

    # Public methods

    #' @description
    #' Get the current user.
    #' @param input_peer Boolean indicating if the result should be an InputPeer.
    #' @return A future object representing the current user.
    get_me = function(input_peer = FALSE) {
      future::future({
        if (input_peer && !is.null(self$client$mb_entity_cache$self_id)) {
          return(self$client$mb_entity_cache$get(self$client$mb_entity_cache$self_id)$as_input_peer())
        }

        tryCatch({
          me <- self$call(GetUsersRequest$new(list(InputUserSelf$new())))[[1]]

          if (is.null(self$client$mb_entity_cache$self_id)) {
            self$client$mb_entity_cache$set_self_user(me$id, me$bot, me$access_hash)
          }

          return(if (input_peer) get_input_peer(me, allow_self = FALSE) else me)
        }, error = function(e) {
          if (inherits(e, "UnauthorizedError")) {
            return(NULL)
          }
          stop(e)
        })
      })
    },

    #' @description
    #' Get the ID of the current user.
    #' @return The ID of the current user.
    self_id = function() {
      return(self$client$mb_entity_cache$self_id)
    },

    #' @description
    #' Check if the current user is a bot.
    #' @return A future object indicating if the user is a bot.
    is_bot = function() {
      future::future({
        if (is.null(self$client$mb_entity_cache$self_bot)) {
          future::value(self$get_me(input_peer = TRUE))
        }

        return(self$client$mb_entity_cache$self_bot)
      })
    },

    #' @description
    #' Check if the current user is authorized.
    #' @return A future object indicating if the user is authorized.
    is_user_authorized = function() {
      future::future({
        if (is.null(self$client$authorized)) {
          tryCatch({
            # Any request that requires authorization will work
            future::value(self$call(GetStateRequest$new()))
            self$client$authorized <- TRUE
          }, error = function(e) {
            if (inherits(e, "RPCError")) {
              self$client$authorized <- FALSE
            } else {
              stop(e)
            }
          })
        }

        return(self$client$authorized)
      })
    },

    #' @description
    #' Get an entity from a given input.
    #' @param entity The input entity (user, chat, or channel).
    #' @return A future object representing the entity.
    get_entity = function(entity) {
      future::future({
        single <- !is_list_like(entity)
        if (single) {
          entity <- list(entity)
        }

        # Group input entities by string (resolve username),
        # input users (get users), input chat (get chats) and
        # input channels (get channels) to get the most entities
        # in the less amount of calls possible.
        inputs <- list()
        for (x in entity) {
          if (is.character(x)) {
            inputs <- c(inputs, list(x))
          } else {
            inputs <- c(inputs, list(future::value(self$get_input_entity(x))))
          }
        }

        lists <- list(
          USER = list(),
          CHAT = list(),
          CHANNEL = list()
        )

        for (x in inputs) {
          tryCatch({
            entity_type <- helpers$entity_type(x)
            lists[[entity_type]] <- c(lists[[entity_type]], list(x))
          }, error = function(e) {
            # Skip if type can't be determined
          })
        }

        users <- lists$USER
        chats <- lists$CHAT
        channels <- lists$CHANNEL

        if (length(users) > 0) {
          # GetUsersRequest has a limit of 200 per call
          tmp <- list()
          while (length(users) > 0) {
            curr <- users[seq_len(min(200, length(users)))]
            users <- users[-seq_len(min(200, length(users)))]
            tmp <- c(tmp, future::value(self$call(GetUsersRequest$new(curr))))
          }
          users <- tmp
        }

        if (length(chats) > 0) {
          chat_ids <- lapply(chats, function(x) x$chat_id)
          chats <- future::value(self$call(GetChatsRequest$new(chat_ids)))$chats
        }

        if (length(channels) > 0) {
          channels <- future::value(self$call(GetChannelsRequest$new(channels)))$chats
        }

        # Merge users, chats and channels into a single dictionary
        id_entity <- list()
        for (x in c(users, chats, channels)) {
          id <- get_peer_id(x, add_mark = FALSE)
          id_entity[[as.character(id)]] <- x
        }

        # We could check saved usernames and put them into the users,
        # chats and channels list from before. While this would reduce
        # the amount of ResolveUsername calls, it would fail to catch
        # username changes.
        result <- list()
        for (x in inputs) {
          if (is.character(x)) {
            result <- c(result, list(future::value(self$get_entity_from_string(x))))
          } else if (!inherits(x, "InputPeerSelf")) {
            id <- get_peer_id(x, add_mark = FALSE)
            result <- c(result, list(id_entity[[as.character(id)]]))
          } else {
            # Find the first user that is self
            for (u in id_entity) {
              if (inherits(u, "User") && u$is_self) {
                result <- c(result, list(u))
                break
              }
            }
          }
        }

        if (single) result[[1]] else result
      })
    },

    #' @description
    #' Get the input entity for a given peer.
    #' @param peer The peer to get the input entity for.
    #' @return A future object representing the input entity.
    get_input_entity = function(peer) {
      future::future({
        # Short-circuit if the input parameter directly maps to an InputPeer
        tryCatch({
          return(get_input_peer(peer))
        }, error = function(e) {
          # Continue with other methods
        })

        # Next in priority is having a peer (or its ID) cached in-memory
        tryCatch({
          # 0x2d45687 == crc32(b'Peer')
          if (is.numeric(peer) || peer$SUBCLASS_OF_ID == 0x2d45687) {
            id <- get_peer_id(peer, add_mark = FALSE)
            return(self$client$mb_entity_cache$get(id)$as_input_peer())
          }
        }, error = function(e) {
          # Continue with other methods
        })

        # Then come known strings that take precedence
        if (is.character(peer) && peer %in% c("me", "self")) {
          return(InputPeerSelf())
        }

        # No InputPeer, cached peer, or known string. Fetch from disk cache
        tryCatch({
          return(self$client$session$get_input_entity(peer))
        }, error = function(e) {
          # Continue with other methods
        })

        # Only network left to try
        if (is.character(peer)) {
          entity <- future::value(self$get_entity_from_string(peer))
          return(get_input_peer(entity))
        }

        # If we're a bot and the user has messaged us privately users.getUsers
        # will work with access_hash = 0. Similar for channels.getChannels.
        # If we're not a bot but the user is in our contacts, it seems to work
        # regardless. These are the only two special-cased requests.
        peer <- get_peer(peer)
        if (inherits(peer, "PeerUser")) {
          users <- future::value(self$call(GetUsersRequest$new(list(
            InputUser$new(user_id = peer$user_id, access_hash = 0)
          ))))
          if (length(users) > 0 && !inherits(users[[1]], "UserEmpty")) {
            return(get_input_peer(users[[1]]))
          }
        } else if (inherits(peer, "PeerChat")) {
          return(InputPeerChat$new(chat_id = peer$chat_id))
        } else if (inherits(peer, "PeerChannel")) {
          tryCatch({
            channels <- future::value(self$call(GetChannelsRequest$new(list(
              InputChannel$new(channel_id = peer$channel_id, access_hash = 0)
            ))))
            return(get_input_peer(channels$chats[[1]]))
          }, error = function(e) {
            if (inherits(e, "ChannelInvalidError")) {
              # Continue to error handling
            } else {
              stop(e)
            }
          })
        }

        stop(sprintf(
          "Could not find the input entity for %s (%s). Please read https://docs.telethon.dev/en/stable/concepts/entities.html to find out more details.",
          peer,
          class(peer)[1]
        ))
      })
    },

    #' @description
    #' Get the peer for a given input entity.
    #' @param peer The input entity to get the peer for.
    #' @return A future object representing the peer.
    get_peer = function(peer) {
      future::future({
        result <- resolve_id(future::value(self$get_peer_id(peer)))
        i <- result$id
        cls <- result$cls
        return(cls(i))
      })
    },

    #' @description
    #' Get the ID of a given peer.
    #' @param peer The input entity to get the ID for.
    #' @param add_mark Boolean indicating if the ID should be marked.
    #' @return The ID of the peer.
    get_peer_id = function(peer, add_mark = TRUE) {
      future::future({
        if (is.numeric(peer)) {
          return(get_peer_id(peer, add_mark = add_mark))
        }

        tryCatch({
          if (peer$SUBCLASS_OF_ID %in% c(0x2d45687, 0xc91c90b6)) {
            # 0x2d45687, 0xc91c90b6 == crc32(b'Peer') and b'InputPeer'
            # Already a Peer or InputPeer
          } else {
            peer <- future::value(self$get_input_entity(peer))
          }
        }, error = function(e) {
          peer <- future::value(self$get_input_entity(peer))
        })

        if (inherits(peer, "InputPeerSelf")) {
          peer <- future::value(self$get_me(input_peer = TRUE))
        }

        return(get_peer_id(peer, add_mark = add_mark))
      })
    },

    # Private methods

    #' @description
    #' Get an entity from a string.
    #' @param string The string to get the entity from.
    #' @return A future object representing the entity.
    get_entity_from_string = function(string) {
      future::future({
        phone <- parse_phone(string)
        if (!is.null(phone)) {
          tryCatch({
            contacts <- future::value(self$call(GetContactsRequest$new(0)))
            for (user in contacts$users) {
              if (user$phone == phone) {
                return(user)
              }
            }
          }, error = function(e) {
            if (inherits(e, "BotMethodInvalidError")) {
              stop("Cannot get entity by phone number as a bot (try using integer IDs, not strings)")
            } else {
              stop(e)
            }
          })
        } else if (tolower(string) %in% c("me", "self")) {
          return(future::value(self$get_me()))
        } else {
          parsed <- parse_username(string)
          username <- parsed$username
          is_join_chat <- parsed$is_join_chat

          if (is_join_chat) {
            invite <- future::value(self$call(CheckChatInviteRequest$new(username)))

            if (inherits(invite, "ChatInvite")) {
              stop("Cannot get entity from a channel (or group) that you are not part of. Join the group and retry")
            } else if (inherits(invite, "ChatInviteAlready")) {
              return(invite$chat)
            }
          } else if (!is.null(username)) {
            tryCatch({
              result <- future::value(self$call(ResolveUsernameRequest$new(username)))
              pid <- get_peer_id(result$peer, add_mark = FALSE)

              if (inherits(result$peer, "PeerUser")) {
                for (x in result$users) {
                  if (x$id == pid) {
                    return(x)
                  }
                }
              } else {
                for (x in result$chats) {
                  if (x$id == pid) {
                    return(x)
                  }
                }
              }
            }, error = function(e) {
              if (inherits(e, "UsernameNotOccupiedError")) {
                stop(sprintf('No user has "%s" as username', username))
              } else {
                stop(e)
              }
            })
          }

          # Try by exact name/title as last resort
          tryCatch({
            input_entity <- self$client$session$get_input_entity(string)
            return(future::value(self$get_entity(input_entity)))
          }, error = function(e) {
            # Continue to final error
          })
        }

        stop(sprintf('Cannot find any entity corresponding to "%s"', string))
      })
    },

    #' @description
    #' Get the input dialog for a given dialog.
    #' @param dialog The dialog to get the input dialog for.
    #' @return A future object representing the input dialog.
    get_input_dialog = function(dialog) {
      future::future({
        tryCatch({
          if (dialog$SUBCLASS_OF_ID == 0xa21c9795) {  # crc32(b'InputDialogPeer')
            dialog$peer <- future::value(self$get_input_entity(dialog$peer))
            return(dialog)
          } else if (dialog$SUBCLASS_OF_ID == 0xc91c90b6) {  # crc32(b'InputPeer')
            return(InputDialogPeer(dialog))
          }
        }, error = function(e) {
          # Continue to fallback
        })

        input_entity <- future::value(self$get_input_entity(dialog))
        return(InputDialogPeer(input_entity))
      })
    },

    #' @description
    #' Get the input notify for a given notify.
    #' @param notify The notify to get the input notify for.
    #' @return A future object representing the input notify.
    get_input_notify = function(notify) {
      future::future({
        tryCatch({
          if (notify$SUBCLASS_OF_ID == 0x58981615) {
            if (inherits(notify, "InputNotifyPeer")) {
              notify$peer <- future::value(self$get_input_entity(notify$peer))
            }
            return(notify)
          }
        }, error = function(e) {
          # Continue to fallback
        })

        input_entity <- future::value(self$get_input_entity(notify))
        return(InputNotifyPeer(input_entity))
      })
    }
  )
)
