# InputUserFromMessage

Telegram API type InputUserFromMessage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputUserFromMessage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `msg_id`:

  Field.

- `user_id`:

  Field.

## Methods

### Public methods

- [`InputUserFromMessage$new()`](#method-InputUserFromMessage-new)

- [`InputUserFromMessage$to_dict()`](#method-InputUserFromMessage-to_dict)

- [`InputUserFromMessage$bytes()`](#method-InputUserFromMessage-bytes)

- [`InputUserFromMessage$clone()`](#method-InputUserFromMessage-clone)

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

    InputUserFromMessage$new(peer, msg_id, user_id)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputUserFromMessage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputUserFromMessage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputUserFromMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
