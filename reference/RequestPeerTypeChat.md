# RequestPeerTypeChat

Telegram API type RequestPeerTypeChat

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `RequestPeerTypeChat`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `creator`:

  Field.

- `bot_participant`:

  Field.

- `has_username`:

  Field.

- `forum`:

  Field.

- `user_admin_rights`:

  Field.

- `bot_admin_rights`:

  Field.

## Methods

### Public methods

- [`RequestPeerTypeChat$new()`](#method-RequestPeerTypeChat-new)

- [`RequestPeerTypeChat$to_dict()`](#method-RequestPeerTypeChat-to_dict)

- [`RequestPeerTypeChat$bytes()`](#method-RequestPeerTypeChat-bytes)

- [`RequestPeerTypeChat$clone()`](#method-RequestPeerTypeChat-clone)

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

    RequestPeerTypeChat$new(
      creator = NULL,
      bot_participant = NULL,
      has_username = NULL,
      forum = NULL,
      user_admin_rights = NULL,
      bot_admin_rights = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    RequestPeerTypeChat$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    RequestPeerTypeChat$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestPeerTypeChat$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
