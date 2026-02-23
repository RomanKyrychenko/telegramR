# RequestPeerTypeBroadcast

Telegram API type RequestPeerTypeBroadcast

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `RequestPeerTypeBroadcast`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `creator`:

  Field.

- `has_username`:

  Field.

- `user_admin_rights`:

  Field.

- `bot_admin_rights`:

  Field.

## Methods

### Public methods

- [`RequestPeerTypeBroadcast$new()`](#method-RequestPeerTypeBroadcast-new)

- [`RequestPeerTypeBroadcast$to_dict()`](#method-RequestPeerTypeBroadcast-to_dict)

- [`RequestPeerTypeBroadcast$bytes()`](#method-RequestPeerTypeBroadcast-bytes)

- [`RequestPeerTypeBroadcast$clone()`](#method-RequestPeerTypeBroadcast-clone)

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

    RequestPeerTypeBroadcast$new(
      creator = NULL,
      has_username = NULL,
      user_admin_rights = NULL,
      bot_admin_rights = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    RequestPeerTypeBroadcast$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    RequestPeerTypeBroadcast$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestPeerTypeBroadcast$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
