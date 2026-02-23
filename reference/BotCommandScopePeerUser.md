# BotCommandScopePeerUser

Telegram API type BotCommandScopePeerUser

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotCommandScopePeerUser`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `user_id`:

  Field.

## Methods

### Public methods

- [`BotCommandScopePeerUser$new()`](#method-BotCommandScopePeerUser-new)

- [`BotCommandScopePeerUser$to_dict()`](#method-BotCommandScopePeerUser-to_dict)

- [`BotCommandScopePeerUser$bytes()`](#method-BotCommandScopePeerUser-bytes)

- [`BotCommandScopePeerUser$clone()`](#method-BotCommandScopePeerUser-clone)

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

Initializes the BotCommandScopePeerUser with the given parameters.

#### Usage

    BotCommandScopePeerUser$new(peer, user_id)

#### Arguments

- `peer`:

  A TLObject representing the peer.

- `user_id`:

  A TLObject representing the user ID.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotCommandScopePeerUser object to a list (dictionary).

#### Usage

    BotCommandScopePeerUser$to_dict()

#### Returns

A list representation of the BotCommandScopePeerUser object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotCommandScopePeerUser object to bytes.

#### Usage

    BotCommandScopePeerUser$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotCommandScopePeerUser object. Reads a BotCommandScopePeerUser object
from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotCommandScopePeerUser$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
