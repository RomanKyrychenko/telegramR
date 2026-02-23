# Channel

Telegram API type Channel

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Channel`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `title`:

  Field.

- `photo`:

  Field.

- `date`:

  Field.

- `creator`:

  Field.

- `left`:

  Field.

- `broadcast`:

  Field.

- `verified`:

  Field.

- `megagroup`:

  Field.

- `restricted`:

  Field.

- `signatures`:

  Field.

- `min`:

  Field.

- `scam`:

  Field.

- `has_link`:

  Field.

- `has_geo`:

  Field.

- `slowmode_enabled`:

  Field.

- `call_active`:

  Field.

- `call_not_empty`:

  Field.

- `fake`:

  Field.

- `gigagroup`:

  Field.

- `noforwards`:

  Field.

- `join_to_send`:

  Field.

- `join_request`:

  Field.

- `forum`:

  Field.

- `stories_hidden`:

  Field.

- `stories_hidden_min`:

  Field.

- `stories_unavailable`:

  Field.

- `signature_profiles`:

  Field.

- `autotranslation`:

  Field.

- `broadcast_messages_allowed`:

  Field.

- `monoforum`:

  Field.

- `forum_tabs`:

  Field.

- `access_hash`:

  Field.

- `username`:

  Field.

- `restriction_reason`:

  Field.

- `admin_rights`:

  Field.

- `banned_rights`:

  Field.

- `default_banned_rights`:

  Field.

- `participants_count`:

  Field.

- `usernames`:

  Field.

- `stories_max_id`:

  Field.

- `color`:

  Field.

- `profile_color`:

  Field.

- `emoji_status`:

  Field.

- `level`:

  Field.

- `subscription_until_date`:

  Field.

- `bot_verification_icon`:

  Field.

- `send_paid_messages_stars`:

  Field.

- `linked_monoforum_id`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`Channel$new()`](#method-Channel-new)

- [`Channel$to_dict()`](#method-Channel-to_dict)

- [`Channel$bytes()`](#method-Channel-bytes)

- [`Channel$clone()`](#method-Channel-clone)

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

    Channel$new(
      id,
      title,
      photo,
      date,
      creator = NULL,
      left = NULL,
      broadcast = NULL,
      verified = NULL,
      megagroup = NULL,
      restricted = NULL,
      signatures = NULL,
      min = NULL,
      scam = NULL,
      has_link = NULL,
      has_geo = NULL,
      slowmode_enabled = NULL,
      call_active = NULL,
      call_not_empty = NULL,
      fake = NULL,
      gigagroup = NULL,
      noforwards = NULL,
      join_to_send = NULL,
      join_request = NULL,
      forum = NULL,
      stories_hidden = NULL,
      stories_hidden_min = NULL,
      stories_unavailable = NULL,
      signature_profiles = NULL,
      autotranslation = NULL,
      broadcast_messages_allowed = NULL,
      monoforum = NULL,
      forum_tabs = NULL,
      access_hash = NULL,
      username = NULL,
      restriction_reason = NULL,
      admin_rights = NULL,
      banned_rights = NULL,
      default_banned_rights = NULL,
      participants_count = NULL,
      usernames = NULL,
      stories_max_id = NULL,
      color = NULL,
      profile_color = NULL,
      emoji_status = NULL,
      level = NULL,
      subscription_until_date = NULL,
      bot_verification_icon = NULL,
      send_paid_messages_stars = NULL,
      linked_monoforum_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    Channel$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    Channel$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Channel$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
