#' Import required packages
#' @import future
NULL

#' Constants
.MAX_CHUNK_SIZE <- 100

#' Helper function to get dialog message key
#' @param peer The peer object
#' @param message_id The message ID
#' @return A list containing the channel ID and message ID
#' @export
dialog_message_key <- function(peer, message_id) {
  # Get the key to get messages from a dialog.
  #
  # We cannot just use the message ID because channels share message IDs,
  # and the peer ID is required to distinguish between them. But it is not
  # necessary in small group chats and private chats.

  channel_id <- if (inherits(peer, "PeerChannel")) peer$channel_id else NULL
  return(list(channel_id = channel_id, message_id = message_id))
}

#' DialogsIter class
#'
#' @description
#' An iterator for Telegram dialogs.
#'
#' @details
#' This class is used to iterate over Telegram dialogs (open conversations/subscribed channels).
#' The order is the same as the one seen in official applications (first pinned, then from those with the most recent message to those with the oldest message).
#'
#' @export
DialogsIter <- R6::R6Class("DialogsIter",
  inherit = RequestIter,

  public = list(

    #' @description
    #' Constructor for the DialogsIter class.
    #' @param client The Telegram client.
    #' @param limit The maximum number of dialogs to retrieve.
    #' @param offset_date The offset date to be used.
    #' @param offset_id The message ID to be used as an offset.
    #' @param offset_peer The peer to be used as an offset.
    #' @param ignore_pinned Whether pinned dialogs should be ignored or not.
    #' @param ignore_migrated Whether Chat that have "migrated_to" a Channel should be included or not.
    #' @param folder The folder from which the dialogs should be retrieved.
    #' @return A new DialogsIter object.
    #' @export
    initialize = function(client, limit, offset_date = NULL, offset_id = 0,
                          offset_peer = new("InputPeerEmpty"), ignore_pinned = FALSE,
                          ignore_migrated = FALSE, folder = NULL) {
      super$initialize(client, limit)

      self$request <- NULL
      self$seen <- NULL
      self$offset_date <- NULL
      self$ignore_migrated <- NULL

      # Using this instead of Python's init async function
      private$init_future %<-% {
        self$request <- GetDialogsRequest$new(
          offset_date = offset_date,
          offset_id = offset_id,
          offset_peer = offset_peer,
          limit = 1,
          hash = 0,
          exclude_pinned = ignore_pinned,
          folder_id = folder
        )

        if (self$limit <= 0) {
          # Special case, get a single dialog and determine count
          dialogs <- await(self$client(self$request))
          self$total <- if (!is.null(dialogs$count)) dialogs$count else length(dialogs$dialogs)
          stop("StopAsyncIteration")
        }

        self$seen <- set()
        self$offset_date <- offset_date
        self$ignore_migrated <- ignore_migrated
      }
    },

    #' @description
    #' Loads the next chunk of dialogs.
    #' @return A future that resolves to a list of dialogs.
    load_next_chunk = function() {
      return(
        future({
          self$request$limit <- min(self$left, .MAX_CHUNK_SIZE)
          r <- await(self$client(self$request))

          self$total <- if (!is.null(r$count)) r$count else length(r$dialogs)

          entities <- list()
          all_entities <- c(r$users, r$chats)
          for (x in all_entities) {
            if (!inherits(x, c("UserEmpty", "ChatEmpty"))) {
              entities[[as.character(get_peer_id(x))]] <- x
            }
          }

          self$client$mb_entity_cache$extend(r$users, r$chats)

          messages <- list()
          for (m in r$messages) {
            m$finish_init(self$client, entities, NULL)
            key <- paste0(
              dialog_message_key(m$peer_id, m$id)$channel_id, "_",
              dialog_message_key(m$peer_id, m$id)$message_id
            )
            messages[[key]] <- m
          }

          for (d in r$dialogs) {
            # We check the offset date here because Telegram may ignore it
            key <- paste0(
              dialog_message_key(d$peer, d$top_message)$channel_id, "_",
              dialog_message_key(d$peer, d$top_message)$message_id
            )
            message <- messages[[key]]
            if (!is.null(self$offset_date)) {
              date <- if (!is.null(message)) message$date else NULL
              if (is.null(date) || date$timestamp() > self$offset_date$timestamp()) {
                next
              }
            }

            peer_id <- get_peer_id(d$peer)
            if (!is.element(peer_id, self$seen)) {
              self$seen <- c(self$seen, peer_id)
              if (!is.element(as.character(peer_id), names(entities))) {
                # > In which case can a UserEmpty appear in the list of banned members?
                # > In a very rare cases. This is possible but isn't an expected behavior.
                # Real world example: https://t.me/TelethonChat/271471
                next
              }

              cd <- custom$Dialog(self$client, d, entities, message)
              if (!is.null(cd$dialog$pts)) {
                self$client$message_box$try_set_channel_state(
                  get_peer_id(d$peer, add_mark = FALSE), cd$dialog$pts
                )
              }

              if (!self$ignore_migrated || is.null(cd$entity$migrated_to)) {
                self$buffer <- c(self$buffer, list(cd))
              }
            }
          }

          if (length(self$buffer) == 0 || length(r$dialogs) < self$request$limit ||
              !inherits(r, "messages.DialogsSlice")) {
            # Buffer being empty means all returned dialogs were skipped (due to offsets).
            # Less than we requested means we reached the end, or
            # we didn't get a DialogsSlice which means we got all.
            return(TRUE)
          }

          # We can't use `messages[-1]` as the offset ID / date.
          # Why? Because pinned dialogs will mess with the order
          # in this list. Instead, we find the last dialog which
          # has a message, and use it as an offset.
          reversed_dialogs <- rev(r$dialogs)
          last_message <- NULL

          for (d in reversed_dialogs) {
            key <- paste0(
              dialog_message_key(d$peer, d$top_message)$channel_id, "_",
              dialog_message_key(d$peer, d$top_message)$message_id
            )
            if (!is.null(messages[[key]])) {
              last_message <- messages[[key]]
              break
            }
          }

          self$request$exclude_pinned <- TRUE
          self$request$offset_id <- if (!is.null(last_message)) last_message$id else 0
          self$request$offset_date <- if (!is.null(last_message)) last_message$date else NULL
          self$request$offset_peer <- self$buffer[[length(self$buffer)]]$input_entity

          return(FALSE)
        }
      ))
    },

    #' @description
    #' Gets the initialization future.
    #' @return A future that resolves to the initialization result.
    get_init_future = function() {
      return(private$init_future)
    }
  ),

  private = list(
    init_future = NULL
  )
)

#' DraftsIter class
#' @description
#' An iterator for Telegram drafts.
#' @export
DraftsIter <- R6::R6Class("DraftsIter",
  inherit = RequestIter,

  public = list(

    #' @description
    #' Constructor for the DraftsIter class.
    #' @param client The Telegram client.
    #' @param limit The maximum number of drafts to retrieve.
    #' @param entities The list of entities for which to fetch the drafts.
    #' @return A new DraftsIter object.
    initialize = function(client, limit, entities = NULL) {
      super$initialize(client, limit)

      # Using this instead of Python's init async function
      private$init_future %<-% {
        if (is.null(entities)) {
          r <- await(self$client(GetAllDraftsRequest$new()))
          items <- r$updates
        } else {
          peers <- list()
          for (entity in entities) {
            input_entity <- await(self$client$get_input_entity(entity))
            peers <- c(peers, list(InputDialogPeer$new(input_entity)))
          }

          r <- await(self$client(GetPeerDialogsRequest$new(peers)))
          items <- r$dialogs
        }

        # Create entities dictionary
        entities_dict <- list()
        all_entities <- c(r$users, r$chats)
        for (x in all_entities) {
          entities_dict[[as.character(get_peer_id(x))]] <- x
        }

        # Extend buffer with drafts
        for (d in items) {
          entity <- entities_dict[[as.character(get_peer_id(d$peer))]]
          draft_obj <- custom$Draft(self$client, entity, d$draft)
          self$buffer <- c(self$buffer, list(draft_obj))
        }
      }
    },

    #' @description
    #' Loads the next chunk of drafts.
    #' @return A future that resolves to a list of drafts.
    load_next_chunk = function() {
      return(future({ return(list()) }))
    },

    #' @description
    #' Gets the initialization future.
    #' @return A future that resolves to the initialization result.
    get_init_future = function() {
      return(private$init_future)
    }
  ),

  private = list(
    init_future = NULL
  )
)

#' DialogMethods class
#' @description
#' A class that provides methods for managing dialogs in Telegram.
#' @export
DialogMethods <- R6::R6Class("DialogMethods",
  public = list(
    # Public methods

    #' @description
    #' Gets an iterator over dialogs.
    #' @param limit The maximum number of dialogs to retrieve.
    #' @param offset_date The offset date to be used.
    #' @param offset_id The message ID to be used as an offset.
    #' @param offset_peer The peer to be used as an offset.
    #' @param ignore_pinned Whether pinned dialogs should be ignored or not.
    #' @param ignore_migrated Whether Chat that have "migrated_to" a Channel should be included or not.
    #' @param folder The folder from which the dialogs should be retrieved.
    #' @param archived Alias for folder. If unspecified, all will be returned,
    #'          FALSE implies folder=0 and TRUE implies folder=1.
    #' @return An iterator over dialogs.
    iter_dialogs = function(
      limit = NULL,
      offset_date = NULL,
      offset_id = 0,
      offset_peer = types$InputPeerEmpty(),
      ignore_pinned = FALSE,
      ignore_migrated = FALSE,
      folder = NULL,
      archived = NULL
    ) {

      if (!is.null(archived)) {
        folder <- if (archived) 1 else 0
      }

      return(DialogsIter$new(
        private$self,
        limit,
        offset_date = offset_date,
        offset_id = offset_id,
        offset_peer = offset_peer,
        ignore_pinned = ignore_pinned,
        ignore_migrated = ignore_migrated,
        folder = folder
      ))
    },

    #' @description
    #' Gets the dialogs (open conversations/subscribed channels).
    #' @param limit How many dialogs to be retrieved as maximum. Can be set to
    #'        NULL to retrieve all dialogs. Note that this may take
    #'        whole minutes if you have hundreds of dialogs, as Telegram
    #'        will tell the library to slow down through a
    #'        "FloodWaitError".
    #' @param offset_date The offset date to be used.
    #' @param offset_id The message ID to be used as an offset.
    #' @param offset_peer The peer to be used as an offset.
    #' @param ignore_pinned Whether pinned dialogs should be ignored or not.
    #' @param ignore_migrated Whether Chat that have "migrated_to" a Channel
    #'                   should be included or not. By default all the chats in your
    #'                   dialogs are returned, but setting this to TRUE will ignore
    #'                   (i.e. skip) them in the same way official applications do.
    #' @param folder The folder from which the dialogs should be retrieved.
    #' @param archived Alias for folder. If unspecified, all will be returned,
    #'           FALSE implies folder=0 and TRUE implies folder=1.
    #' @return A list of dialogs.
    get_dialogs = function(
      limit = NULL,
      offset_date = NULL,
      offset_id = 0,
      offset_peer = types$InputPeerEmpty(),
      ignore_pinned = FALSE,
      ignore_migrated = FALSE,
      folder = NULL,
      archived = NULL
    ) {

      return(future({
        iter <- private$self$iter_dialogs(
          limit = limit,
          offset_date = offset_date,
          offset_id = offset_id,
          offset_peer = offset_peer,
          ignore_pinned = ignore_pinned,
          ignore_migrated = ignore_migrated,
          folder = folder,
          archived = archived
        )
        await(iter$get_init_future())
        return(await(iter$collect()))
      }))
    },

    #' @description
    #' Gets the draft messages.
    #' @param entity The entity or list of entities for which to fetch the draft messages.
    #' @return An iterator over draft messages.
    iter_drafts = function(entity = NULL) {
      if (!is.null(entity) && !is_list_like(entity)) {
        entity <- list(entity)
      }

      # Passing a limit makes no sense for drafts
      return(DraftsIter$new(private$self, NULL, entities = entity))
    },

    #' @description
    #' Gets the draft messages.
    #' @param entity The entity or list of entities for which to fetch the draft messages.
    #' @return A list of draft messages.
    #' @export
    get_drafts = function(entity = NULL) {

      return(future({
        iter <- private$self$iter_drafts(entity)
        await(iter$get_init_future())
        items <- await(iter$collect())

        if (is.null(entity) || is_list_like(entity)) {
          return(items)
        } else {
          return(items[[1]])
        }
      }))
    },

    #' @description
    #' Edits the folder used by one or more dialogs to archive them.
    #' @param entity The entity or list of entities to move to the desired archive folder.
    #' @param folder The folder to which the dialog should be archived to.
    #' @param unpack If you want to unpack an archived folder, set this
    #'          parameter to the folder number that you want to delete.
    #' @return The Updates object that the request produces.
    #' @export
    edit_folder = function(entity = NULL, folder = NULL, unpack = NULL) {

      return(future({
        if ((is.null(entity)) == (is.null(unpack))) {
          stop("You can only set either entities or unpack, not both")
        }

        if (!is.null(unpack)) {
          return(await(private$self(DeleteFolderRequest$new(
            folder_id = unpack
          ))))
        }

        entities_list <- list()
        if (!is_list_like(entity)) {
          entities_list <- list(await(private$self$get_input_entity(entity)))
        } else {
          for (e in entity) {
            entities_list <- c(entities_list, list(await(private$self$get_input_entity(e))))
          }
        }

        if (is.null(folder)) {
          stop("You must specify a folder")
        } else if (!is_list_like(folder)) {
          folder <- rep(folder, length(entities_list))
        } else if (length(entities_list) != length(folder)) {
          stop("Number of folders does not match number of entities")
        }

        input_folder_peers <- list()
        for (i in seq_along(entities_list)) {
          input_folder_peers <- c(input_folder_peers,
                                 list(InputFolderPeer$new(entities_list[[i]], folder_id = folder[i])))
        }

        return(await(private$self(EditPeerFoldersRequest$new(input_folder_peers))))
      }))
    },

    #' @description
    #' Deletes a dialog (leaves a chat or channel).
    #' @param entity The entity of the dialog to delete.
    #' @param revoke Whether to revoke the messages from the other peer.
    #' @return The Updates object that the request produces, or nothing for private conversations.
    #' @export
    delete_dialog = function(entity, revoke = FALSE) {

      return(future({
        # If we have enough information (`Dialog.delete` gives it to us),
        # then we know we don't have to kick ourselves in deactivated chats.
        deactivated <- FALSE
        if (inherits(entity, "Chat")) {
          deactivated <- entity$deactivated
        }

        entity <- await(private$self$get_input_entity(entity))
        ty <- helpers$entity_type(entity)

        if (ty == helpers$EntityType$CHANNEL) {
          return(await(private$self(LeaveChannelRequest$new(entity))))
        }

        result <- NULL
        if (ty == EntityType$CHAT && !deactivated) {
          tryCatch({
            result <- await(private$self(DeleteChatUserRequest$new(
              entity$chat_id, InputUserSelf$new(), revoke_history = revoke
            )))
          }, error = function(e) {
            if (inherits(e, "PeerIdInvalidError")) {
              # Happens if we didn't have the deactivated information
              result <- NULL
            } else {
              stop(e)
            }
          })
        }

        is_bot <- await(private$self$is_bot())
        if (!is_bot) {
          await(private$self(DeleteHistoryRequest$new(entity, 0, revoke = revoke)))
        }

        return(result)
      }))
    },

    #' @description
    #' Creates a new conversation with the given entity.
    #' @param entity The entity with which a new conversation should be opened.
    #' @param timeout The default timeout (in seconds) per action to be used.
    #' @param total_timeout The total timeout (in seconds) to use for the whole conversation.
    #' @param max_messages The maximum amount of messages this conversation will remember.
    #' @param exclusive Whether the conversation should be exclusive within a single chat.
    #' @param replies_are_responses Whether replies should be treated as responses or not.
    #' @return A new Conversation object.
    #' @export
    conversation = function(
      entity,
      timeout = 60,
      total_timeout = NULL,
      max_messages = 100,
      exclusive = TRUE,
      replies_are_responses = TRUE
    ) {
      return(custom$Conversation(
        private$self,
        entity,
        timeout = timeout,
        total_timeout = total_timeout,
        max_messages = max_messages,
        exclusive = exclusive,
        replies_are_responses = replies_are_responses
      ))
    }
  ),

  private = list(
    .self = NULL,

    .initialize = function(client) {
      private$.self <- client
    }
  )
)
