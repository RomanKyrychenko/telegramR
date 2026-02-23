# ChannelFull

Telegram API type ChannelFull

Telegram API type ChannelFull

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChannelFull`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `about`:

  Field.

- `read_inbox_max_id`:

  Field.

- `read_outbox_max_id`:

  Field.

- `unread_count`:

  Field.

- `chat_photo`:

  Field.

- `notify_settings`:

  Field.

- `bot_info`:

  Field.

- `pts`:

  Field.

- `can_view_participants`:

  Field.

- `can_set_username`:

  Field.

- `can_set_stickers`:

  Field.

- `hidden_prehistory`:

  Field.

- `can_set_location`:

  Field.

- `has_scheduled`:

  Field.

- `can_view_stats`:

  Field.

- `blocked`:

  Field.

- `can_delete_channel`:

  Field.

- `antispam`:

  Field.

- `participants_hidden`:

  Field.

- `translations_disabled`:

  Field.

- `stories_pinned_available`:

  Field.

- `view_forum_as_messages`:

  Field.

- `restricted_sponsored`:

  Field.

- `can_view_revenue`:

  Field.

- `paid_media_allowed`:

  Field.

- `can_view_stars_revenue`:

  Field.

- `paid_reactions_available`:

  Field.

- `stargifts_available`:

  Field.

- `paid_messages_available`:

  Field.

- `participants_count`:

  Field.

- `admins_count`:

  Field.

- `kicked_count`:

  Field.

- `banned_count`:

  Field.

- `online_count`:

  Field.

- `exported_invite`:

  Field.

- `migrated_from_chat_id`:

  Field.

- `migrated_from_max_id`:

  Field.

- `pinned_msg_id`:

  Field.

- `stickerset`:

  Field.

- `available_min_id`:

  Field.

- `folder_id`:

  Field.

- `linked_chat_id`:

  Field.

- `location`:

  Field.

- `slowmode_seconds`:

  Field.

- `slowmode_next_send_date`:

  Field.

- `stats_dc`:

  Field.

- `call`:

  Field.

- `ttl_period`:

  Field.

- `pending_suggestions`:

  Field.

- `groupcall_default_join_as`:

  Field.

- `theme_emoticon`:

  Field.

- `requests_pending`:

  Field.

- `recent_requesters`:

  Field.

- `default_send_as`:

  Field.

- `available_reactions`:

  Field.

- `reactions_limit`:

  Field.

- `stories`:

  Field.

- `wallpaper`:

  Field.

- `boosts_applied`:

  Field.

- `boosts_unrestrict`:

  Field.

- `emojiset`:

  Field.

- `bot_verification`:

  Field.

- `stargifts_count`:

  Field.

- `send_paid_messages_stars`:

  Field.

- `main_tab`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`ChannelFull$new()`](#method-ChannelFull-new)

- [`ChannelFull$to_dict()`](#method-ChannelFull-to_dict)

- [`ChannelFull$clone()`](#method-ChannelFull-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$from_reader()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-from_reader)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    ChannelFull$new(
      id,
      about,
      read_inbox_max_id,
      read_outbox_max_id,
      unread_count,
      chat_photo,
      notify_settings,
      bot_info,
      pts,
      can_view_participants = NULL,
      can_set_username = NULL,
      can_set_stickers = NULL,
      hidden_prehistory = NULL,
      can_set_location = NULL,
      has_scheduled = NULL,
      can_view_stats = NULL,
      blocked = NULL,
      can_delete_channel = NULL,
      antispam = NULL,
      participants_hidden = NULL,
      translations_disabled = NULL,
      stories_pinned_available = NULL,
      view_forum_as_messages = NULL,
      restricted_sponsored = NULL,
      can_view_revenue = NULL,
      paid_media_allowed = NULL,
      can_view_stars_revenue = NULL,
      paid_reactions_available = NULL,
      stargifts_available = NULL,
      paid_messages_available = NULL,
      participants_count = NULL,
      admins_count = NULL,
      kicked_count = NULL,
      banned_count = NULL,
      online_count = NULL,
      exported_invite = NULL,
      migrated_from_chat_id = NULL,
      migrated_from_max_id = NULL,
      pinned_msg_id = NULL,
      stickerset = NULL,
      available_min_id = NULL,
      folder_id = NULL,
      linked_chat_id = NULL,
      location = NULL,
      slowmode_seconds = NULL,
      slowmode_next_send_date = NULL,
      stats_dc = NULL,
      call = NULL,
      ttl_period = NULL,
      pending_suggestions = NULL,
      groupcall_default_join_as = NULL,
      theme_emoticon = NULL,
      requests_pending = NULL,
      recent_requesters = NULL,
      default_send_as = NULL,
      available_reactions = NULL,
      reactions_limit = NULL,
      stories = NULL,
      wallpaper = NULL,
      boosts_applied = NULL,
      boosts_unrestrict = NULL,
      emojiset = NULL,
      bot_verification = NULL,
      stargifts_count = NULL,
      send_paid_messages_stars = NULL,
      main_tab = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChannelFull$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChannelFull$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChannelFull`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `about`:

  Field.

- `read_inbox_max_id`:

  Field.

- `read_outbox_max_id`:

  Field.

- `unread_count`:

  Field.

- `chat_photo`:

  Field.

- `notify_settings`:

  Field.

- `bot_info`:

  Field.

- `pts`:

  Field.

- `can_view_participants`:

  Field.

- `can_set_username`:

  Field.

- `can_set_stickers`:

  Field.

- `hidden_prehistory`:

  Field.

- `can_set_location`:

  Field.

- `has_scheduled`:

  Field.

- `can_view_stats`:

  Field.

- `blocked`:

  Field.

- `can_delete_channel`:

  Field.

- `antispam`:

  Field.

- `participants_hidden`:

  Field.

- `translations_disabled`:

  Field.

- `stories_pinned_available`:

  Field.

- `view_forum_as_messages`:

  Field.

- `restricted_sponsored`:

  Field.

- `can_view_revenue`:

  Field.

- `paid_media_allowed`:

  Field.

- `can_view_stars_revenue`:

  Field.

- `paid_reactions_available`:

  Field.

- `stargifts_available`:

  Field.

- `paid_messages_available`:

  Field.

- `participants_count`:

  Field.

- `admins_count`:

  Field.

- `kicked_count`:

  Field.

- `banned_count`:

  Field.

- `online_count`:

  Field.

- `exported_invite`:

  Field.

- `migrated_from_chat_id`:

  Field.

- `migrated_from_max_id`:

  Field.

- `pinned_msg_id`:

  Field.

- `stickerset`:

  Field.

- `available_min_id`:

  Field.

- `folder_id`:

  Field.

- `linked_chat_id`:

  Field.

- `location`:

  Field.

- `slowmode_seconds`:

  Field.

- `slowmode_next_send_date`:

  Field.

- `stats_dc`:

  Field.

- `call`:

  Field.

- `ttl_period`:

  Field.

- `pending_suggestions`:

  Field.

- `groupcall_default_join_as`:

  Field.

- `theme_emoticon`:

  Field.

- `requests_pending`:

  Field.

- `recent_requesters`:

  Field.

- `default_send_as`:

  Field.

- `available_reactions`:

  Field.

- `reactions_limit`:

  Field.

- `stories`:

  Field.

- `wallpaper`:

  Field.

- `boosts_applied`:

  Field.

- `boosts_unrestrict`:

  Field.

- `emojiset`:

  Field.

- `bot_verification`:

  Field.

- `stargifts_count`:

  Field.

- `send_paid_messages_stars`:

  Field.

- `main_tab`:

  Field.

## Methods

### Public methods

- [`ChannelFull$new()`](#method-ChannelFull-new)

- [`ChannelFull$to_dict()`](#method-ChannelFull-to_dict)

- [`ChannelFull$clone()`](#method-ChannelFull-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$from_reader()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-from_reader)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    ChannelFull$new(
      id,
      about,
      read_inbox_max_id,
      read_outbox_max_id,
      unread_count,
      chat_photo,
      notify_settings,
      bot_info,
      pts,
      can_view_participants = NULL,
      can_set_username = NULL,
      can_set_stickers = NULL,
      hidden_prehistory = NULL,
      can_set_location = NULL,
      has_scheduled = NULL,
      can_view_stats = NULL,
      blocked = NULL,
      can_delete_channel = NULL,
      antispam = NULL,
      participants_hidden = NULL,
      translations_disabled = NULL,
      stories_pinned_available = NULL,
      view_forum_as_messages = NULL,
      restricted_sponsored = NULL,
      can_view_revenue = NULL,
      paid_media_allowed = NULL,
      can_view_stars_revenue = NULL,
      paid_reactions_available = NULL,
      stargifts_available = NULL,
      paid_messages_available = NULL,
      participants_count = NULL,
      admins_count = NULL,
      kicked_count = NULL,
      banned_count = NULL,
      online_count = NULL,
      exported_invite = NULL,
      migrated_from_chat_id = NULL,
      migrated_from_max_id = NULL,
      pinned_msg_id = NULL,
      stickerset = NULL,
      available_min_id = NULL,
      folder_id = NULL,
      linked_chat_id = NULL,
      location = NULL,
      slowmode_seconds = NULL,
      slowmode_next_send_date = NULL,
      stats_dc = NULL,
      call = NULL,
      ttl_period = NULL,
      pending_suggestions = NULL,
      groupcall_default_join_as = NULL,
      theme_emoticon = NULL,
      requests_pending = NULL,
      recent_requesters = NULL,
      default_send_as = NULL,
      available_reactions = NULL,
      reactions_limit = NULL,
      stories = NULL,
      wallpaper = NULL,
      boosts_applied = NULL,
      boosts_unrestrict = NULL,
      emojiset = NULL,
      bot_verification = NULL,
      stargifts_count = NULL,
      send_paid_messages_stars = NULL,
      main_tab = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChannelFull$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChannelFull$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
