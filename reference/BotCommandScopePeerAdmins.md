# BotCommandScopePeerAdmins

Telegram API type BotCommandScopePeerAdmins

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotCommandScopePeerAdmins`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

## Methods

### Public methods

- [`BotCommandScopePeerAdmins$new()`](#method-BotCommandScopePeerAdmins-new)

- [`BotCommandScopePeerAdmins$to_dict()`](#method-BotCommandScopePeerAdmins-to_dict)

- [`BotCommandScopePeerAdmins$bytes()`](#method-BotCommandScopePeerAdmins-bytes)

- [`BotCommandScopePeerAdmins$clone()`](#method-BotCommandScopePeerAdmins-clone)

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

Initializes the BotCommandScopePeerAdmins with the given parameters.

#### Usage

    BotCommandScopePeerAdmins$new(peer)

#### Arguments

- `peer`:

  A TLObject representing the peer.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotCommandScopePeerAdmins object to a list (dictionary).

#### Usage

    BotCommandScopePeerAdmins$to_dict()

#### Returns

A list representation of the BotCommandScopePeerAdmins object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotCommandScopePeerAdmins object to bytes.

#### Usage

    BotCommandScopePeerAdmins$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotCommandScopePeerAdmins object. Reads a BotCommandScopePeerAdmins
object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotCommandScopePeerAdmins$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
