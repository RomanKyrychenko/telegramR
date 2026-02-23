# User

Telegram API type User

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `User`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`User$new()`](#method-User-new)

- [`User$to_dict()`](#method-User-to_dict)

- [`User$bytes()`](#method-User-bytes)

- [`User$clone()`](#method-User-clone)

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

    User$new(
      id,
      is_self = NULL,
      contact = NULL,
      mutual_contact = NULL,
      deleted = NULL,
      bot = NULL,
      bot_chat_history = NULL,
      bot_nochats = NULL,
      verified = NULL,
      restricted = NULL,
      min = NULL,
      bot_inline_geo = NULL,
      support = NULL,
      scam = NULL,
      apply_min_photo = NULL,
      fake = NULL,
      bot_attach_menu = NULL,
      premium = NULL,
      attach_menu_enabled = NULL,
      bot_can_edit = NULL,
      close_friend = NULL,
      stories_hidden = NULL,
      stories_unavailable = NULL,
      contact_require_premium = NULL,
      bot_business = NULL,
      bot_has_main_app = NULL,
      access_hash = NULL,
      first_name = NULL,
      last_name = NULL,
      username = NULL,
      phone = NULL,
      photo = NULL,
      status = NULL,
      bot_info_version = NULL,
      restriction_reason = NULL,
      bot_inline_placeholder = NULL,
      lang_code = NULL,
      emoji_status = NULL,
      usernames = NULL,
      stories_max_id = NULL,
      color = NULL,
      profile_color = NULL,
      bot_active_users = NULL,
      bot_verification_icon = NULL,
      send_paid_messages_stars = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    User$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    User$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    User$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
