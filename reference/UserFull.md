# UserFull

Telegram API type UserFull

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UserFull`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UserFull$new()`](#method-UserFull-new)

- [`UserFull$to_dict()`](#method-UserFull-to_dict)

- [`UserFull$bytes()`](#method-UserFull-bytes)

- [`UserFull$clone()`](#method-UserFull-clone)

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

    UserFull$new(
      id,
      settings,
      notify_settings,
      common_chats_count,
      blocked = NULL,
      phone_calls_available = NULL,
      phone_calls_private = NULL,
      can_pin_message = NULL,
      has_scheduled = NULL,
      video_calls_available = NULL,
      voice_messages_forbidden = NULL,
      translations_disabled = NULL,
      stories_pinned_available = NULL,
      blocked_my_stories_from = NULL,
      wallpaper_overridden = NULL,
      contact_require_premium = NULL,
      read_dates_private = NULL,
      sponsored_enabled = NULL,
      can_view_revenue = NULL,
      bot_can_manage_emoji_status = NULL,
      display_gifts_button = NULL,
      about = NULL,
      personal_photo = NULL,
      profile_photo = NULL,
      fallback_photo = NULL,
      bot_info = NULL,
      pinned_msg_id = NULL,
      folder_id = NULL,
      ttl_period = NULL,
      theme = NULL,
      private_forward_name = NULL,
      bot_group_admin_rights = NULL,
      bot_broadcast_admin_rights = NULL,
      wallpaper = NULL,
      stories = NULL,
      business_work_hours = NULL,
      business_location = NULL,
      business_greeting_message = NULL,
      business_away_message = NULL,
      business_intro = NULL,
      birthday = NULL,
      personal_channel_id = NULL,
      personal_channel_message = NULL,
      stargifts_count = NULL,
      starref_program = NULL,
      bot_verification = NULL,
      send_paid_messages_stars = NULL,
      disallowed_gifts = NULL,
      stars_rating = NULL,
      stars_my_pending_rating = NULL,
      stars_my_pending_rating_date = NULL,
      main_tab = NULL,
      saved_music = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UserFull$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UserFull$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UserFull$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
