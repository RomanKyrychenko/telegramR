# TelegramClient

Telegram API type TelegramClient

## Details

TelegramClient Class

An R6 class that combines functionality from multiple method classes to
interact with Telegram API

## Super class

[`telegramR::TelegramBaseClient`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.md)
-\> `TelegramClient`

## Public fields

- `password`:

  Field.

- `new_secure_settings`:

  Field.

- `client`:

  Field.

- `phone`:

  Field.

- `tos`:

  Field.

- `authorized`:

  Field.

- `date`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `offset_date`:

  Field.

- `offset_id`:

  Field.

- `ignore_pinned`:

  Field.

- `ignore_migrated`:

  Field.

- `folder`:

  Field.

- `offset_date`:

  Field.

- `offset_id`:

  Field.

- `ignore_pinned`:

  Field.

- `ignore_migrated`:

  Field.

- `folder`:

  Field.

- `timeout`:

  Field.

- `total_timeout`:

  Field.

- `max_messages`:

  Field.

- `exclusive`:

  Field.

- `limit`:

  Field.

- `offset_date`:

  Field.

- `search`:

  Field.

- `filter`:

  Field.

- `from_user`:

  Field.

- `wait_time`:

  Field.

- `ids`:

  Field.

- `reverse`:

  Field.

- `reply_to`:

  Field. Get messages

  Same as iter_messages(), but returns a collected list/vector. If limit
  is missing, defaults to 1 unless both min_id and max_id are set.

- `message`:

  Field.

- `reply_to`:

  Field.

- `attributes`:

  Field.

- `parse_mode`:

  Field.

- `formatting_entities`:

  Field.

- `link_preview`:

  Field.

- `file`:

  Field.

- `thumb`:

  Field.

- `force_document`:

  Field.

- `clear_draft`:

  Field.

- `buttons`:

  Field.

- `silent`:

  Field.

- `background`:

  Field.

- `supports_streaming`:

  Field.

- `schedule`:

  Field.

- `comment_to`:

  Field.

- `nosound_video`:

  Field.

- `send_as`:

  Field. Forward messages

  Forwards one or more messages to the specified entity.

- `from_peer`:

  Field.

- `background`:

  Field.

- `with_my_score`:

  Field.

- `silent`:

  Field.

- `as_album`:

  Field.

- `schedule`:

  Field.

- `drop_author`:

  Field. Edit a message

  Edits a message to change its text or media.

- `message`:

  Field.

- `text`:

  Field.

- `parse_mode`:

  Field.

- `attributes`:

  Field.

- `formatting_entities`:

  Field.

- `link_preview`:

  Field.

- `file`:

  Field.

- `thumb`:

  Field.

- `force_document`:

  Field.

- `buttons`:

  Field.

- `supports_streaming`:

  Field. Delete messages

  Deletes the given messages, optionally for everyone (revoke).

- `message`:

  Field.

- `max_id`:

  Field.

- `clear_mentions`:

  Field. Pin a message

  Pins a message in a chat.

- `notify`:

  Field. Unpin a message

  Unpins a message in a chat. If message is NULL, unpins all.

- `message`:

  Field. Resolve comment target for sending comments (linked discussion)

- `method`:

  Field.

- `method`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `parse_mode`:

  The default parse mode for parsing messages. Set the default parse
  mode.

- `type`:

  Field. Extract the response message based on the request and result.

## Active bindings

- `password`:

  Field.

- `new_secure_settings`:

  Field.

- `date`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `offset_date`:

  Field.

- `offset_id`:

  Field.

- `ignore_pinned`:

  Field.

- `ignore_migrated`:

  Field.

- `folder`:

  Field.

- `offset_date`:

  Field.

- `offset_id`:

  Field.

- `ignore_pinned`:

  Field.

- `ignore_migrated`:

  Field.

- `folder`:

  Field.

- `timeout`:

  Field.

- `total_timeout`:

  Field.

- `max_messages`:

  Field.

- `exclusive`:

  Field.

- `limit`:

  Field.

- `offset_date`:

  Field.

- `search`:

  Field.

- `filter`:

  Field.

- `from_user`:

  Field.

- `wait_time`:

  Field.

- `ids`:

  Field.

- `reverse`:

  Field.

- `reply_to`:

  Field. Get messages

  Same as iter_messages(), but returns a collected list/vector. If limit
  is missing, defaults to 1 unless both min_id and max_id are set.

- `message`:

  Field.

- `reply_to`:

  Field.

- `attributes`:

  Field.

- `formatting_entities`:

  Field.

- `link_preview`:

  Field.

- `file`:

  Field.

- `thumb`:

  Field.

- `force_document`:

  Field.

- `clear_draft`:

  Field.

- `buttons`:

  Field.

- `silent`:

  Field.

- `background`:

  Field.

- `supports_streaming`:

  Field.

- `schedule`:

  Field.

- `comment_to`:

  Field.

- `nosound_video`:

  Field.

- `send_as`:

  Field. Forward messages

  Forwards one or more messages to the specified entity.

- `from_peer`:

  Field.

- `background`:

  Field.

- `with_my_score`:

  Field.

- `silent`:

  Field.

- `as_album`:

  Field.

- `schedule`:

  Field.

- `drop_author`:

  Field. Edit a message

  Edits a message to change its text or media.

- `message`:

  Field.

- `text`:

  Field.

- `attributes`:

  Field.

- `formatting_entities`:

  Field.

- `link_preview`:

  Field.

- `file`:

  Field.

- `thumb`:

  Field.

- `force_document`:

  Field.

- `buttons`:

  Field.

- `supports_streaming`:

  Field. Delete messages

  Deletes the given messages, optionally for everyone (revoke).

- `message`:

  Field.

- `max_id`:

  Field.

- `clear_mentions`:

  Field. Pin a message

  Pins a message in a chat.

- `notify`:

  Field. Unpin a message

  Unpins a message in a chat. If message is NULL, unpins all.

- `message`:

  Field. Resolve comment target for sending comments (linked discussion)

- `method`:

  Field.

- `method`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field. Extract the response message based on the request and result.

## Methods

### Public methods

- [`TelegramClient$takeout()`](#method-TelegramClient-takeout)

- [`TelegramClient$end_takeout()`](#method-TelegramClient-end_takeout)

- [`TelegramClient$start()`](#method-TelegramClient-start)

- [`TelegramClient$sign_in()`](#method-TelegramClient-sign_in)

- [`TelegramClient$sign_up()`](#method-TelegramClient-sign_up)

- [`TelegramClient$send_code_request()`](#method-TelegramClient-send_code_request)

- [`TelegramClient$qr_login()`](#method-TelegramClient-qr_login)

- [`TelegramClient$log_out()`](#method-TelegramClient-log_out)

- [`TelegramClient$edit_2fa()`](#method-TelegramClient-edit_2fa)

- [`TelegramClient$parse_phone_and_hash()`](#method-TelegramClient-parse_phone_and_hash)

- [`TelegramClient$on_login()`](#method-TelegramClient-on_login)

- [`TelegramClient$start_impl()`](#method-TelegramClient-start_impl)

- [`TelegramClient$parse_phone()`](#method-TelegramClient-parse_phone)

- [`TelegramClient$compute_check()`](#method-TelegramClient-compute_check)

- [`TelegramClient$compute_digest()`](#method-TelegramClient-compute_digest)

- [`TelegramClient$get_display_name()`](#method-TelegramClient-get_display_name)

- [`TelegramClient$download_profile_photo()`](#method-TelegramClient-download_profile_photo)

- [`TelegramClient$download_media()`](#method-TelegramClient-download_media)

- [`TelegramClient$download_file()`](#method-TelegramClient-download_file)

- [`TelegramClient$.download_file()`](#method-TelegramClient-.download_file)

- [`TelegramClient$iter_download()`](#method-TelegramClient-iter_download)

- [`TelegramClient$.iter_download()`](#method-TelegramClient-.iter_download)

- [`TelegramClient$get_thumb()`](#method-TelegramClient-get_thumb)

- [`TelegramClient$download_cached_photo_size()`](#method-TelegramClient-download_cached_photo_size)

- [`TelegramClient$download_photo()`](#method-TelegramClient-download_photo)

- [`TelegramClient$get_kind_and_names()`](#method-TelegramClient-get_kind_and_names)

- [`TelegramClient$download_document()`](#method-TelegramClient-download_document)

- [`TelegramClient$download_contact()`](#method-TelegramClient-download_contact)

- [`TelegramClient$download_web_document()`](#method-TelegramClient-download_web_document)

- [`TelegramClient$get_proper_filename()`](#method-TelegramClient-get_proper_filename)

- [`TelegramClient$iter_dialogs()`](#method-TelegramClient-iter_dialogs)

- [`TelegramClient$get_dialogs()`](#method-TelegramClient-get_dialogs)

- [`TelegramClient$iter_drafts()`](#method-TelegramClient-iter_drafts)

- [`TelegramClient$get_drafts()`](#method-TelegramClient-get_drafts)

- [`TelegramClient$edit_folder()`](#method-TelegramClient-edit_folder)

- [`TelegramClient$delete_dialog()`](#method-TelegramClient-delete_dialog)

- [`TelegramClient$conversation()`](#method-TelegramClient-conversation)

- [`TelegramClient$iter_participants()`](#method-TelegramClient-iter_participants)

- [`TelegramClient$get_participants()`](#method-TelegramClient-get_participants)

- [`TelegramClient$iter_admin_log()`](#method-TelegramClient-iter_admin_log)

- [`TelegramClient$get_admin_log()`](#method-TelegramClient-get_admin_log)

- [`TelegramClient$iter_profile_photos()`](#method-TelegramClient-iter_profile_photos)

- [`TelegramClient$get_profile_photos()`](#method-TelegramClient-get_profile_photos)

- [`TelegramClient$action()`](#method-TelegramClient-action)

- [`TelegramClient$edit_admin()`](#method-TelegramClient-edit_admin)

- [`TelegramClient$edit_permissions()`](#method-TelegramClient-edit_permissions)

- [`TelegramClient$kick_participant()`](#method-TelegramClient-kick_participant)

- [`TelegramClient$get_permissions()`](#method-TelegramClient-get_permissions)

- [`TelegramClient$get_stats()`](#method-TelegramClient-get_stats)

- [`TelegramClient$inline_query()`](#method-TelegramClient-inline_query)

- [`TelegramClient$invoke_function()`](#method-TelegramClient-invoke_function)

- [`TelegramClient$custom_inline_results()`](#method-TelegramClient-custom_inline_results)

- [`TelegramClient$iter_messages()`](#method-TelegramClient-iter_messages)

- [`TelegramClient$get_messages()`](#method-TelegramClient-get_messages)

- [`TelegramClient$send_message()`](#method-TelegramClient-send_message)

- [`TelegramClient$forward_messages()`](#method-TelegramClient-forward_messages)

- [`TelegramClient$edit_message()`](#method-TelegramClient-edit_message)

- [`TelegramClient$delete_messages()`](#method-TelegramClient-delete_messages)

- [`TelegramClient$send_read_acknowledge()`](#method-TelegramClient-send_read_acknowledge)

- [`TelegramClient$pin_message()`](#method-TelegramClient-pin_message)

- [`TelegramClient$unpin_message()`](#method-TelegramClient-unpin_message)

- [`TelegramClient$get_comment_data()`](#method-TelegramClient-get_comment_data)

- [`TelegramClient$pin_internal()`](#method-TelegramClient-pin_internal)

- [`TelegramClient$send_file()`](#method-TelegramClient-send_file)

- [`TelegramClient$upload_file()`](#method-TelegramClient-upload_file)

- [`TelegramClient$file_to_media()`](#method-TelegramClient-file_to_media)

- [`TelegramClient$resize_photo_if_needed()`](#method-TelegramClient-resize_photo_if_needed)

- [`TelegramClient$is_image()`](#method-TelegramClient-is_image)

- [`TelegramClient$get_appropriated_part_size()`](#method-TelegramClient-get_appropriated_part_size)

- [`TelegramClient$invoke()`](#method-TelegramClient-invoke)

- [`TelegramClient$build_reply_markup()`](#method-TelegramClient-build_reply_markup)

- [`TelegramClient$run_until_disconnected()`](#method-TelegramClient-run_until_disconnected)

- [`TelegramClient$set_receive_updates()`](#method-TelegramClient-set_receive_updates)

- [`TelegramClient$on()`](#method-TelegramClient-on)

- [`TelegramClient$add_event_handler()`](#method-TelegramClient-add_event_handler)

- [`TelegramClient$remove_event_handler()`](#method-TelegramClient-remove_event_handler)

- [`TelegramClient$list_event_handlers()`](#method-TelegramClient-list_event_handlers)

- [`TelegramClient$catch_up()`](#method-TelegramClient-catch_up)

- [`TelegramClient$update_loop()`](#method-TelegramClient-update_loop)

- [`TelegramClient$preprocess_updates()`](#method-TelegramClient-preprocess_updates)

- [`TelegramClient$keepalive_loop()`](#method-TelegramClient-keepalive_loop)

- [`TelegramClient$dispatch_update()`](#method-TelegramClient-dispatch_update)

- [`TelegramClient$handle_auto_reconnect()`](#method-TelegramClient-handle_auto_reconnect)

- [`TelegramClient$set_parse_mode()`](#method-TelegramClient-set_parse_mode)

- [`TelegramClient$get_parse_mode()`](#method-TelegramClient-get_parse_mode)

- [`TelegramClient$sanitize_parse_mode()`](#method-TelegramClient-sanitize_parse_mode)

- [`TelegramClient$parse_message_text()`](#method-TelegramClient-parse_message_text)

- [`TelegramClient$replace_with_mention()`](#method-TelegramClient-replace_with_mention)

- [`TelegramClient$get_response_message()`](#method-TelegramClient-get_response_message)

- [`TelegramClient$call()`](#method-TelegramClient-call)

- [`TelegramClient$call_internal()`](#method-TelegramClient-call_internal)

- [`TelegramClient$get_me()`](#method-TelegramClient-get_me)

- [`TelegramClient$self_id()`](#method-TelegramClient-self_id)

- [`TelegramClient$is_bot()`](#method-TelegramClient-is_bot)

- [`TelegramClient$is_user_authorized()`](#method-TelegramClient-is_user_authorized)

- [`TelegramClient$get_entity()`](#method-TelegramClient-get_entity)

- [`TelegramClient$get_input_entity()`](#method-TelegramClient-get_input_entity)

- [`TelegramClient$get_peer()`](#method-TelegramClient-get_peer)

- [`TelegramClient$get_peer_id()`](#method-TelegramClient-get_peer_id)

- [`TelegramClient$get_entity_from_string()`](#method-TelegramClient-get_entity_from_string)

- [`TelegramClient$get_input_dialog()`](#method-TelegramClient-get_input_dialog)

- [`TelegramClient$get_input_notify()`](#method-TelegramClient-get_input_notify)

- [`TelegramClient$new()`](#method-TelegramClient-new)

- [`TelegramClient$clone()`](#method-TelegramClient-clone)

Inherited methods

- [`telegramR::TelegramBaseClient$connect()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-connect)
- [`telegramR::TelegramBaseClient$disconnect()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-disconnect)
- [`telegramR::TelegramBaseClient$get_flood_sleep_threshold()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-get_flood_sleep_threshold)
- [`telegramR::TelegramBaseClient$get_proxy()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-get_proxy)
- [`telegramR::TelegramBaseClient$get_version()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-get_version)
- [`telegramR::TelegramBaseClient$is_connected()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-is_connected)
- [`telegramR::TelegramBaseClient$set_flood_sleep_threshold()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-set_flood_sleep_threshold)
- [`telegramR::TelegramBaseClient$set_proxy()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-set_proxy)
- [`telegramR::TelegramBaseClient$switch_dc()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-switch_dc)

------------------------------------------------------------------------

### Method `takeout()`

Initialize a new \`AccountMethods\` object.

#### Usage

    TelegramClient$takeout(
      finalize = TRUE,
      contacts = NULL,
      users = NULL,
      chats = NULL,
      megagroups = NULL,
      channels = NULL,
      files = NULL,
      max_file_size = NULL
    )

#### Arguments

- `finalize`:

  A logical indicating whether to finalize the takeout session.

- `contacts`:

  A logical indicating whether to include contacts in the takeout
  session.

- `users`:

  A logical indicating whether to include users in the takeout session.

- `chats`:

  A logical indicating whether to include chats in the takeout session.

- `megagroups`:

  A logical indicating whether to include megagroups in the takeout
  session.

- `channels`:

  A logical indicating whether to include channels in the takeout
  session.

- `files`:

  A logical indicating whether to include files in the takeout session.

- `max_file_size`:

  The maximum file size to include in the takeout session.

#### Returns

A new \`AccountMethods\` object.

------------------------------------------------------------------------

### Method `end_takeout()`

Finalize the takeout session.

#### Usage

    TelegramClient$end_takeout(success)

#### Arguments

- `success`:

  A logical indicating whether the takeout session was successful.

#### Returns

A logical indicating whether the takeout session was finalized
successfully.

------------------------------------------------------------------------

### Method [`start()`](https://rdrr.io/r/stats/start.html)

Starts the client (connects and logs in if necessary).

#### Usage

    TelegramClient$start(
      phone = NULL,
      password = NULL,
      bot_token = NULL,
      force_sms = FALSE,
      code_callback = NULL,
      first_name = "New User",
      last_name = "",
      max_attempts = 3
    )

#### Arguments

- `phone`:

  Function or string representing the phone number or bot token

- `password`:

  Function or string to provide 2FA password if needed

- `bot_token`:

  Bot token for logging in as a bot

- `force_sms`:

  Whether to force sending the code request as SMS

- `code_callback`:

  Function to retrieve login code

- `first_name`:

  First name for new accounts

- `last_name`:

  Last name for new accounts

- `max_attempts`:

  Maximum number of attempts for code/password verification

#### Returns

The client instance

------------------------------------------------------------------------

### Method `sign_in()`

Signs in to an existing user or bot account.

#### Usage

    TelegramClient$sign_in(
      phone = NULL,
      code = NULL,
      password = NULL,
      bot_token = NULL,
      phone_code_hash = NULL
    )

#### Arguments

- `phone`:

  Phone number

- `code`:

  The verification code sent by Telegram

- `password`:

  2FA password if enabled

- `bot_token`:

  Bot token for logging in as a bot

- `phone_code_hash`:

  Hash returned by send_code_request

#### Returns

The signed in user or information about send_code_request

------------------------------------------------------------------------

### Method `sign_up()`

This method can no longer be used due to Telegram's restrictions.

#### Usage

    TelegramClient$sign_up(
      code,
      first_name,
      last_name = "",
      phone = NULL,
      phone_code_hash = NULL
    )

#### Arguments

- `code`:

  The verification code

- `first_name`:

  First name for the new user

- `last_name`:

  Last name for the new user

- `phone`:

  Phone number

- `phone_code_hash`:

  Hash returned by send_code_request

------------------------------------------------------------------------

### Method `send_code_request()`

Sends the verification code to the given phone number

#### Usage

    TelegramClient$send_code_request(phone, force_sms = FALSE, retry_count = 0)

#### Arguments

- `phone`:

  Phone number to send the code to

- `force_sms`:

  Whether to force sending as SMS

- `retry_count`:

  Internal parameter for recursion, do not set

#### Returns

The sent code information

------------------------------------------------------------------------

### Method `qr_login()`

Initiates the QR login procedure

#### Usage

    TelegramClient$qr_login(ignored_ids = NULL)

#### Arguments

- `ignored_ids`:

  List of already logged-in user IDs

#### Returns

QR login object

------------------------------------------------------------------------

### Method `log_out()`

Logs out of Telegram and deletes the current session file

#### Usage

    TelegramClient$log_out()

#### Returns

TRUE if successful, FALSE otherwise

------------------------------------------------------------------------

### Method `edit_2fa()`

Changes the 2FA settings of the logged in user

#### Usage

    TelegramClient$edit_2fa(
      current_password = NULL,
      new_password = NULL,
      hint = "",
      email = NULL,
      email_code_callback = NULL
    )

#### Arguments

- `current_password`:

  Current password

- `new_password`:

  New password to set

- `hint`:

  Hint to display when prompting for 2FA

- `email`:

  Recovery email address

- `email_code_callback`:

  Function to retrieve email verification code

#### Returns

TRUE if successful, FALSE otherwise

------------------------------------------------------------------------

### Method `parse_phone_and_hash()`

#### Usage

    TelegramClient$parse_phone_and_hash(phone, phone_hash)

------------------------------------------------------------------------

### Method `on_login()`

#### Usage

    TelegramClient$on_login(user)

------------------------------------------------------------------------

### Method `start_impl()`

#### Usage

    TelegramClient$start_impl(
      phone,
      password,
      bot_token,
      force_sms,
      code_callback,
      first_name,
      last_name,
      max_attempts
    )

------------------------------------------------------------------------

### Method [`parse_phone()`](https://romankyrychenko.github.io/telegramR/reference/parse_phone.md)

#### Usage

    TelegramClient$parse_phone(phone)

------------------------------------------------------------------------

### Method [`compute_check()`](https://romankyrychenko.github.io/telegramR/reference/compute_check.md)

#### Usage

    TelegramClient$compute_check(request, password)

------------------------------------------------------------------------

### Method `compute_digest()`

#### Usage

    TelegramClient$compute_digest(algo, password)

------------------------------------------------------------------------

### Method [`get_display_name()`](https://romankyrychenko.github.io/telegramR/reference/get_display_name.md)

#### Usage

    TelegramClient$get_display_name(user)

------------------------------------------------------------------------

### Method `download_profile_photo()`

Download a profile photo

#### Usage

    TelegramClient$download_profile_photo(entity, file = NULL, download_big = TRUE)

#### Arguments

- `entity`:

  The entity to download the profile photo from

- `file`:

  Output file path or NULL for auto-naming

- `download_big`:

  Whether to download the big version of the photo

#### Returns

Path to the downloaded file or NULL if no photo

------------------------------------------------------------------------

### Method `download_media()`

Download media from a message

#### Usage

    TelegramClient$download_media(
      message,
      file = NULL,
      thumb = NULL,
      progress_callback = NULL
    )

#### Arguments

- `message`:

  The message or media to download

- `file`:

  Output file path or NULL for auto-naming

- `thumb`:

  Which thumbnail to download (if any)

- `progress_callback`:

  Function called with progress updates

#### Returns

Path to the downloaded file or NULL if no media

------------------------------------------------------------------------

### Method `download_file()`

Download a file from its input location

#### Usage

    TelegramClient$download_file(
      input_location,
      file = NULL,
      part_size_kb = NULL,
      file_size = NULL,
      progress_callback = NULL,
      dc_id = NULL,
      key = NULL,
      iv = NULL
    )

#### Arguments

- `input_location`:

  The file location

- `file`:

  Output file path or NULL for auto-naming

- `part_size_kb`:

  Chunk size when downloading files

- `file_size`:

  The file size if known

- `progress_callback`:

  Function called with progress updates

- `dc_id`:

  Data center ID

- `key`:

  Encryption key if needed

- `iv`:

  Encryption IV if needed

#### Returns

Downloaded file data or path

------------------------------------------------------------------------

### Method `.download_file()`

Internal method to download a file

#### Usage

    TelegramClient$.download_file(
      input_location,
      file = NULL,
      part_size_kb = NULL,
      file_size = NULL,
      progress_callback = NULL,
      dc_id = NULL,
      key = NULL,
      iv = NULL,
      msg_data = NULL,
      cdn_redirect = NULL
    )

#### Arguments

- `input_location`:

  The file location

- `file`:

  Output file path or NULL for auto-naming

- `part_size_kb`:

  Chunk size when downloading files

- `file_size`:

  The file size if known

- `progress_callback`:

  Function called with progress updates

- `dc_id`:

  Data center ID

- `key`:

  Encryption key if needed

- `iv`:

  Encryption IV if needed

- `msg_data`:

  Message data if applicable

- `cdn_redirect`:

  CDN redirect if applicable

#### Returns

Downloaded file data or path

------------------------------------------------------------------------

### Method `iter_download()`

Iterate over a file download

#### Usage

    TelegramClient$iter_download(
      file,
      offset = 0,
      stride = NULL,
      limit = NULL,
      chunk_size = NULL,
      request_size = MAX_CHUNK_SIZE,
      file_size = NULL,
      dc_id = NULL
    )

#### Arguments

- `file`:

  The file to download

- `offset`:

  Starting offset

- `stride`:

  Stride between chunks

- `limit`:

  Maximum number of chunks to download

- `chunk_size`:

  Size of each chunk

- `request_size`:

  Size of each request

- `file_size`:

  Total file size if known

- `dc_id`:

  Data center ID

#### Returns

Iterator for file chunks

------------------------------------------------------------------------

### Method `.iter_download()`

Internal implementation of iter_download

#### Usage

    TelegramClient$.iter_download(
      file,
      offset = 0,
      stride = NULL,
      limit = NULL,
      chunk_size = NULL,
      request_size = MAX_CHUNK_SIZE,
      file_size = NULL,
      dc_id = NULL,
      msg_data = NULL,
      cdn_redirect = NULL
    )

#### Arguments

- `file`:

  The file to download

- `offset`:

  Starting offset

- `stride`:

  Stride between chunks

- `limit`:

  Maximum number of chunks to download

- `chunk_size`:

  Size of each chunk

- `request_size`:

  Size of each request

- `file_size`:

  Total file size if known

- `dc_id`:

  Data center ID

- `msg_data`:

  Message data if applicable

- `cdn_redirect`:

  CDN redirect if applicable

#### Returns

Iterator for file chunks

------------------------------------------------------------------------

### Method `get_thumb()`

Get the appropriate thumbnail from thumbs

#### Usage

    TelegramClient$get_thumb(thumbs, thumb)

#### Arguments

- `thumbs`:

  List of available thumbnails

- `thumb`:

  Which thumbnail to get (NULL for largest, integer index, string type,
  or PhotoSize/VideoSize object)

#### Returns

The selected thumbnail or NULL if none found

------------------------------------------------------------------------

### Method `download_cached_photo_size()`

Download cached photo size

#### Usage

    TelegramClient$download_cached_photo_size(size, file)

#### Arguments

- `size`:

  The photo size to download

- `file`:

  Output file path or NULL for auto-naming

#### Returns

Downloaded file data or path

------------------------------------------------------------------------

### Method `download_photo()`

Download a photo

#### Usage

    TelegramClient$download_photo(photo, file, date, thumb, progress_callback)

#### Arguments

- `photo`:

  The photo to download

- `file`:

  Output file path or NULL for auto-naming

- `date`:

  The date the photo was sent

- `thumb`:

  Which thumbnail to download

- `progress_callback`:

  Function called with progress updates

#### Returns

Path to the downloaded file

------------------------------------------------------------------------

### Method `get_kind_and_names()`

Get kind and possible names for DocumentAttribute

#### Usage

    TelegramClient$get_kind_and_names(attributes)

#### Arguments

- `attributes`:

  The document attributes

#### Returns

List with kind and possible names

------------------------------------------------------------------------

### Method `download_document()`

Download a document

#### Usage

    TelegramClient$download_document(
      document,
      file,
      date,
      thumb,
      progress_callback,
      msg_data
    )

#### Arguments

- `document`:

  The document to download

- `file`:

  Output file path or NULL for auto-naming

- `date`:

  The date the document was sent

- `thumb`:

  Which thumbnail to download

- `progress_callback`:

  Function called with progress updates

- `msg_data`:

  Message data for reference if needed

#### Returns

Path to the downloaded file

------------------------------------------------------------------------

### Method `download_contact()`

Download a contact as vCard

#### Usage

    TelegramClient$download_contact(mm_contact, file)

#### Arguments

- `mm_contact`:

  The contact to download

- `file`:

  Output file path or NULL for auto-naming

#### Returns

Path to the downloaded file

------------------------------------------------------------------------

### Method `download_web_document()`

Download a web document

#### Usage

    TelegramClient$download_web_document(web, file, progress_callback)

#### Arguments

- `web`:

  The web document to download

- `file`:

  Output file path or NULL for auto-naming

- `progress_callback`:

  Function called with progress updates

#### Returns

Path to the downloaded file

------------------------------------------------------------------------

### Method `get_proper_filename()`

Get a proper filename for the download

#### Usage

    TelegramClient$get_proper_filename(
      file,
      kind,
      extension,
      date = NULL,
      possible_names = NULL
    )

#### Arguments

- `file`:

  The file path or NULL for auto-naming

- `kind`:

  The kind of file (photo, document, etc.)

- `extension`:

  The file extension

- `date`:

  The date the file was sent

- `possible_names`:

  List of possible names

#### Returns

A proper filename

------------------------------------------------------------------------

### Method `iter_dialogs()`

Gets an iterator over dialogs.

#### Usage

    TelegramClient$iter_dialogs(
      limit = NULL,
      offset_date = NULL,
      offset_id = 0,
      offset_peer = InputPeerEmpty$new(),
      ignore_pinned = FALSE,
      ignore_migrated = FALSE,
      folder = NULL,
      archived = NULL
    )

#### Arguments

- `limit`:

  The maximum number of dialogs to retrieve.

- `offset_date`:

  The offset date to be used.

- `offset_id`:

  The message ID to be used as an offset.

- `offset_peer`:

  The peer to be used as an offset.

- `ignore_pinned`:

  Whether pinned dialogs should be ignored or not.

- `ignore_migrated`:

  Whether Chat that have "migrated_to" a Channel should be included or
  not.

- `folder`:

  The folder from which the dialogs should be retrieved.

- `archived`:

  Alias for folder. If unspecified, all will be returned, FALSE implies
  folder=0 and TRUE implies folder=1.

#### Returns

An iterator over dialogs.

------------------------------------------------------------------------

### Method `get_dialogs()`

Gets the dialogs (open conversations/subscribed channels).

#### Usage

    TelegramClient$get_dialogs(
      limit = NULL,
      offset_date = NULL,
      offset_id = 0,
      offset_peer = InputPeerEmpty$new(),
      ignore_pinned = FALSE,
      ignore_migrated = FALSE,
      folder = NULL,
      archived = NULL
    )

#### Arguments

- `limit`:

  How many dialogs to be retrieved as maximum. Can be set to NULL to
  retrieve all dialogs. Note that this may take whole minutes if you
  have hundreds of dialogs, as Telegram will tell the library to slow
  down through a "FloodWaitError".

- `offset_date`:

  The offset date to be used.

- `offset_id`:

  The message ID to be used as an offset.

- `offset_peer`:

  The peer to be used as an offset.

- `ignore_pinned`:

  Whether pinned dialogs should be ignored or not.

- `ignore_migrated`:

  Whether Chat that have "migrated_to" a Channel should be included or
  not. By default all the chats in your dialogs are returned, but
  setting this to TRUE will ignore (i.e. skip) them in the same way
  official applications do.

- `folder`:

  The folder from which the dialogs should be retrieved.

- `archived`:

  Alias for folder. If unspecified, all will be returned, FALSE implies
  folder=0 and TRUE implies folder=1.

#### Returns

A list of dialogs.

------------------------------------------------------------------------

### Method `iter_drafts()`

Gets the draft messages.

#### Usage

    TelegramClient$iter_drafts(entity = NULL)

#### Arguments

- `entity`:

  The entity or list of entities for which to fetch the draft messages.

#### Returns

An iterator over draft messages.

------------------------------------------------------------------------

### Method `get_drafts()`

Gets the draft messages.

#### Usage

    TelegramClient$get_drafts(entity = NULL)

#### Arguments

- `entity`:

  The entity or list of entities for which to fetch the draft messages.

#### Returns

A list of draft messages.

------------------------------------------------------------------------

### Method `edit_folder()`

Edits the folder used by one or more dialogs to archive them.

#### Usage

    TelegramClient$edit_folder(entity = NULL, folder = NULL, unpack = NULL)

#### Arguments

- `entity`:

  The entity or list of entities to move to the desired archive folder.

- `folder`:

  The folder to which the dialog should be archived to.

- `unpack`:

  If you want to unpack an archived folder, set this parameter to the
  folder number that you want to delete.

#### Returns

The Updates object that the request produces.

------------------------------------------------------------------------

### Method `delete_dialog()`

Deletes a dialog (leaves a chat or channel).

#### Usage

    TelegramClient$delete_dialog(entity, revoke = FALSE)

#### Arguments

- `entity`:

  The entity of the dialog to delete.

- `revoke`:

  Whether to revoke the messages from the other peer.

#### Returns

The Updates object that the request produces, or nothing for private
conversations.

------------------------------------------------------------------------

### Method `conversation()`

Creates a new conversation with the given entity.

#### Usage

    TelegramClient$conversation(
      entity,
      timeout = 60,
      total_timeout = NULL,
      max_messages = 100,
      exclusive = TRUE,
      replies_are_responses = TRUE
    )

#### Arguments

- `entity`:

  The entity with which a new conversation should be opened.

- `timeout`:

  The default timeout (in seconds) per action to be used.

- `total_timeout`:

  The total timeout (in seconds) to use for the whole conversation.

- `max_messages`:

  The maximum amount of messages this conversation will remember.

- `exclusive`:

  Whether the conversation should be exclusive within a single chat.

- `replies_are_responses`:

  Whether replies should be treated as responses or not.

#### Returns

A new Conversation object.

------------------------------------------------------------------------

### Method `iter_participants()`

Iterator over the participants belonging to the specified chat.

The order is unspecified.

#### Usage

    TelegramClient$iter_participants(
      entity,
      limit = NULL,
      search = "",
      filter = NULL,
      aggressive = FALSE
    )

#### Arguments

- `entity`:

  The entity from which to retrieve the participants list.

- `limit`:

  Limits amount of participants fetched. Default is NULL.

- `search`:

  Look for participants with this string in name/username. Default is ”.

- `filter`:

  The filter to be used, if you want e.g. only admins. Default is NULL.

- `aggressive`:

  Does nothing. Kept for backwards-compatibility. Default is FALSE.

#### Returns

A \_ParticipantsIter object.

------------------------------------------------------------------------

### Method `get_participants()`

Same as iter_participants(), but returns a TotalList instead.

#### Usage

    TelegramClient$get_participants(...)

#### Arguments

- `...`:

  Arguments passed to iter_participants.

#### Returns

A TotalList of participants.

------------------------------------------------------------------------

### Method `iter_admin_log()`

Iterator over the admin log for the specified channel.

The default order is from the most recent event to the oldest.

#### Usage

    TelegramClient$iter_admin_log(
      entity,
      limit = NULL,
      max_id = 0,
      min_id = 0,
      search = NULL,
      admins = NULL,
      join = NULL,
      leave = NULL,
      invite = NULL,
      restrict = NULL,
      unrestrict = NULL,
      ban = NULL,
      unban = NULL,
      promote = NULL,
      demote = NULL,
      info = NULL,
      settings = NULL,
      pinned = NULL,
      edit = NULL,
      delete = NULL,
      group_call = NULL
    )

#### Arguments

- `entity`:

  The channel entity from which to get its admin log.

- `limit`:

  Number of events to be retrieved. Default is NULL.

- `max_id`:

  All events with a higher (newer) ID or equal to this will be excluded.
  Default is 0.

- `min_id`:

  All events with a lower (older) ID or equal to this will be excluded.
  Default is 0.

- `search`:

  The string to be used as a search query. Default is NULL.

- `admins`:

  If present, filter by these admins. Default is NULL.

- `join`:

  If TRUE, events for when a user joined will be returned. Default is
  NULL.

- `leave`:

  If TRUE, events for when a user leaves will be returned. Default is
  NULL.

- `invite`:

  If TRUE, events for when a user joins through an invite link will be
  returned. Default is NULL.

- `restrict`:

  If TRUE, events with partial restrictions will be returned. Default is
  NULL.

- `unrestrict`:

  If TRUE, events removing restrictions will be returned. Default is
  NULL.

- `ban`:

  If TRUE, events applying or removing all restrictions will be
  returned. Default is NULL.

- `unban`:

  If TRUE, events removing all restrictions will be returned. Default is
  NULL.

- `promote`:

  If TRUE, events with admin promotions will be returned. Default is
  NULL.

- `demote`:

  If TRUE, events with admin demotions will be returned. Default is
  NULL.

- `info`:

  If TRUE, events changing the group info will be returned. Default is
  NULL.

- `settings`:

  If TRUE, events changing the group settings will be returned. Default
  is NULL.

- `pinned`:

  If TRUE, events of new pinned messages will be returned. Default is
  NULL.

- `edit`:

  If TRUE, events of message edits will be returned. Default is NULL.

- `delete`:

  If TRUE, events of message deletions will be returned. Default is
  NULL.

- `group_call`:

  If TRUE, events related to group calls will be returned. Default is
  NULL.

#### Returns

An \_AdminLogIter object.

------------------------------------------------------------------------

### Method `get_admin_log()`

Same as iter_admin_log(), but returns a list instead.

#### Usage

    TelegramClient$get_admin_log(...)

#### Arguments

- `...`:

  Arguments passed to iter_admin_log.

#### Returns

A list of admin log events.

------------------------------------------------------------------------

### Method `iter_profile_photos()`

Iterator over a user's profile photos or a chat's photos.

The order is from the most recent photo to the oldest.

#### Usage

    TelegramClient$iter_profile_photos(
      entity,
      limit = NULL,
      offset = 0,
      max_id = 0
    )

#### Arguments

- `entity`:

  The entity from which to get the profile or chat photos.

- `limit`:

  Number of photos to be retrieved. Default is NULL.

- `offset`:

  How many photos should be skipped before returning the first one.
  Default is 0.

- `max_id`:

  The maximum ID allowed when fetching photos. Default is 0.

#### Returns

A \_ProfilePhotoIter object.

------------------------------------------------------------------------

### Method `get_profile_photos()`

Same as iter_profile_photos(), but returns a TotalList instead.

#### Usage

    TelegramClient$get_profile_photos(...)

#### Arguments

- `...`:

  Arguments passed to iter_profile_photos.

#### Returns

A TotalList of photos.

------------------------------------------------------------------------

### Method `action()`

Returns a context-manager object to represent a "chat action".

Chat actions indicate things like "user is typing", etc.

#### Usage

    TelegramClient$action(entity, action, delay = 4, auto_cancel = TRUE)

#### Arguments

- `entity`:

  The entity where the action should be showed in.

- `action`:

  The action to show (string or SendMessageAction).

- `delay`:

  The delay in seconds between sending actions. Default is 4.

- `auto_cancel`:

  Whether to cancel the action automatically. Default is TRUE.

#### Returns

A \_ChatAction object or a coroutine.

------------------------------------------------------------------------

### Method `edit_admin()`

Edits admin permissions for someone in a chat.

#### Usage

    TelegramClient$edit_admin(
      entity,
      user,
      change_info = NULL,
      post_messages = NULL,
      edit_messages = NULL,
      delete_messages = NULL,
      ban_users = NULL,
      invite_users = NULL,
      pin_messages = NULL,
      add_admins = NULL,
      manage_call = NULL,
      anonymous = NULL,
      is_admin = NULL,
      title = NULL
    )

#### Arguments

- `entity`:

  The channel, megagroup or chat where the promotion should happen.

- `user`:

  The user to be promoted.

- `change_info`:

  Whether the user can change info. Default is NULL.

- `post_messages`:

  Whether the user can post in the channel. Default is NULL.

- `edit_messages`:

  Whether the user can edit messages. Default is NULL.

- `delete_messages`:

  Whether the user can delete messages. Default is NULL.

- `ban_users`:

  Whether the user can ban users. Default is NULL.

- `invite_users`:

  Whether the user can invite users. Default is NULL.

- `pin_messages`:

  Whether the user can pin messages. Default is NULL.

- `add_admins`:

  Whether the user can add admins. Default is NULL.

- `manage_call`:

  Whether the user can manage group calls. Default is NULL.

- `anonymous`:

  Whether the user remains anonymous. Default is NULL.

- `is_admin`:

  Whether the user is an admin. Default is NULL.

- `title`:

  The custom title for the admin. Default is NULL.

#### Returns

The resulting Updates object.

------------------------------------------------------------------------

### Method `edit_permissions()`

Edits user restrictions in a chat.

#### Usage

    TelegramClient$edit_permissions(
      entity,
      user = NULL,
      until_date = NULL,
      view_messages = TRUE,
      send_messages = TRUE,
      send_media = TRUE,
      send_stickers = TRUE,
      send_gifs = TRUE,
      send_games = TRUE,
      send_inline = TRUE,
      embed_link_previews = TRUE,
      send_polls = TRUE,
      change_info = TRUE,
      invite_users = TRUE,
      pin_messages = TRUE
    )

#### Arguments

- `entity`:

  The channel or megagroup where the restriction should happen.

- `user`:

  The user to restrict. Default is NULL.

- `until_date`:

  When the user will be unbanned. Default is NULL.

- `view_messages`:

  Whether the user can view messages. Default is TRUE.

- `send_messages`:

  Whether the user can send messages. Default is TRUE.

- `send_media`:

  Whether the user can send media. Default is TRUE.

- `send_stickers`:

  Whether the user can send stickers. Default is TRUE.

- `send_gifs`:

  Whether the user can send gifs. Default is TRUE.

- `send_games`:

  Whether the user can send games. Default is TRUE.

- `send_inline`:

  Whether the user can use inline bots. Default is TRUE.

- `embed_link_previews`:

  Whether the user can embed link previews. Default is TRUE.

- `send_polls`:

  Whether the user can send polls. Default is TRUE.

- `change_info`:

  Whether the user can change info. Default is TRUE.

- `invite_users`:

  Whether the user can invite users. Default is TRUE.

- `pin_messages`:

  Whether the user can pin messages. Default is TRUE.

#### Returns

The resulting Updates object.

------------------------------------------------------------------------

### Method `kick_participant()`

Kicks a user from a chat.

#### Usage

    TelegramClient$kick_participant(entity, user)

#### Arguments

- `entity`:

  The channel or chat where the user should be kicked from.

- `user`:

  The user to kick.

#### Returns

The service message produced about a user being kicked, if any.

------------------------------------------------------------------------

### Method `get_permissions()`

Fetches the permissions of a user in a specific chat or channel.

#### Usage

    TelegramClient$get_permissions(entity, user = NULL)

#### Arguments

- `entity`:

  The channel or chat the user is participant of.

- `user`:

  Target user. Default is NULL.

#### Returns

A ParticipantPermissions instance or NULL.

------------------------------------------------------------------------

### Method `get_stats()`

Retrieves statistics from the given megagroup or broadcast channel.

#### Usage

    TelegramClient$get_stats(entity, message = NULL)

#### Arguments

- `entity`:

  The channel from which to get statistics.

- `message`:

  The message ID from which to get statistics. Default is NULL.

#### Returns

BroadcastStats, MegagroupStats, or MessageStats.

------------------------------------------------------------------------

### Method `inline_query()`

Makes an inline query to the specified bot (e.g., "@vote New Poll").

#### Usage

    TelegramClient$inline_query(
      bot,
      query,
      entity = NULL,
      offset = NULL,
      geo_point = NULL
    )

#### Arguments

- `bot`:

  The bot entity to which the inline query should be made.

- `query`:

  The query string to send to the bot.

- `entity`:

  (Optional) The entity where the inline query is being made from.

- `offset`:

  (Optional) The string offset to use for the bot.

- `geo_point`:

  (Optional) Geo point location information for localized results.

#### Returns

A list of inline results. Placeholder for invoking Telegram API
functions.

------------------------------------------------------------------------

### Method `invoke_function()`

#### Usage

    TelegramClient$invoke_function(function_name, params)

#### Arguments

- `function_name`:

  The name of the function to invoke.

- `params`:

  The parameters for the function.

#### Returns

API response. Placeholder for processing inline results.

------------------------------------------------------------------------

### Method `custom_inline_results()`

#### Usage

    TelegramClient$custom_inline_results(result, peer)

#### Arguments

- `result`:

  The raw result from the API.

- `peer`:

  The peer entity.

#### Returns

Processed inline results.

------------------------------------------------------------------------

### Method `iter_messages()`

Iterate over messages

Iterator over the messages for the given chat. The default order is
newest to oldest, set reverse = TRUE to iterate oldest to newest.

If either search, filter or from_user are provided, server-side search
will be used.

#### Usage

    TelegramClient$iter_messages(
      entity,
      limit = NULL,
      offset_date = NULL,
      offset_id = 0L,
      max_id = 0L,
      min_id = 0L,
      add_offset = 0L,
      search = NULL,
      filter = NULL,
      from_user = NULL,
      wait_time = NULL,
      ids = NULL,
      reverse = FALSE,
      reply_to = NULL,
      scheduled = FALSE
    )

#### Arguments

- `entity`:

  Entity to retrieve the message history from (can be NULL for global
  search).

- `limit`:

  integer or NULL. Number of messages to retrieve; NULL fetches all.

- `offset_date`:

  POSIXct or Date. Only messages previous to this date are returned.

- `offset_id`:

  integer. Only messages previous to this id are returned.

- `max_id`:

  integer. Exclude messages with id \>= this value.

- `min_id`:

  integer. Exclude messages with id \<= this value.

- `add_offset`:

  integer. Additional message offset.

- `search`:

  character. Text query for server-side search.

- `filter`:

  A filter object or constructor for server-side filtering.

- `from_user`:

  Entity. Only messages from this user will be returned.

- `wait_time`:

  numeric. Seconds to sleep between requests to avoid flood waits.

- `ids`:

  integer or integer vector. If set, return these ids instead of
  iterating.

- `reverse`:

  logical. If TRUE, iterate oldest to newest.

- `reply_to`:

  integer. If set, iterate replies to this message id.

- `scheduled`:

  logical. If TRUE, return scheduled messages (ignores other params
  except entity).

#### Returns

An iterator-like object or list depending on implementation.

------------------------------------------------------------------------

### Method `get_messages()`

#### Usage

    TelegramClient$get_messages(...)

#### Arguments

- `...`:

  Passed through to iter_messages().

#### Returns

A list of messages or a single message if ids is a scalar. Send a
message

Sends a message to the specified user, chat or channel. Supports text,
media, buttons, scheduling, and other options.

------------------------------------------------------------------------

### Method `send_message()`

#### Usage

    TelegramClient$send_message(
      entity,
      message = "",
      reply_to = NULL,
      attributes = NULL,
      parse_mode = NULL,
      formatting_entities = NULL,
      link_preview = TRUE,
      file = NULL,
      thumb = NULL,
      force_document = FALSE,
      clear_draft = FALSE,
      buttons = NULL,
      silent = NULL,
      background = NULL,
      supports_streaming = FALSE,
      schedule = NULL,
      comment_to = NULL,
      nosound_video = NULL,
      send_as = NULL,
      message_effect_id = NULL
    )

#### Arguments

- `entity`:

  Target entity.

- `message`:

  Text or message-like object.

- `reply_to`:

  Message id or message object to reply to.

- `attributes`:

  Optional media attributes.

- `parse_mode`:

  Parse mode for text (e.g., 'md', 'html'); NULL to disable.

- `formatting_entities`:

  Message entities; overrides parse_mode if provided.

- `link_preview`:

  logical. Whether to show link previews for URLs in text.

- `file`:

  File-like object or vector of file-like objects to send.

- `thumb`:

  Optional JPEG thumbnail for documents.

- `force_document`:

  logical. Force sending file as document.

- `clear_draft`:

  logical. Clear existing draft before sending.

- `buttons`:

  Inline or reply keyboard markup.

- `silent`:

  logical. Send without notification sounds.

- `background`:

  logical. Send in background.

- `supports_streaming`:

  logical. Mark video as streamable.

- `schedule`:

  POSIXct/Date. Schedule time.

- `comment_to`:

  Message id or message object to comment to (linked group).

- `nosound_video`:

  logical. Treat video without audio accordingly.

- `send_as`:

  Entity to send the message as (channels/chats).

- `message_effect_id`:

  integer. Effect id (private chats only).

#### Returns

The sent message object.

------------------------------------------------------------------------

### Method `forward_messages()`

#### Usage

    TelegramClient$forward_messages(
      entity,
      messages,
      from_peer = NULL,
      background = NULL,
      with_my_score = NULL,
      silent = NULL,
      as_album = NULL,
      schedule = NULL,
      drop_author = NULL,
      drop_media_captions = NULL
    )

#### Arguments

- `entity`:

  Destination entity.

- `messages`:

  Message ids or message objects to forward.

- `from_peer`:

  Source entity if messages are ids.

- `background`:

  logical. Forward in background.

- `with_my_score`:

  logical. Include game score.

- `silent`:

  logical. No notification sounds.

- `as_album`:

  logical. Deprecated; no effect.

- `schedule`:

  POSIXct/Date. Schedule time.

- `drop_author`:

  logical. Forward without quoting original author.

- `drop_media_captions`:

  logical. Strip captions (requires drop_author = TRUE).

#### Returns

A list of forwarded message objects (or single if input wasn't a list).

------------------------------------------------------------------------

### Method `edit_message()`

#### Usage

    TelegramClient$edit_message(
      entity,
      message = NULL,
      text = NULL,
      parse_mode = NULL,
      attributes = NULL,
      formatting_entities = NULL,
      link_preview = TRUE,
      file = NULL,
      thumb = NULL,
      force_document = FALSE,
      buttons = NULL,
      supports_streaming = FALSE,
      schedule = NULL
    )

#### Arguments

- `entity`:

  Chat entity or the message itself.

- `message`:

  Message id, message object, input message id, or new text if entity is
  a message.

- `text`:

  New text for the message (optional).

- `parse_mode`:

  Parse mode for text.

- `attributes`:

  Media attributes.

- `formatting_entities`:

  Explicit entities (overrides parse_mode).

- `link_preview`:

  logical. Whether to show link previews for URLs in text.

- `file`:

  File-like object to replace existing media.

- `thumb`:

  Optional JPEG thumbnail for documents.

- `force_document`:

  logical. Force sending file as document.

- `buttons`:

  Inline or reply keyboard markup.

- `supports_streaming`:

  logical. Mark video as streamable.

- `schedule`:

  POSIXct/Date. Schedule time.

#### Returns

The edited message (or logical for inline bot messages depending on
API).

------------------------------------------------------------------------

### Method `delete_messages()`

#### Usage

    TelegramClient$delete_messages(entity, message_ids, revoke = TRUE)

#### Arguments

- `entity`:

  Entity the messages belong to (may be NULL for some chats).

- `message_ids`:

  Integer id, vector of ids, or message objects.

- `revoke`:

  logical. If TRUE, delete for everyone where applicable.

#### Returns

A list of results (AffectedMessages per chunk) depending on API. Send
read acknowledge

Marks messages as read and optionally clears mentions/reactions.

------------------------------------------------------------------------

### Method `send_read_acknowledge()`

#### Usage

    TelegramClient$send_read_acknowledge(
      entity,
      message = NULL,
      max_id = NULL,
      clear_mentions = FALSE,
      clear_reactions = FALSE
    )

#### Arguments

- `entity`:

  Target entity.

- `message`:

  Message or vector of messages to derive max_id when max_id is NULL.

- `max_id`:

  Integer max id up to which messages will be marked read.

- `clear_mentions`:

  logical. Clear mention badge.

- `clear_reactions`:

  logical. Clear reactions badge.

#### Returns

logical indicating success depending on API.

------------------------------------------------------------------------

### Method `pin_message()`

#### Usage

    TelegramClient$pin_message(entity, message, notify = FALSE, pm_oneside = FALSE)

#### Arguments

- `entity`:

  Target entity.

- `message`:

  Message id or message object to pin; if NULL, unpins all.

- `notify`:

  logical. Notify members about the pin.

- `pm_oneside`:

  logical. Pin just for you in private chats (opposite of official by
  default).

#### Returns

API-dependent result or pinned service message.

------------------------------------------------------------------------

### Method `unpin_message()`

#### Usage

    TelegramClient$unpin_message(entity, message = NULL, notify = FALSE)

#### Arguments

- `entity`:

  Target entity.

- `message`:

  Message id or message object to unpin; NULL to unpin all.

- `notify`:

  logical. Notify members about the unpin.

#### Returns

API-dependent result.

------------------------------------------------------------------------

### Method `get_comment_data()`

#### Usage

    TelegramClient$get_comment_data(entity, message)

------------------------------------------------------------------------

### Method `pin_internal()`

#### Usage

    TelegramClient$pin_internal(
      entity,
      message,
      unpin,
      notify = FALSE,
      pm_oneside = FALSE
    )

------------------------------------------------------------------------

### Method `send_file()`

Sends a file to a specified entity.

#### Usage

    TelegramClient$send_file(
      entity,
      file,
      caption = NULL,
      force_document = FALSE,
      file_size = NULL,
      progress_callback = NULL,
      ...
    )

#### Arguments

- `entity`:

  The entity to send the file to.

- `file`:

  The file to send (path, raw bytes, or URL).

- `caption`:

  Optional caption for the media.

- `force_document`:

  Whether to force sending the file as a document.

- `file_size`:

  Optional size of the file in bytes.

- `progress_callback`:

  Optional callback to track upload progress.

- `...`:

  Additional parameters.

#### Returns

A future object representing the result of the operation.

------------------------------------------------------------------------

### Method `upload_file()`

Uploads a file to Telegram's servers without sending it.

#### Usage

    TelegramClient$upload_file(
      file,
      part_size_kb = NULL,
      file_size = NULL,
      progress_callback = NULL,
      ...
    )

#### Arguments

- `file`:

  The file to upload.

- `part_size_kb`:

  The size of chunks in KB.

- `file_size`:

  Optional size of the file in bytes.

- `progress_callback`:

  Optional callback to track upload progress.

- `...`:

  Additional parameters.

#### Returns

A future object representing the uploaded file details.

------------------------------------------------------------------------

### Method `file_to_media()`

Converts a file to a media format.

#### Usage

    TelegramClient$file_to_media(
      file,
      force_document = FALSE,
      file_size = NULL,
      progress_callback = NULL,
      attributes = NULL,
      thumb = NULL,
      allow_cache = TRUE,
      voice_note = FALSE,
      video_note = FALSE,
      supports_streaming = FALSE,
      mime_type = NULL,
      as_image = NULL,
      ttl = NULL,
      nosound_video = NULL
    )

#### Arguments

- `file`:

  The file to convert.

- `force_document`:

  Whether to force sending the file as a document.

- `file_size`:

  Optional size of the file in bytes.

- `progress_callback`:

  Optional callback to track upload progress.

- `attributes`:

  Optional attributes for the media.

- `thumb`:

  Optional thumbnail for the media.

- `allow_cache`:

  Whether to allow caching of the media.

- `...`:

  Additional parameters.

#### Returns

A list containing the file handle, media, and whether it is an image.

------------------------------------------------------------------------

### Method `resize_photo_if_needed()`

Resizes a photo if needed to meet Telegram's requirements.

#### Usage

    TelegramClient$resize_photo_if_needed(
      file,
      is_image,
      width = 2560,
      height = 2560
    )

#### Arguments

- `file`:

  The file to resize.

- `is_image`:

  Whether the file is an image.

- `width`:

  The maximum width of the image.

- `height`:

  The maximum height of the image.

#### Returns

The resized file or the original file if no resizing is needed.

------------------------------------------------------------------------

### Method [`is_image()`](https://romankyrychenko.github.io/telegramR/reference/is_image.md)

Checks if a file is an image.

#### Usage

    TelegramClient$is_image(file)

#### Arguments

- `file`:

  The file to check.

#### Returns

TRUE if the file is an image, FALSE otherwise.

------------------------------------------------------------------------

### Method [`get_appropriated_part_size()`](https://romankyrychenko.github.io/telegramR/reference/get_appropriated_part_size.md)

Determines the appropriate part size for file uploads.

#### Usage

    TelegramClient$get_appropriated_part_size(file_size)

#### Arguments

- `file_size`:

  The size of the file in bytes.

#### Returns

The part size in KB.

------------------------------------------------------------------------

### Method `invoke()`

Invokes an API request.

#### Usage

    TelegramClient$invoke(request)

#### Arguments

- `request`:

  The request to invoke.

#### Returns

The result of the API call.

------------------------------------------------------------------------

### Method `build_reply_markup()`

Builds a ReplyInlineMarkup or ReplyKeyboardMarkup for the given buttons.

Does nothing if either no buttons are provided or the provided argument
is already a reply markup.

This method is not asynchronous.

#### Usage

    TelegramClient$build_reply_markup(buttons = NULL, inline_only = FALSE)

#### Arguments

- `buttons`:

  The button, list of buttons, array of buttons or markup to convert
  into a markup.

- `inline_only`:

  Whether the buttons must be inline buttons only or not.

#### Returns

A ReplyInlineMarkup or ReplyKeyboardMarkup object.

------------------------------------------------------------------------

### Method `run_until_disconnected()`

Runs the update loop until disconnected.

#### Usage

    TelegramClient$run_until_disconnected()

#### Returns

A promise that resolves when disconnected.

------------------------------------------------------------------------

### Method `set_receive_updates()`

Sets whether to receive updates.

#### Usage

    TelegramClient$set_receive_updates(receive_updates)

#### Arguments

- `receive_updates`:

  A logical value indicating whether to receive updates.

#### Returns

A promise that resolves when the updates are set.

------------------------------------------------------------------------

### Method `on()`

Adds an event handler for a specific event.

#### Usage

    TelegramClient$on(event)

#### Arguments

- `event`:

  The event type to handle.

#### Returns

A decorator function that wraps the event handler.

------------------------------------------------------------------------

### Method `add_event_handler()`

Adds an event handler for a specific event.

#### Usage

    TelegramClient$add_event_handler(callback, event = NULL)

#### Arguments

- `callback`:

  The callback function to handle the event.

- `event`:

  The event type to handle.

#### Returns

NULL or an error if the event is not found.

------------------------------------------------------------------------

### Method `remove_event_handler()`

Removes an event handler for a specific event.

#### Usage

    TelegramClient$remove_event_handler(callback, event = NULL)

#### Arguments

- `callback`:

  The callback function to remove.

- `event`:

  The event type to remove.

#### Returns

The number of handlers removed.

------------------------------------------------------------------------

### Method `list_event_handlers()`

Lists all event handlers.

#### Usage

    TelegramClient$list_event_handlers()

#### Returns

A list of event handlers with their callbacks and events.

------------------------------------------------------------------------

### Method `catch_up()`

Catches up on updates.

#### Usage

    TelegramClient$catch_up()

#### Returns

A promise that resolves when caught up.

------------------------------------------------------------------------

### Method `update_loop()`

Handles the update loop.

#### Usage

    TelegramClient$update_loop()

#### Returns

A promise that resolves when the loop is finished.

------------------------------------------------------------------------

### Method `preprocess_updates()`

Preprocesses updates before dispatching.

#### Usage

    TelegramClient$preprocess_updates(updates, users, chats)

#### Arguments

- `updates`:

  A list of updates to preprocess.

- `users`:

  A list of user entities.

- `chats`:

  A list of chat entities.

#### Returns

A list of preprocessed updates.

------------------------------------------------------------------------

### Method `keepalive_loop()`

Sends a keepalive ping to the server.

#### Usage

    TelegramClient$keepalive_loop()

#### Returns

A promise that resolves when the ping is sent.

------------------------------------------------------------------------

### Method `dispatch_update()`

Dispatches an update to the appropriate event handlers.

#### Usage

    TelegramClient$dispatch_update(update)

#### Arguments

- `update`:

  The update to dispatch.

#### Returns

A promise that resolves when the update is dispatched.

------------------------------------------------------------------------

### Method `handle_auto_reconnect()`

Handles auto-reconnect after a disconnection.

#### Usage

    TelegramClient$handle_auto_reconnect()

#### Returns

A promise that resolves when the auto-reconnect is handled.

------------------------------------------------------------------------

### Method `set_parse_mode()`

#### Usage

    TelegramClient$set_parse_mode(mode)

#### Arguments

- `mode`:

  The parse mode to set (e.g., "markdown", "html").

#### Returns

None. Get the current parse mode.

------------------------------------------------------------------------

### Method `get_parse_mode()`

#### Usage

    TelegramClient$get_parse_mode()

#### Returns

The current parse mode. Sanitize the parse mode input.

------------------------------------------------------------------------

### Method [`sanitize_parse_mode()`](https://romankyrychenko.github.io/telegramR/reference/sanitize_parse_mode.md)

#### Usage

    TelegramClient$sanitize_parse_mode(mode)

#### Arguments

- `mode`:

  The parse mode to sanitize.

#### Returns

Sanitized parse mode. Parse a message text based on the parse mode.

------------------------------------------------------------------------

### Method `parse_message_text()`

#### Usage

    TelegramClient$parse_message_text(message, parse_mode = NULL)

#### Arguments

- `message`:

  The message text to parse.

- `parse_mode`:

  The parse mode to use (optional).

#### Returns

A list with parsed message and entities. Replace an entity with a
mention of a user.

------------------------------------------------------------------------

### Method `replace_with_mention()`

#### Usage

    TelegramClient$replace_with_mention(entities, i, user)

#### Arguments

- `entities`:

  The list of entities.

- `i`:

  The index of the entity to replace.

- `user`:

  The user to mention.

#### Returns

TRUE if replaced successfully, FALSE otherwise.

------------------------------------------------------------------------

### Method `get_response_message()`

#### Usage

    TelegramClient$get_response_message(request, result, input_chat)

#### Arguments

- `request`:

  The original request.

- `result`:

  The result from the API.

- `input_chat`:

  The input chat entity.

#### Returns

The response message or NULL.

------------------------------------------------------------------------

### Method [`call()`](https://rdrr.io/r/base/call.html)

Make a call to the Telegram API.

#### Usage

    TelegramClient$call(request, ordered = FALSE, flood_sleep_threshold = NULL)

#### Arguments

- `request`:

  The request object.

- `ordered`:

  Boolean indicating if the call is ordered.

- `flood_sleep_threshold`:

  The threshold for flood sleep.

#### Returns

A future object representing the result of the API call.

------------------------------------------------------------------------

### Method `call_internal()`

Make an internal call to the Telegram API.

#### Usage

    TelegramClient$call_internal(
      sender,
      request,
      ordered = FALSE,
      flood_sleep_threshold = NULL
    )

#### Arguments

- `sender`:

  The sender object.

- `request`:

  The request object.

- `ordered`:

  Boolean indicating if the call is ordered.

- `flood_sleep_threshold`:

  The threshold for flood sleep.

#### Returns

The result of the API call.

------------------------------------------------------------------------

### Method `get_me()`

Get the current user.

#### Usage

    TelegramClient$get_me(input_peer = FALSE)

#### Arguments

- `input_peer`:

  Boolean indicating if the result should be an InputPeer.

#### Returns

A future object representing the current user.

------------------------------------------------------------------------

### Method `self_id()`

Get the ID of the current user.

#### Usage

    TelegramClient$self_id()

#### Returns

The ID of the current user.

------------------------------------------------------------------------

### Method `is_bot()`

Check if the current user is a bot.

#### Usage

    TelegramClient$is_bot()

#### Returns

A future object indicating if the user is a bot.

------------------------------------------------------------------------

### Method `is_user_authorized()`

Check if the current user is authorized.

#### Usage

    TelegramClient$is_user_authorized()

#### Returns

A future object indicating if the user is authorized.

------------------------------------------------------------------------

### Method `get_entity()`

Get an entity from a given input.

#### Usage

    TelegramClient$get_entity(entity)

#### Arguments

- `entity`:

  The input entity (user, chat, or channel).

#### Returns

A future object representing the entity.

------------------------------------------------------------------------

### Method `get_input_entity()`

Get the input entity for a given peer.

#### Usage

    TelegramClient$get_input_entity(peer)

#### Arguments

- `peer`:

  The peer to get the input entity for.

#### Returns

A future object representing the input entity.

------------------------------------------------------------------------

### Method [`get_peer()`](https://romankyrychenko.github.io/telegramR/reference/get_peer.md)

Get the peer for a given input entity.

#### Usage

    TelegramClient$get_peer(peer)

#### Arguments

- `peer`:

  The input entity to get the peer for.

#### Returns

A future object representing the peer.

------------------------------------------------------------------------

### Method [`get_peer_id()`](https://romankyrychenko.github.io/telegramR/reference/get_peer_id.md)

Get the ID of a given peer.

#### Usage

    TelegramClient$get_peer_id(peer, add_mark = TRUE)

#### Arguments

- `peer`:

  The input entity to get the ID for.

- `add_mark`:

  Boolean indicating if the ID should be marked.

#### Returns

The ID of the peer.

------------------------------------------------------------------------

### Method `get_entity_from_string()`

Get an entity from a string.

#### Usage

    TelegramClient$get_entity_from_string(string)

#### Arguments

- `string`:

  The string to get the entity from.

#### Returns

A future object representing the entity.

------------------------------------------------------------------------

### Method [`get_input_dialog()`](https://romankyrychenko.github.io/telegramR/reference/get_input_dialog.md)

Get the input dialog for a given dialog.

#### Usage

    TelegramClient$get_input_dialog(dialog)

#### Arguments

- `dialog`:

  The dialog to get the input dialog for.

#### Returns

A future object representing the input dialog.

------------------------------------------------------------------------

### Method `get_input_notify()`

Get the input notify for a given notify.

#### Usage

    TelegramClient$get_input_notify(notify)

#### Arguments

- `notify`:

  The notify to get the input notify for.

#### Returns

A future object representing the input notify.

------------------------------------------------------------------------

### Method `new()`

Create a new TelegramClient instance

#### Usage

    TelegramClient$new(...)

#### Arguments

- `...`:

  Arguments passed to the parent class

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TelegramClient$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
