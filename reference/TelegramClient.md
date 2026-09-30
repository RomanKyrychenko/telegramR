# TelegramClient

High-level 'Telegram' 'MTProto' client. Create one with
`TelegramClient$new(session, api_id, api_hash)`, then `$start()`
(interactive login) or `$connect()` together with `$send_code_request()`
and `$sign_in()` to authenticate. Once connected it exposes the
messaging, channel, media and download methods used throughout the
package documentation.

## Value

An R6 generator object of class `TelegramClient`.

## Details

This is an R6 class. Typical usage:


    client <- TelegramClient$new("my_session", api_id = 123, api_hash = "...")
    client$connect()

## Super class

`telegramR::TelegramBaseClient` -\> `TelegramClient`

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

- [`TelegramClient$iter_messages_page()`](#method-TelegramClient-iter_messages_page)

- [`TelegramClient$get_messages()`](#method-TelegramClient-get_messages)

- [`TelegramClient$channels_get_messages()`](#method-TelegramClient-channels_get_messages)

- [`TelegramClient$collect()`](#method-TelegramClient-collect)

- [`TelegramClient$collect_one()`](#method-TelegramClient-collect_one)

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

- [`TelegramClient$getInputEntity()`](#method-TelegramClient-getInputEntity)

- [`TelegramClient$getInputPeer()`](#method-TelegramClient-getInputPeer)

- [`TelegramClient$getInputUser()`](#method-TelegramClient-getInputUser)

- [`TelegramClient$getInputChannel()`](#method-TelegramClient-getInputChannel)

- [`TelegramClient$getInputMessage()`](#method-TelegramClient-getInputMessage)

- [`TelegramClient$getInputMedia()`](#method-TelegramClient-getInputMedia)

- [`TelegramClient$getInputDocument()`](#method-TelegramClient-getInputDocument)

- [`TelegramClient$getInputPhoto()`](#method-TelegramClient-getInputPhoto)

- [`TelegramClient$getInputChatPhoto()`](#method-TelegramClient-getInputChatPhoto)

- [`TelegramClient$getInputGroupCall()`](#method-TelegramClient-getInputGroupCall)

- [`TelegramClient$get_peer()`](#method-TelegramClient-get_peer)

- [`TelegramClient$get_peer_id()`](#method-TelegramClient-get_peer_id)

- [`TelegramClient$get_entity_from_string()`](#method-TelegramClient-get_entity_from_string)

- [`TelegramClient$get_input_dialog()`](#method-TelegramClient-get_input_dialog)

- [`TelegramClient$get_input_notify()`](#method-TelegramClient-get_input_notify)

- [`TelegramClient$download_files_parallel()`](#method-TelegramClient-download_files_parallel)

- [`TelegramClient$new()`](#method-TelegramClient-new)

- [`TelegramClient$clone()`](#method-TelegramClient-clone)

Inherited methods

- [`telegramR::TelegramBaseClient$clear_session_auth_key()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-clear_session_auth_key)
- [`telegramR::TelegramBaseClient$connect()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-connect)
- [`telegramR::TelegramBaseClient$disconnect()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-disconnect)
- [`telegramR::TelegramBaseClient$get_flood_sleep_threshold()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-get_flood_sleep_threshold)
- [`telegramR::TelegramBaseClient$get_proxy()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-get_proxy)
- [`telegramR::TelegramBaseClient$get_session_path()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-get_session_path)
- [`telegramR::TelegramBaseClient$get_version()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-get_version)
- [`telegramR::TelegramBaseClient$is_connected()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-is_connected)
- [`telegramR::TelegramBaseClient$set_dc()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-set_dc)
- [`telegramR::TelegramBaseClient$set_flood_sleep_threshold()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-set_flood_sleep_threshold)
- [`telegramR::TelegramBaseClient$set_proxy()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-set_proxy)
- [`telegramR::TelegramBaseClient$switch_dc()`](https://romankyrychenko.github.io/telegramR/reference/TelegramBaseClient.html#method-switch_dc)

------------------------------------------------------------------------

### Method `takeout()`

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

------------------------------------------------------------------------

### Method `end_takeout()`

#### Usage

    TelegramClient$end_takeout(success)

------------------------------------------------------------------------

### Method [`start()`](https://rdrr.io/r/stats/start.html)

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

------------------------------------------------------------------------

### Method `sign_in()`

#### Usage

    TelegramClient$sign_in(
      phone = NULL,
      code = NULL,
      password = NULL,
      bot_token = NULL,
      phone_code_hash = NULL
    )

------------------------------------------------------------------------

### Method `sign_up()`

#### Usage

    TelegramClient$sign_up(
      code,
      first_name,
      last_name = "",
      phone = NULL,
      phone_code_hash = NULL
    )

------------------------------------------------------------------------

### Method `send_code_request()`

#### Usage

    TelegramClient$send_code_request(phone, force_sms = FALSE, retry_count = 0)

------------------------------------------------------------------------

### Method `qr_login()`

#### Usage

    TelegramClient$qr_login(ignored_ids = NULL)

------------------------------------------------------------------------

### Method `log_out()`

#### Usage

    TelegramClient$log_out()

------------------------------------------------------------------------

### Method `edit_2fa()`

#### Usage

    TelegramClient$edit_2fa(
      current_password = NULL,
      new_password = NULL,
      hint = "",
      email = NULL,
      email_code_callback = NULL
    )

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

### Method `parse_phone()`

#### Usage

    TelegramClient$parse_phone(phone)

------------------------------------------------------------------------

### Method `compute_check()`

#### Usage

    TelegramClient$compute_check(request, password)

------------------------------------------------------------------------

### Method `compute_digest()`

#### Usage

    TelegramClient$compute_digest(algo, password)

------------------------------------------------------------------------

### Method `get_display_name()`

#### Usage

    TelegramClient$get_display_name(user)

------------------------------------------------------------------------

### Method `download_profile_photo()`

#### Usage

    TelegramClient$download_profile_photo(entity, file = NULL, download_big = TRUE)

------------------------------------------------------------------------

### Method `download_media()`

#### Usage

    TelegramClient$download_media(
      message,
      file = NULL,
      thumb = NULL,
      progress_callback = NULL
    )

------------------------------------------------------------------------

### Method `download_file()`

#### Usage

    TelegramClient$download_file(
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

------------------------------------------------------------------------

### Method `.download_file()`

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

------------------------------------------------------------------------

### Method `iter_download()`

#### Usage

    TelegramClient$iter_download(
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

------------------------------------------------------------------------

### Method `.iter_download()`

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

------------------------------------------------------------------------

### Method `get_thumb()`

#### Usage

    TelegramClient$get_thumb(thumbs, thumb)

------------------------------------------------------------------------

### Method `download_cached_photo_size()`

#### Usage

    TelegramClient$download_cached_photo_size(size, file)

------------------------------------------------------------------------

### Method `download_photo()`

#### Usage

    TelegramClient$download_photo(photo, file, date, thumb, progress_callback)

------------------------------------------------------------------------

### Method `get_kind_and_names()`

#### Usage

    TelegramClient$get_kind_and_names(attributes)

------------------------------------------------------------------------

### Method `download_document()`

#### Usage

    TelegramClient$download_document(
      document,
      file,
      date,
      thumb,
      progress_callback,
      msg_data
    )

------------------------------------------------------------------------

### Method `download_contact()`

#### Usage

    TelegramClient$download_contact(mm_contact, file)

------------------------------------------------------------------------

### Method `download_web_document()`

#### Usage

    TelegramClient$download_web_document(web, file, progress_callback)

------------------------------------------------------------------------

### Method `get_proper_filename()`

#### Usage

    TelegramClient$get_proper_filename(
      file,
      kind,
      extension,
      date = NULL,
      possible_names = NULL
    )

------------------------------------------------------------------------

### Method `iter_dialogs()`

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

------------------------------------------------------------------------

### Method `get_dialogs()`

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

------------------------------------------------------------------------

### Method `iter_drafts()`

#### Usage

    TelegramClient$iter_drafts(entity = NULL)

------------------------------------------------------------------------

### Method `get_drafts()`

#### Usage

    TelegramClient$get_drafts(entity = NULL)

------------------------------------------------------------------------

### Method `edit_folder()`

#### Usage

    TelegramClient$edit_folder(entity = NULL, folder = NULL, unpack = NULL)

------------------------------------------------------------------------

### Method `delete_dialog()`

#### Usage

    TelegramClient$delete_dialog(entity, revoke = FALSE)

------------------------------------------------------------------------

### Method `conversation()`

#### Usage

    TelegramClient$conversation(
      entity,
      timeout = 60,
      total_timeout = NULL,
      max_messages = 100,
      exclusive = TRUE,
      replies_are_responses = TRUE
    )

------------------------------------------------------------------------

### Method `iter_participants()`

#### Usage

    TelegramClient$iter_participants(
      entity,
      limit = NULL,
      search = "",
      filter = NULL,
      aggressive = FALSE
    )

------------------------------------------------------------------------

### Method `get_participants()`

#### Usage

    TelegramClient$get_participants(...)

------------------------------------------------------------------------

### Method `iter_admin_log()`

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

------------------------------------------------------------------------

### Method `get_admin_log()`

#### Usage

    TelegramClient$get_admin_log(...)

------------------------------------------------------------------------

### Method `iter_profile_photos()`

#### Usage

    TelegramClient$iter_profile_photos(
      entity,
      limit = NULL,
      offset = 0,
      max_id = 0
    )

------------------------------------------------------------------------

### Method `get_profile_photos()`

#### Usage

    TelegramClient$get_profile_photos(...)

------------------------------------------------------------------------

### Method `action()`

#### Usage

    TelegramClient$action(entity, action, delay = 4, auto_cancel = TRUE)

------------------------------------------------------------------------

### Method `edit_admin()`

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

------------------------------------------------------------------------

### Method `edit_permissions()`

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

------------------------------------------------------------------------

### Method `kick_participant()`

#### Usage

    TelegramClient$kick_participant(entity, user)

------------------------------------------------------------------------

### Method `get_permissions()`

#### Usage

    TelegramClient$get_permissions(entity, user = NULL)

------------------------------------------------------------------------

### Method `get_stats()`

#### Usage

    TelegramClient$get_stats(entity, message = NULL)

------------------------------------------------------------------------

### Method `inline_query()`

#### Usage

    TelegramClient$inline_query(
      bot,
      query,
      entity = NULL,
      offset = NULL,
      geo_point = NULL
    )

------------------------------------------------------------------------

### Method `invoke_function()`

#### Usage

    TelegramClient$invoke_function(function_name, params)

------------------------------------------------------------------------

### Method `custom_inline_results()`

#### Usage

    TelegramClient$custom_inline_results(result, peer)

------------------------------------------------------------------------

### Method `iter_messages()`

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

------------------------------------------------------------------------

### Method `iter_messages_page()`

#### Usage

    TelegramClient$iter_messages_page(
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
      reverse = FALSE,
      reply_to = NULL,
      scheduled = FALSE
    )

------------------------------------------------------------------------

### Method `get_messages()`

#### Usage

    TelegramClient$get_messages(...)

------------------------------------------------------------------------

### Method `channels_get_messages()`

#### Usage

    TelegramClient$channels_get_messages(channel, ids)

------------------------------------------------------------------------

### Method `collect()`

#### Usage

    TelegramClient$collect(it)

------------------------------------------------------------------------

### Method `collect_one()`

#### Usage

    TelegramClient$collect_one(it)

------------------------------------------------------------------------

### Method [`send_message()`](https://romankyrychenko.github.io/telegramR/reference/send_message.md)

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

------------------------------------------------------------------------

### Method `delete_messages()`

#### Usage

    TelegramClient$delete_messages(entity, message_ids, revoke = TRUE)

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

------------------------------------------------------------------------

### Method `pin_message()`

#### Usage

    TelegramClient$pin_message(entity, message, notify = FALSE, pm_oneside = FALSE)

------------------------------------------------------------------------

### Method `unpin_message()`

#### Usage

    TelegramClient$unpin_message(entity, message = NULL, notify = FALSE)

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

### Method [`send_file()`](https://romankyrychenko.github.io/telegramR/reference/send_file.md)

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

------------------------------------------------------------------------

### Method `upload_file()`

#### Usage

    TelegramClient$upload_file(
      file,
      part_size_kb = NULL,
      file_size = NULL,
      progress_callback = NULL,
      ...
    )

------------------------------------------------------------------------

### Method `file_to_media()`

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

------------------------------------------------------------------------

### Method `resize_photo_if_needed()`

#### Usage

    TelegramClient$resize_photo_if_needed(
      file,
      is_image,
      width = 2560,
      height = 2560
    )

------------------------------------------------------------------------

### Method `is_image()`

#### Usage

    TelegramClient$is_image(file)

------------------------------------------------------------------------

### Method `get_appropriated_part_size()`

#### Usage

    TelegramClient$get_appropriated_part_size(file_size)

------------------------------------------------------------------------

### Method `invoke()`

#### Usage

    TelegramClient$invoke(request)

------------------------------------------------------------------------

### Method `build_reply_markup()`

#### Usage

    TelegramClient$build_reply_markup(buttons = NULL, inline_only = FALSE)

------------------------------------------------------------------------

### Method `run_until_disconnected()`

#### Usage

    TelegramClient$run_until_disconnected()

------------------------------------------------------------------------

### Method `set_receive_updates()`

#### Usage

    TelegramClient$set_receive_updates(receive_updates)

------------------------------------------------------------------------

### Method `on()`

#### Usage

    TelegramClient$on(event)

------------------------------------------------------------------------

### Method `add_event_handler()`

#### Usage

    TelegramClient$add_event_handler(callback, event = NULL)

------------------------------------------------------------------------

### Method `remove_event_handler()`

#### Usage

    TelegramClient$remove_event_handler(callback, event = NULL)

------------------------------------------------------------------------

### Method `list_event_handlers()`

#### Usage

    TelegramClient$list_event_handlers()

------------------------------------------------------------------------

### Method `catch_up()`

#### Usage

    TelegramClient$catch_up()

------------------------------------------------------------------------

### Method `update_loop()`

#### Usage

    TelegramClient$update_loop()

------------------------------------------------------------------------

### Method `preprocess_updates()`

#### Usage

    TelegramClient$preprocess_updates(updates, users, chats)

------------------------------------------------------------------------

### Method `keepalive_loop()`

#### Usage

    TelegramClient$keepalive_loop()

------------------------------------------------------------------------

### Method `dispatch_update()`

#### Usage

    TelegramClient$dispatch_update(update)

------------------------------------------------------------------------

### Method `handle_auto_reconnect()`

#### Usage

    TelegramClient$handle_auto_reconnect()

------------------------------------------------------------------------

### Method `set_parse_mode()`

#### Usage

    TelegramClient$set_parse_mode(mode)

------------------------------------------------------------------------

### Method `get_parse_mode()`

#### Usage

    TelegramClient$get_parse_mode()

------------------------------------------------------------------------

### Method `sanitize_parse_mode()`

#### Usage

    TelegramClient$sanitize_parse_mode(mode)

------------------------------------------------------------------------

### Method `parse_message_text()`

#### Usage

    TelegramClient$parse_message_text(message, parse_mode = NULL)

------------------------------------------------------------------------

### Method `replace_with_mention()`

#### Usage

    TelegramClient$replace_with_mention(entities, i, user)

------------------------------------------------------------------------

### Method `get_response_message()`

#### Usage

    TelegramClient$get_response_message(request, result, input_chat)

------------------------------------------------------------------------

### Method [`call()`](https://rdrr.io/r/base/call.html)

#### Usage

    TelegramClient$call(request, ordered = FALSE, flood_sleep_threshold = NULL)

------------------------------------------------------------------------

### Method `call_internal()`

#### Usage

    TelegramClient$call_internal(
      sender,
      request,
      ordered = FALSE,
      flood_sleep_threshold = NULL
    )

------------------------------------------------------------------------

### Method `get_me()`

#### Usage

    TelegramClient$get_me(input_peer = FALSE)

------------------------------------------------------------------------

### Method `self_id()`

#### Usage

    TelegramClient$self_id()

------------------------------------------------------------------------

### Method `is_bot()`

#### Usage

    TelegramClient$is_bot()

------------------------------------------------------------------------

### Method `is_user_authorized()`

#### Usage

    TelegramClient$is_user_authorized()

------------------------------------------------------------------------

### Method `get_entity()`

#### Usage

    TelegramClient$get_entity(entity)

------------------------------------------------------------------------

### Method `get_input_entity()`

#### Usage

    TelegramClient$get_input_entity(peer)

------------------------------------------------------------------------

### Method `getInputEntity()`

#### Usage

    TelegramClient$getInputEntity(peer)

------------------------------------------------------------------------

### Method `getInputPeer()`

#### Usage

    TelegramClient$getInputPeer(peer, allow_self = TRUE, check_hash = TRUE)

------------------------------------------------------------------------

### Method `getInputUser()`

#### Usage

    TelegramClient$getInputUser(entity)

------------------------------------------------------------------------

### Method `getInputChannel()`

#### Usage

    TelegramClient$getInputChannel(entity)

------------------------------------------------------------------------

### Method `getInputMessage()`

#### Usage

    TelegramClient$getInputMessage(message)

------------------------------------------------------------------------

### Method `getInputMedia()`

#### Usage

    TelegramClient$getInputMedia(
      media,
      is_photo = FALSE,
      attributes = NULL,
      force_document = FALSE,
      file_size = NULL,
      progress_callback = NULL
    )

------------------------------------------------------------------------

### Method `getInputDocument()`

#### Usage

    TelegramClient$getInputDocument(document)

------------------------------------------------------------------------

### Method `getInputPhoto()`

#### Usage

    TelegramClient$getInputPhoto(photo)

------------------------------------------------------------------------

### Method `getInputChatPhoto()`

#### Usage

    TelegramClient$getInputChatPhoto(photo)

------------------------------------------------------------------------

### Method `getInputGroupCall()`

#### Usage

    TelegramClient$getInputGroupCall(call)

------------------------------------------------------------------------

### Method `get_peer()`

#### Usage

    TelegramClient$get_peer(peer)

------------------------------------------------------------------------

### Method `get_peer_id()`

#### Usage

    TelegramClient$get_peer_id(peer, add_mark = TRUE)

------------------------------------------------------------------------

### Method `get_entity_from_string()`

#### Usage

    TelegramClient$get_entity_from_string(string)

------------------------------------------------------------------------

### Method `get_input_dialog()`

#### Usage

    TelegramClient$get_input_dialog(dialog)

------------------------------------------------------------------------

### Method `get_input_notify()`

#### Usage

    TelegramClient$get_input_notify(notify)

------------------------------------------------------------------------

### Method `download_files_parallel()`

#### Usage

    TelegramClient$download_files_parallel(
      items,
      output_dir = NULL,
      workers = 4L,
      stagger_ms = 500L
    )

------------------------------------------------------------------------

### Method `new()`

#### Usage

    TelegramClient$new(...)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TelegramClient$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "...")
client$start()
} # }
```
