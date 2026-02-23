# InputPeerChannel

Telegram API type InputPeerChannel

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputPeerChannel`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel_id`:

  Field.

- `access_hash`:

  Field.

## Methods

### Public methods

- [`InputPeerChannel$new()`](#method-InputPeerChannel-new)

- [`InputPeerChannel$to_dict()`](#method-InputPeerChannel-to_dict)

- [`InputPeerChannel$bytes()`](#method-InputPeerChannel-bytes)

- [`InputPeerChannel$clone()`](#method-InputPeerChannel-clone)

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

    InputPeerChannel$new(channel_id, access_hash)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputPeerChannel$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputPeerChannel$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputPeerChannel$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
