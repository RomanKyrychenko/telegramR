# RequestedPeerUser

Telegram API type RequestedPeerUser

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `RequestedPeerUser`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `first_name`:

  Field.

- `last_name`:

  Field.

- `username`:

  Field.

- `photo`:

  Field.

## Methods

### Public methods

- [`RequestedPeerUser$new()`](#method-RequestedPeerUser-new)

- [`RequestedPeerUser$to_dict()`](#method-RequestedPeerUser-to_dict)

- [`RequestedPeerUser$bytes()`](#method-RequestedPeerUser-bytes)

- [`RequestedPeerUser$clone()`](#method-RequestedPeerUser-clone)

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

    RequestedPeerUser$new(
      user_id = NULL,
      first_name = NULL,
      last_name = NULL,
      username = NULL,
      photo = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    RequestedPeerUser$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    RequestedPeerUser$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestedPeerUser$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
