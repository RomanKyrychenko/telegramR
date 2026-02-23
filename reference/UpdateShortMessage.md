# UpdateShortMessage

Telegram API type UpdateShortMessage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdateShortMessage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdateShortMessage$new()`](#method-UpdateShortMessage-new)

- [`UpdateShortMessage$to_dict()`](#method-UpdateShortMessage-to_dict)

- [`UpdateShortMessage$bytes()`](#method-UpdateShortMessage-bytes)

- [`UpdateShortMessage$clone()`](#method-UpdateShortMessage-clone)

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

    UpdateShortMessage$new(
      id,
      user_id,
      message,
      pts,
      pts_count,
      date,
      out = NULL,
      mentioned = NULL,
      media_unread = NULL,
      silent = NULL,
      fwd_from = NULL,
      via_bot_id = NULL,
      reply_to = NULL,
      entities = NULL,
      ttl_period = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateShortMessage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateShortMessage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateShortMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
