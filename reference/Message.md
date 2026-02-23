# Message

Telegram API type Message

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Message`

## Public fields

- `id`:

  Field.

- `peer_id`:

  Field.

- `date`:

  Field.

- `message`:

  Field.

- `out`:

  Field.

- `mentioned`:

  Field.

- `media_unread`:

  Field.

- `silent`:

  Field.

- `post`:

  Field.

- `from_scheduled`:

  Field.

- `legacy`:

  Field.

- `edit_hide`:

  Field.

- `pinned`:

  Field.

- `noforwards`:

  Field.

- `invert_media`:

  Field.

- `offline`:

  Field.

- `video_processing_pending`:

  Field.

- `paid_suggested_post_stars`:

  Field.

- `paid_suggested_post_ton`:

  Field.

- `from_id`:

  Field.

- `from_boosts_applied`:

  Field.

- `saved_peer_id`:

  Field.

- `fwd_from`:

  Field.

- `via_bot_id`:

  Field.

- `via_business_bot_id`:

  Field.

- `reply_to`:

  Field.

- `media`:

  Field.

- `reply_markup`:

  Field.

- `entities`:

  Field.

- `views`:

  Field.

- `forwards`:

  Field.

- `replies`:

  Field.

- `edit_date`:

  Field.

- `post_author`:

  Field.

- `grouped_id`:

  Field.

- `reactions`:

  Field.

- `restriction_reason`:

  Field.

- `ttl_period`:

  Field.

- `quick_reply_shortcut_id`:

  Field.

- `effect`:

  Field.

- `factcheck`:

  Field.

- `report_delivery_until_date`:

  Field.

- `paid_message_stars`:

  Field.

- `suggested_post`:

  Field.

## Methods

### Public methods

- [`Message$new()`](#method-Message-new)

- [`Message$to_dict()`](#method-Message-to_dict)

- [`Message$bytes()`](#method-Message-bytes)

- [`Message$clone()`](#method-Message-clone)

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

    Message$new(
      id,
      peer_id,
      date,
      message,
      out = NULL,
      mentioned = NULL,
      media_unread = NULL,
      silent = NULL,
      post = NULL,
      from_scheduled = NULL,
      legacy = NULL,
      edit_hide = NULL,
      pinned = NULL,
      noforwards = NULL,
      invert_media = NULL,
      offline = NULL,
      video_processing_pending = NULL,
      paid_suggested_post_stars = NULL,
      paid_suggested_post_ton = NULL,
      from_id = NULL,
      from_boosts_applied = NULL,
      saved_peer_id = NULL,
      fwd_from = NULL,
      via_bot_id = NULL,
      via_business_bot_id = NULL,
      reply_to = NULL,
      media = NULL,
      reply_markup = NULL,
      entities = NULL,
      views = NULL,
      forwards = NULL,
      replies = NULL,
      edit_date = NULL,
      post_author = NULL,
      grouped_id = NULL,
      reactions = NULL,
      restriction_reason = NULL,
      ttl_period = NULL,
      quick_reply_shortcut_id = NULL,
      effect = NULL,
      factcheck = NULL,
      report_delivery_until_date = NULL,
      paid_message_stars = NULL,
      suggested_post = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    Message$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    Message$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Message$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
