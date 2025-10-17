#' @include types.R
NULL

.MAX_PARTICIPANTS_CHUNK_SIZE <- 200
.MAX_ADMIN_LOG_CHUNK_SIZE <- 100
.MAX_PROFILE_PHOTO_CHUNK_SIZE <- 100

#' _ChatAction R6 Class
#'
#' A context manager-like class for representing a "chat action" in Telegram,
#' such as "user is typing" or uploading a file with progress.
#' This class handles sending the appropriate action to the chat and optionally
#' cancelling it when done. It is designed to be used synchronously in R.
#'
#' @field client The TelegramClient instance.
#' @field chat The chat entity where the action is shown.
#' @field action The action object (e.g., SendMessageTypingAction).
#' @field delay The delay in seconds between sending actions (not used in synchronous version).
#' @field auto_cancel Whether to cancel the action automatically on exit.
#' @field request The current request object for setting the action.
#' @field running Whether the action is currently running.
#' @export
.ChatAction <- R6::R6Class(
    "_ChatAction",
    public = list(
        #' @description Initialize the _ChatAction object.
        #' @param client The TelegramClient instance.
        #' @param chat The chat entity.
        #' @param action The action to show (string or SendMessageAction object).
        #' @param delay The delay in seconds (reserved for future async implementation).
        #' @param auto_cancel Whether to auto-cancel on exit.
        initialize = function(client, chat, action, delay = 4, auto_cancel = TRUE) {
            self$client <- client
            self$chat <- chat
            self$action <- action
            self$delay <- delay
            self$auto_cancel <- auto_cancel
            self$request <- NULL
            self$running <- FALSE
        },

        #' @description Enter the context (start the action).
        #' Sends the initial action request to the chat.
        enter = function() {
            self$chat <- self$client$get_input_entity(self$chat)
            self$request <- SetTypingRequest(self$chat, self$action)
            self$running <- TRUE
            # Send the action once (synchronous version; no looping as in async Python)
            self$client(self$request)
        },

        #' @description Exit the context (stop the action).
        #' Cancels the action if auto_cancel is TRUE.
        #' @param ... Ignored (for compatibility with context managers).
        exit = function(...) {
            self$running <- FALSE
            if (self$auto_cancel) {
                cancel_request <- SetTypingRequest(self$chat, SendMessageCancelAction())
                self$client(cancel_request)
            }
        },

        #' @description Update the progress of the action (for upload actions).
        #' @param current The current progress value.
        #' @param total The total progress value.
        progress = function(current, total) {
            if ("progress" %in% names(self$action)) {
                self$action$progress <- 100 * round(current / total)
            }
        }
    ),
    private = list(
        #' @field _str_mapping A named list mapping string action names to SendMessageAction objects.
        .str_mapping = list(
            'typing' = SendMessageTypingAction$new(),
            'contact' = SendMessageChooseContactAction$new(),
            'game' = SendMessageGamePlayAction$new(),
            'location' = SendMessageGeoLocationAction$new(),
            'sticker' = SendMessageChooseStickerAction$new(),
            'record-audio' = SendMessageRecordAudioAction$new(),
            'record-voice' = SendMessageRecordAudioAction$new(),  # alias
            'record-round' = SendMessageRecordRoundAction$new(),
            'record-video' = SendMessageRecordVideoAction$new(),
            'audio' = SendMessageUploadAudioAction$new(1),
            'voice' = SendMessageUploadAudioAction$new(1),  # alias
            'song' = SendMessageUploadAudioAction$new(1),  # alias
            'round' = SendMessageUploadRoundAction$new(1),
            'video' = SendMessageUploadVideoAction$new(1),
            'photo' = SendMessageUploadPhotoAction$new(1),
            'document' = SendMessageUploadDocumentAction$new(1),
            'file' = SendMessageUploadDocumentAction$new(1),  # alias
            'cancel' = SendMessageCancelAction$new()
        )
    )
)


#' _ParticipantsIter R6 Class
#'
#' An iterator over the participants belonging to the specified chat.
#' The order is unspecified.
#' Inherits from RequestIter.
#'
#' @field client The TelegramClient instance.
#' @field limit The limit for the number of participants.
#' @field total The total number of participants.
#' @field buffer The buffer holding the current chunk of participants.
#' @field left The number of items left to process.
#' @field request The current request object.
#' @field filter_entity A function to filter entities based on search.
#' @field seen A set of seen user IDs to avoid duplicates.
#' @field requests The request object for channels.
#' @export
.ParticipantsIter <- R6::R6Class(
    "_ParticipantsIter",
    inherit = RequestIter,
    public = list(
        #' @description Initialize the iterator.
        #' @param entity The entity from which to retrieve the participants list.
        #' @param filter The filter to be used, if you want e.g. only admins. Default is NULL.
        #' @param search Look for participants with this string in name/username. Default is ''.
        initialize = function(entity, filter = NULL, search = '') {
            if (!is.null(filter) && is.function(filter)) {
                if (inherits(filter, "ChannelParticipantsBanned") ||
                    inherits(filter, "ChannelParticipantsKicked") ||
                    inherits(filter, "ChannelParticipantsSearch") ||
                    inherits(filter, "ChannelParticipantsContacts")) {
                    # These require a `q` parameter (support types for convenience)
                    filter <- filter('')
                } else {
                    filter <- filter()
                }
            }

            entity <- self$client$get_input_entity(entity)
            ty <- helpers$`_entity_type`(entity)
            if (nchar(search) > 0 && (!is.null(filter) || ty != helpers$`_EntityType`$CHANNEL)) {
                # We need to 'search' ourselves unless we have a PeerChannel
                search <- tolower(search)
                self$filter_entity <- function(ent) {
                    display_name <- tolower(utils$get_display_name(ent))
                    username <- tolower(getattr(ent, 'username', '') %||% '')
                    return(grepl(search, display_name) || grepl(search, username))
                }
            } else {
                self$filter_entity <- function(ent) TRUE
            }

            # Only used for channels, but we should always set the attribute
            # Called `requests` even though it's just one for legacy purposes.
            self$requests <- NULL

            if (ty == helpers$`_EntityType`$CHANNEL) {
                if (self$limit <= 0) {
                    # May not have access to the channel, but getFull can get the .total.
                    full_channel <- self$client(GetFullChannelRequest(entity))
                    self$total <- full_channel$full_chat$participants_count
                    stop("StopIteration")
                }

                self$seen <- list()
                self$requests <- GetParticipantsRequest(
                    channel = entity,
                    filter = filter %||% ChannelParticipantsSearch(search),
                    offset = 0,
                    limit = .MAX_PARTICIPANTS_CHUNK_SIZE,
                    hash = 0
                )
            } else if (ty == helpers$`_EntityType`$CHAT) {
                full <- self$client(GetFullChatRequest(entity$chat_id))
                if (!inherits(full$full_chat$participants, "ChatParticipants")) {
                    # ChatParticipantsForbidden won't have ``.participants``
                    self$total <- 0
                    stop("StopIteration")
                }

                self$total <- length(full$full_chat$participants$participants)

                users <- setNames(full$users, sapply(full$users, function(u) u$id))
                for (participant in full$full_chat$participants$participants) {
                    if (inherits(participant, "ChannelParticipantLeft")) {
                        # See issue #3231 to learn why this is ignored.
                        next
                    } else if (inherits(participant, "ChannelParticipantBanned")) {
                        user_id <- participant$peer$user_id
                    } else {
                        user_id <- participant$user_id
                    }
                    user <- users[[as.character(user_id)]]
                    if (!self$filter_entity(user)) {
                        next
                    }

                    user$participant <- participant
                    self$buffer <- c(self$buffer, user)
                }

                return(TRUE)
            } else {
                self$total <- 1
                if (self$limit != 0) {
                    user <- self$client$get_entity(entity)
                    if (self$filter_entity(user)) {
                        user$participant <- NULL
                        self$buffer <- c(self$buffer, user)
                    }
                }

                return(TRUE)
            }
        },

        #' @description Load the next chunk of participants.
        .load_next_chunk = function() {
            if (is.null(self$requests)) {
                return(TRUE)
            }

            self$requests$limit <- min(self$left, .MAX_PARTICIPANTS_CHUNK_SIZE)

            if (self$requests$offset > self$limit) {
                return(TRUE)
            }

            if (is.null(self$total)) {
                f <- self$requests$filter
                if (!inherits(f, "ChannelParticipantsRecent") &&
                    (!inherits(f, "ChannelParticipantsSearch") || nchar(f$q) > 0)) {
                    # Only do an additional getParticipants here to get the total
                    # if there's a filter which would reduce the real total number.
                    # getParticipants is cheaper than getFull.
                    self$total <- self$client(GetParticipantsRequest(
                        channel = self$requests$channel,
                        filter = ChannelParticipantsRecent(),
                        offset = 0,
                        limit = 1,
                        hash = 0
                    ))$count
                }
            }

            participants <- self$client(self$requests)
            if (is.null(self$total)) {
                # Will only get here if there was one request with a filter that matched all users.
                self$total <- participants$count
            }
            if (length(participants$users) == 0) {
                self$requests <- NULL
                return(TRUE)
            }

            self$requests$offset <- self$requests$offset + length(participants$participants)
            users <- setNames(participants$users, sapply(participants$users, function(u) u$id))
            for (participant in participants$participants) {
                if (inherits(participant, "ChannelParticipantLeft")) {
                    # See issue #3231 to learn why this is ignored.
                    next
                } else if (inherits(participant, "ChannelParticipantBanned")) {
                    if (!inherits(participant$peer, "PeerUser")) {
                        # May have the entire channel banned. See #3105.
                        next
                    }
                    user_id <- participant$peer$user_id
                } else {
                    user_id <- participant$user_id
                }

                user <- users[[as.character(user_id)]]
                if (!self$filter_entity(user) || user$id %in% self$seen) {
                    next
                }
                self$seen <- c(self$seen, user_id)
                user$participant <- participant
                self$buffer <- c(self$buffer, user)
            }
        }
    )
)


#' _AdminLogIter R6 Class
#'
#' An iterator over the admin log for the specified channel.
#' The default order is from the most recent event to the oldest.
#' Inherits from RequestIter.
#'
#' @field client The TelegramClient instance.
#' @field limit The limit for the number of events.
#' @field total The total number of events.
#' @field buffer The buffer holding the current chunk of events.
#' @field left The number of items left to process.
#' @field request The current request object.
#' @export
.AdminLogIter <- R6::R6Class(
    "_AdminLogIter",
    inherit = RequestIter,
    public = list(
        #' @description Initialize the iterator.
        #' @param entity The channel entity from which to get its admin log.
        #' @param admins If present, filter by these admins. Default is NULL.
        #' @param search The string to be used as a search query. Default is NULL.
        #' @param min_id All events with a lower (older) ID or equal to this will be excluded. Default is 0.
        #' @param max_id All events with a higher (newer) ID or equal to this will be excluded. Default is 0.
        #' @param join If TRUE, events for when a user joined will be returned. Default is NULL.
        #' @param leave If TRUE, events for when a user leaves will be returned. Default is NULL.
        #' @param invite If TRUE, events for when a user joins through an invite link will be returned. Default is NULL.
        #' @param restrict If TRUE, events with partial restrictions will be returned. Default is NULL.
        #' @param unrestrict If TRUE, events removing restrictions will be returned. Default is NULL.
        #' @param ban If TRUE, events applying or removing all restrictions will be returned. Default is NULL.
        #' @param unban If TRUE, events removing all restrictions will be returned. Default is NULL.
        #' @param promote If TRUE, events with admin promotions will be returned. Default is NULL.
        #' @param demote If TRUE, events with admin demotions will be returned. Default is NULL.
        #' @param info If TRUE, events changing the group info will be returned. Default is NULL.
        #' @param settings If TRUE, events changing the group settings will be returned. Default is NULL.
        #' @param pinned If TRUE, events of new pinned messages will be returned. Default is NULL.
        #' @param edit If TRUE, events of message edits will be returned. Default is NULL.
        #' @param delete If TRUE, events of message deletions will be returned. Default is NULL.
        #' @param group_call If TRUE, events related to group calls will be returned. Default is NULL.
        .init = function(entity, admins = NULL, search = NULL, min_id = 0, max_id = 0,
                         join = NULL, leave = NULL, invite = NULL, restrict = NULL, unrestrict = NULL,
                         ban = NULL, unban = NULL, promote = NULL, demote = NULL, info = NULL,
                         settings = NULL, pinned = NULL, edit = NULL, delete = NULL, group_call = NULL) {
            if (any(c(join, leave, invite, restrict, unrestrict, ban, unban,
                      promote, demote, info, settings, pinned, edit, delete,
                      group_call))) {
                events_filter <- ChannelAdminLogEventsFilter(
                    join = join, leave = leave, invite = invite, ban = restrict,
                    unban = unrestrict, kick = ban, unkick = unban, promote = promote,
                    demote = demote, info = info, settings = settings, pinned = pinned,
                    edit = edit, delete = delete, group_call = group_call
                )
            } else {
                events_filter <- NULL
            }

            self$entity <- self$client$get_input_entity(entity)

            admin_list <- list()
            if (!is.null(admins)) {
                if (!utils$is_list_like(admins)) {
                    admins <- list(admins)
                }
                for (admin in admins) {
                    admin_list <- c(admin_list, self$client$get_input_entity(admin))
                }
            }

            self$request <- GetAdminLogRequest(
                self$entity, q = search %||% '', min_id = min_id, max_id = max_id,
                limit = 0, events_filter = events_filter, admins = if (length(admin_list) > 0) admin_list else NULL
            )
        },

        #' @description Load the next chunk of admin log events.
        .load_next_chunk = function() {
            self$request$limit <- min(self$left, .MAX_ADMIN_LOG_CHUNK_SIZE)
            r <- self$client(self$request)
            entities <- list()
            for (x in c(r$users, r$chats)) {
                entities[[utils$get_peer_id(x)]] <- x
            }

            self$request$max_id <- if (length(r$events) > 0) min(sapply(r$events, function(e) e$id)) else 0
            for (ev in r$events) {
                if (inherits(ev$action, "ChannelAdminLogEventActionEditMessage")) {
                    ev$action$prev_message$`_finish_init`(self$client, entities, self$entity)
                    ev$action$new_message$`_finish_init`(self$client, entities, self$entity)
                } else if (inherits(ev$action, "ChannelAdminLogEventActionDeleteMessage")) {
                    ev$action$message$`_finish_init`(self$client, entities, self$entity)
                }
                self$buffer <- c(self$buffer, custom$AdminLogEvent(ev, entities))
            }

            if (length(r$events) < self$request$limit) {
                return(TRUE)
            }
        }
    )
)


#' _ProfilePhotoIter R6 Class
#'
#' An iterator over a user's profile photos or a chat's photos.
#' The order is from the most recent photo to the oldest.
#' Inherits from RequestIter.
#'
#' @field client The TelegramClient instance.
#' @field limit The limit for the number of photos.
#' @field total The total number of photos.
#' @field buffer The buffer holding the current chunk of photos.
#' @field left The number of items left to process.
#' @field request The current request object.
#' @export
.ProfilePhotoIter <- R6::R6Class(
    "_ProfilePhotoIter",
    inherit = RequestIter,
    public = list(
        #' @description Initialize the iterator.
        #' @param entity The entity from which to get the profile or chat photos.
        #' @param offset How many photos should be skipped before returning the first one.
        #' @param max_id The maximum ID allowed when fetching photos.
        .init = function(entity, offset, max_id) {
            entity <- self$client$get_input_entity(entity)
            ty <- helpers$`_entity_type`(entity)
            if (ty == helpers$`_EntityType`$USER) {
                self$request <- functions$photos$GetUserPhotosRequest(
                    entity,
                    offset = offset,
                    max_id = max_id,
                    limit = 1
                )
            } else {
                self$request <- SearchRequest(
                    peer = entity,
                    q = '',
                    filter = InputMessagesFilterChatPhotos(),
                    min_date = NULL,
                    max_date = NULL,
                    offset_id = 0,
                    add_offset = offset,
                    limit = 1,
                    max_id = max_id,
                    min_id = 0,
                    hash = 0
                )
            }
            if (self$limit == 0) {
                self$request$limit <- 1
            }
            result <- self$client(self$request)
            if (inherits(result, "Photos")) {
                self$total <- length(result$photos)
            } else if (inherits(result, "Messages")) {
                self$total <- length(result$messages)
            } else {
                # Luckily both PhotosSlice and Messages have a count for total
                self$total <- result$count
            }
        },

        #' @description Load the next chunk of photos.
        .load_next_chunk = function() {
            self$request$limit <- min(self$left, .MAX_PROFILE_PHOTO_CHUNK_SIZE)
            result <- self$client(self$request)
            if (inherits(result, "Photos")) {
                self$buffer <- result$photos
                self$left <- length(self$buffer)
                self$total <- length(self$buffer)
            } else if (inherits(result, "Messages")) {
                self$buffer <- lapply(result$messages, function(x) {
                    if (inherits(x$action, "MessageActionChatEditPhoto")) x$action$photo else NULL
                })
                self$buffer <- self$buffer[!sapply(self$buffer, is.null)]
                self$left <- length(self$buffer)
                self$total <- length(self$buffer)
            } else if (inherits(result, "PhotosSlice")) {
                self$buffer <- result$photos
                self$total <- result$count
                if (length(self$buffer) < self$request$limit) {
                    self$left <- length(self$buffer)
                } else {
                    self$request$offset <- self$request$offset + length(result$photos)
                }
            } else {
                # Some broadcast channels have a photo that this request doesn't
                # retrieve for whatever random reason the Telegram server feels.
                #
                # This means the `total` count may be wrong but there's not much
                # that can be done around it (perhaps there are too many photos
                # and this is only a partial result so it's not possible to just
                # use the len of the result).
                self$total <- result$count
            }
            # Unconditionally fetch the full channel to obtain this photo and
            # yield it with the rest (unless it's a duplicate).
            seen_id <- NULL
            if (inherits(result, "ChannelMessages")) {
                channel <- self$client(GetFullChannelRequest(self$request$peer))
                photo <- channel$full_chat$chat_photo
                if (inherits(photo, "Photo")) {
                    self$buffer <- c(self$buffer, photo)
                    seen_id <- photo$id
                }
                additional <- lapply(result$messages, function(x) {
                    if (inherits(x$action, "MessageActionChatEditPhoto") && x$action$photo$id != seen_id) x$action$photo else NULL
                })
                additional <- additional[!sapply(additional, is.null)]
                self$buffer <- c(self$buffer, additional)
                if (length(result$messages) < self$request$limit) {
                    self$left <- length(self$buffer)
                } else if (length(result$messages) > 0) {
                    self$request$add_offset <- 0
                    self$request$offset_id <- result$messages[[length(result$messages)]]$id
                }
            }
        }
    )
)


#' ChatMethods R6 Class
#'
#' An R6 class providing methods for interacting with Telegram chats,
#' including iterating participants, admin logs, profile photos, and more.
#' This class is designed to be used within a TelegramClient context.
#'
#' @field client The TelegramClient instance.
#' @export
ChatMethods <- R6::R6Class(
    "ChatMethods",
    public = list(

        #' @description Iterator over the participants belonging to the specified chat.
        #'
        #' The order is unspecified.
        #'
        #' @param entity The entity from which to retrieve the participants list.
        #' @param limit Limits amount of participants fetched. Default is NULL.
        #' @param search Look for participants with this string in name/username. Default is ''.
        #' @param filter The filter to be used, if you want e.g. only admins. Default is NULL.
        #' @param aggressive Does nothing. Kept for backwards-compatibility. Default is FALSE.
        #' @return A _ParticipantsIter object.
        #' @examples
        #' # Show all user IDs in a chat
        #' iter <- client$iter_participants(chat)
        #' for (user in iter) {
        #'   print(user$id)
        #' }
        #'
        #' # Search by name
        #' iter <- client$iter_participants(chat, search = 'name')
        #' for (user in iter) {
        #'   print(user$username)
        #' }
        #'
        #' # Filter by admins
        #' filter <- ChannelParticipantsAdmins()
        #' iter <- client$iter_participants(chat, filter = filter)
        #' for (user in iter) {
        #'   print(user$first_name)
        #' }
        iter_participants = function(entity, limit = NULL, search = '', filter = NULL, aggressive = FALSE) {
            return(.ParticipantsIter$new(
                client = private$client,
                limit = limit,
                entity = entity,
                filter = filter,
                search = search
            ))
        },

        #' @description Same as iter_participants(), but returns a TotalList instead.
        #'
        #' @param ... Arguments passed to iter_participants.
        #' @return A TotalList of participants.
        #' @examples
        #' users <- client$get_participants(chat)
        #' print(users[[1]]$first_name)
        #'
        #' for (user in users) {
        #'   if (!is.null(user$username)) {
        #'     print(user$username)
        #'   }
        #' }
        get_participants = function(...) {
            iter <- self$iter_participants(...)
            return(iter$collect())
        },

        #' @description Iterator over the admin log for the specified channel.
        #'
        #' The default order is from the most recent event to the oldest.
        #'
        #' @param entity The channel entity from which to get its admin log.
        #' @param limit Number of events to be retrieved. Default is NULL.
        #' @param max_id All events with a higher (newer) ID or equal to this will be excluded. Default is 0.
        #' @param min_id All events with a lower (older) ID or equal to this will be excluded. Default is 0.
        #' @param search The string to be used as a search query. Default is NULL.
        #' @param admins If present, filter by these admins. Default is NULL.
        #' @param join If TRUE, events for when a user joined will be returned. Default is NULL.
        #' @param leave If TRUE, events for when a user leaves will be returned. Default is NULL.
        #' @param invite If TRUE, events for when a user joins through an invite link will be returned. Default is NULL.
        #' @param restrict If TRUE, events with partial restrictions will be returned. Default is NULL.
        #' @param unrestrict If TRUE, events removing restrictions will be returned. Default is NULL.
        #' @param ban If TRUE, events applying or removing all restrictions will be returned. Default is NULL.
        #' @param unban If TRUE, events removing all restrictions will be returned. Default is NULL.
        #' @param promote If TRUE, events with admin promotions will be returned. Default is NULL.
        #' @param demote If TRUE, events with admin demotions will be returned. Default is NULL.
        #' @param info If TRUE, events changing the group info will be returned. Default is NULL.
        #' @param settings If TRUE, events changing the group settings will be returned. Default is NULL.
        #' @param pinned If TRUE, events of new pinned messages will be returned. Default is NULL.
        #' @param edit If TRUE, events of message edits will be returned. Default is NULL.
        #' @param delete If TRUE, events of message deletions will be returned. Default is NULL.
        #' @param group_call If TRUE, events related to group calls will be returned. Default is NULL.
        #' @return An _AdminLogIter object.
        #' @examples
        #' iter <- client$iter_admin_log(channel)
        #' for (event in iter) {
        #'   if (event$changed_title) {
        #'     print(paste('The title changed from', event$old, 'to', event$new))
        #'   }
        #' }
        iter_admin_log = function(entity, limit = NULL, max_id = 0, min_id = 0, search = NULL, admins = NULL,
                                                            join = NULL, leave = NULL, invite = NULL, restrict = NULL, unrestrict = NULL,
                                                            ban = NULL, unban = NULL, promote = NULL, demote = NULL, info = NULL,
                                                            settings = NULL, pinned = NULL, edit = NULL, delete = NULL, group_call = NULL) {
            return(.AdminLogIter$new(
                client = private$client,
                limit = limit,
                entity = entity,
                admins = admins,
                search = search,
                min_id = min_id,
                max_id = max_id,
                join = join,
                leave = leave,
                invite = invite,
                restrict = restrict,
                unrestrict = unrestrict,
                ban = ban,
                unban = unban,
                promote = promote,
                demote = demote,
                info = info,
                settings = settings,
                pinned = pinned,
                edit = edit,
                delete = delete,
                group_call = group_call
            ))
        },

        #' @description Same as iter_admin_log(), but returns a list instead.
        #'
        #' @param ... Arguments passed to iter_admin_log.
        #' @return A list of admin log events.
        #' @examples
        #' # Get a list of deleted message events which said "heck"
        #' events <- client$get_admin_log(channel, search = 'heck', delete = TRUE)
        #' print(events[[1]]$old)
        get_admin_log = function(...) {
            iter <- self$iter_admin_log(...)
            return(iter$collect())
        },

        #' @description Iterator over a user's profile photos or a chat's photos.
        #'
        #' The order is from the most recent photo to the oldest.
        #'
        #' @param entity The entity from which to get the profile or chat photos.
        #' @param limit Number of photos to be retrieved. Default is NULL.
        #' @param offset How many photos should be skipped before returning the first one. Default is 0.
        #' @param max_id The maximum ID allowed when fetching photos. Default is 0.
        #' @return A _ProfilePhotoIter object.
        #' @examples
        #' # Download all the profile photos of some user
        #' iter <- client$iter_profile_photos(user)
        #' for (photo in iter) {
        #'   client$download_media(photo)
        #' }
        iter_profile_photos = function(entity, limit = NULL, offset = 0, max_id = 0) {
            return(.ProfilePhotoIter$new(
                client = private$client,
                limit = limit,
                entity = entity,
                offset = offset,
                max_id = max_id
            ))
        },

        #' @description Same as iter_profile_photos(), but returns a TotalList instead.
        #'
        #' @param ... Arguments passed to iter_profile_photos.
        #' @return A TotalList of photos.
        #' @examples
        #' # Get the photos of a channel
        #' photos <- client$get_profile_photos(channel)
        #' client$download_media(photos[[length(photos)]])
        get_profile_photos = function(...) {
            iter <- self$iter_profile_photos(...)
            return(iter$collect())
        },

        #' @description Returns a context-manager object to represent a "chat action".
        #'
        #' Chat actions indicate things like "user is typing", etc.
        #'
        #' @param entity The entity where the action should be showed in.
        #' @param action The action to show (string or SendMessageAction).
        #' @param delay The delay in seconds between sending actions. Default is 4.
        #' @param auto_cancel Whether to cancel the action automatically. Default is TRUE.
        #' @return A _ChatAction object or a coroutine.
        #' @examples
        #' # Type for 2 seconds, then send a message
        #' action <- client$action(chat, 'typing')
        #' Sys.sleep(2)
        #' client$send_message(chat, 'Hello world! I type slow ^^')
        #'
        #' # Cancel any previous action
        #' client$action(chat, 'cancel')
        #'
        #' # Upload a document, showing its progress
        #' action <- client$action(chat, 'document')
        #' client$send_file(chat, zip_file, progress_callback = action$progress)
        action = function(entity, action, delay = 4, auto_cancel = TRUE) {
            if (is.character(action)) {
                action <- .ChatAction$.str_mapping[[tolower(action)]]
                if (is.null(action)) {
                    stop(paste('No such action "', action, '"'))
                }
            } else if (!inherits(action, "TLObject") || action$SUBCLASS_OF_ID != 0x20b2cc21) {
                if (is.function(action)) {
                    stop("You must pass an instance, not the class")
                } else {
                    stop(paste("Cannot use", action, "as action"))
                }
            }

            if (inherits(action, "SendMessageCancelAction")) {
                return(private$client(SetTypingRequest(entity, SendMessageCancelAction())))
            }

            return(.ChatAction$new(private$client, entity, action, delay = delay, auto_cancel = auto_cancel))
        },

        #' @description Edits admin permissions for someone in a chat.
        #'
        #' @param entity The channel, megagroup or chat where the promotion should happen.
        #' @param user The user to be promoted.
        #' @param change_info Whether the user can change info. Default is NULL.
        #' @param post_messages Whether the user can post in the channel. Default is NULL.
        #' @param edit_messages Whether the user can edit messages. Default is NULL.
        #' @param delete_messages Whether the user can delete messages. Default is NULL.
        #' @param ban_users Whether the user can ban users. Default is NULL.
        #' @param invite_users Whether the user can invite users. Default is NULL.
        #' @param pin_messages Whether the user can pin messages. Default is NULL.
        #' @param add_admins Whether the user can add admins. Default is NULL.
        #' @param manage_call Whether the user can manage group calls. Default is NULL.
        #' @param anonymous Whether the user remains anonymous. Default is NULL.
        #' @param is_admin Whether the user is an admin. Default is NULL.
        #' @param title The custom title for the admin. Default is NULL.
        #' @return The resulting Updates object.
        #' @examples
        #' # Allowing user to pin messages in chat
        #' client$edit_admin(chat, user, pin_messages = TRUE)
        #'
        #' # Granting all permissions except for add_admins
        #' client$edit_admin(chat, user, is_admin = TRUE, add_admins = FALSE)
        edit_admin = function(entity, user, change_info = NULL, post_messages = NULL, edit_messages = NULL,
                                                    delete_messages = NULL, ban_users = NULL, invite_users = NULL, pin_messages = NULL,
                                                    add_admins = NULL, manage_call = NULL, anonymous = NULL, is_admin = NULL, title = NULL) {
            entity <- private$client$get_input_entity(entity)
            user <- private$client$get_input_entity(user)

            perm_names <- c('change_info', 'post_messages', 'edit_messages', 'delete_messages',
                                            'ban_users', 'invite_users', 'pin_messages', 'add_admins',
                                            'anonymous', 'manage_call')

            ty <- helpers$`_entity_type`(entity)
            if (ty == helpers$`_EntityType`$CHANNEL) {
                if (!is.null(post_messages) || !is.null(edit_messages)) {
                    if (!(entity$channel_id %in% names(private$client$`_megagroup_cache`))) {
                        full_entity <- private$client$get_entity(entity)
                        private$client$`_megagroup_cache`[[as.character(entity$channel_id)]] <- full_entity$megagroup
                    }
                    if (private$client$`_megagroup_cache`[[as.character(entity$channel_id)]]) {
                        post_messages <- NULL
                        edit_messages <- NULL
                    }
                }

                perms <- list(change_info = change_info, post_messages = post_messages, edit_messages = edit_messages,
                                            delete_messages = delete_messages, ban_users = ban_users, invite_users = invite_users,
                                            pin_messages = pin_messages, add_admins = add_admins, anonymous = anonymous, manage_call = manage_call)
                rights <- do.call(ChatAdminRights, lapply(perm_names, function(name) {
                    if (!is.null(perms[[name]])) perms[[name]] else is_admin
                }))
                return(private$client(EditAdminRequest(entity, user, rights, rank = title %||% '')))
            } else if (ty == helpers$`_EntityType`$CHAT) {
                if (is.null(is_admin)) {
                    is_admin <- any(sapply(perm_names, function(x) get(x)))
                }
                return(private$client(EditChatAdminRequest(entity$chat_id, user, is_admin = is_admin)))
            } else {
                stop('You can only edit permissions in groups and channels')
            }
        },

        #' @description Edits user restrictions in a chat.
        #'
        #' @param entity The channel or megagroup where the restriction should happen.
        #' @param user The user to restrict. Default is NULL.
        #' @param until_date When the user will be unbanned. Default is NULL.
        #' @param view_messages Whether the user can view messages. Default is TRUE.
        #' @param send_messages Whether the user can send messages. Default is TRUE.
        #' @param send_media Whether the user can send media. Default is TRUE.
        #' @param send_stickers Whether the user can send stickers. Default is TRUE.
        #' @param send_gifs Whether the user can send gifs. Default is TRUE.
        #' @param send_games Whether the user can send games. Default is TRUE.
        #' @param send_inline Whether the user can use inline bots. Default is TRUE.
        #' @param embed_link_previews Whether the user can embed link previews. Default is TRUE.
        #' @param send_polls Whether the user can send polls. Default is TRUE.
        #' @param change_info Whether the user can change info. Default is TRUE.
        #' @param invite_users Whether the user can invite users. Default is TRUE.
        #' @param pin_messages Whether the user can pin messages. Default is TRUE.
        #' @return The resulting Updates object.
        #' @examples
        #' # Banning user from chat forever
        #' client$edit_permissions(chat, user, view_messages = FALSE)
        #'
        #' # Kicking someone (ban + un-ban)
        #' client$edit_permissions(chat, user, view_messages = FALSE)
        #' client$edit_permissions(chat, user)
        edit_permissions = function(entity, user = NULL, until_date = NULL, view_messages = TRUE,
                                                                send_messages = TRUE, send_media = TRUE, send_stickers = TRUE,
                                                                send_gifs = TRUE, send_games = TRUE, send_inline = TRUE,
                                                                embed_link_previews = TRUE, send_polls = TRUE, change_info = TRUE,
                                                                invite_users = TRUE, pin_messages = TRUE) {
            entity <- private$client$get_input_entity(entity)
            ty <- helpers$`_entity_type`(entity)
            if (ty != helpers$`_EntityType`$CHANNEL) {
                stop('You must pass either a channel or a supergroup')
            }

            rights <- ChatBannedRights(
                until_date = until_date,
                view_messages = !view_messages,
                send_messages = !send_messages,
                send_media = !send_media,
                send_stickers = !send_stickers,
                send_gifs = !send_gifs,
                send_games = !send_games,
                send_inline = !send_inline,
                embed_links = !embed_link_previews,
                send_polls = !send_polls,
                change_info = !change_info,
                invite_users = !invite_users,
                pin_messages = !pin_messages
            )

            if (is.null(user)) {
                return(private$client(EditChatDefaultBannedRightsRequest(peer = entity, banned_rights = rights)))
            }

            user <- private$client$get_input_entity(user)
            return(private$client(EditBannedRequest(channel = entity, participant = user, banned_rights = rights)))
        },

        #' @description Kicks a user from a chat.
        #'
        #' @param entity The channel or chat where the user should be kicked from.
        #' @param user The user to kick.
        #' @return The service message produced about a user being kicked, if any.
        #' @examples
        #' # Kick some user from some chat, and deleting the service message
        #' msg <- client$kick_participant(chat, user)
        #' msg$delete()
        #'
        #' # Leaving chat
        #' client$kick_participant(chat, 'me')
        kick_participant = function(entity, user) {
            entity <- private$client$get_input_entity(entity)
            user <- private$client$get_input_entity(user)

            ty <- helpers$`_entity_type`(entity)
            if (ty == helpers$`_EntityType`$CHAT) {
                resp <- private$client(DeleteChatUserRequest(entity$chat_id, user))
            } else if (ty == helpers$`_EntityType`$CHANNEL) {
                if (inherits(user, "InputPeerSelf")) {
                    resp <- private$client(LeaveChannelRequest(entity))
                } else {
                    private$client(EditBannedRequest(
                        channel = entity,
                        participant = user,
                        banned_rights = ChatBannedRights(until_date = NULL, view_messages = TRUE)
                    ))
                    Sys.sleep(0.5)
                    resp <- private$client(EditBannedRequest(
                        channel = entity,
                        participant = user,
                        banned_rights = ChatBannedRights(until_date = NULL)
                    ))
                }
            } else {
                stop('You must pass either a channel or a chat')
            }

            return(private$client$`_get_response_message`(NULL, resp, entity))
        },

        #' @description Fetches the permissions of a user in a specific chat or channel.
        #'
        #' @param entity The channel or chat the user is participant of.
        #' @param user Target user. Default is NULL.
        #' @return A ParticipantPermissions instance or NULL.
        #' @examples
        #' permissions <- client$get_permissions(chat, user)
        #' if (permissions$is_admin) {
        #'   # do something
        #' }
        #'
        #' # Get Banned Permissions of Chat
        #' client$get_permissions(chat)
        get_permissions = function(entity, user = NULL) {
            entity <- private$client$get_entity(entity)

            if (is.null(user)) {
                if (inherits(entity, "Channel")) {
                    FullChat <- private$client(GetFullChannelRequest(entity))
                } else if (inherits(entity, "Chat")) {
                    FullChat <- private$client(GetFullChatRequest(entity$id))
                } else {
                    return(NULL)
                }
                return(FullChat$chats[[1]]$default_banned_rights)
            }

            entity <- private$client$get_input_entity(entity)
            user <- private$client$get_input_entity(user)
            if (helpers$`_entity_type`(entity) == helpers$`_EntityType`$CHANNEL) {
                participant <- private$client(GetParticipantRequest(entity, user))
                return(custom$ParticipantPermissions(participant$participant, FALSE))
            } else if (helpers$`_entity_type`(entity) == helpers$`_EntityType`$CHAT) {
                chat <- private$client(GetFullChatRequest(entity$chat_id))
                if (inherits(user, "InputPeerSelf")) {
                    user <- private$client$get_me(input_peer = TRUE)
                }
                for (participant in chat$full_chat$participants$participants) {
                    if (participant$user_id == user$user_id) {
                        return(custom$ParticipantPermissions(participant, TRUE))
                    }
                }
                stop("UserNotParticipantError")
            }

            stop('You must pass either a channel or a chat')
        },

        #' @description Retrieves statistics from the given megagroup or broadcast channel.
        #'
        #' @param entity The channel from which to get statistics.
        #' @param message The message ID from which to get statistics. Default is NULL.
        #' @return BroadcastStats, MegagroupStats, or MessageStats.
        #' @examples
        #' channel <- -100123
        #' stats <- client$get_stats(channel)
        #' print(paste('Stats from', stats$period$min_date, 'to', stats$period$max_date, ':'))
        #' print(stats$stringify())
        get_stats = function(entity, message = NULL) {
            entity <- private$client$get_input_entity(entity)
            if (helpers$`_entity_type`(entity) != helpers$`_EntityType`$CHANNEL) {
                stop('You must pass a channel entity')
            }

            message <- utils$get_message_id(message)
            if (!is.null(message)) {
                tryCatch({
                    req <- functions$stats$GetMessageStatsRequest(entity, message)
                    return(private$client(req))
                }, StatsMigrateError = function(e) {
                    dc <- e$dc
                })
            } else {
                tryCatch({
                    req <- functions$stats$GetBroadcastStatsRequest(entity)
                    return(private$client(req))
                }, StatsMigrateError = function(e) {
                    dc <- e$dc
                }, BroadcastRequiredError = function(e) {
                    req <- functions$stats$GetMegagroupStatsRequest(entity)
                    tryCatch({
                        return(private$client(req))
                    }, StatsMigrateError = function(e) {
                        dc <- e$dc
                    })
                })
            }

            sender <- private$client$`_borrow_exported_sender`(dc)
            tryCatch({
                return(sender$send(req))
            }, finally = {
                private$client$`_return_exported_sender`(sender)
            })
        }
    ),
    private = list(
        client = NULL
    )
)
