# BotCommandScopePeer

Telegram API type BotCommandScopePeer

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotCommandScopePeer`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

## Methods

### Public methods

- [`BotCommandScopePeer$new()`](#method-BotCommandScopePeer-new)

- [`BotCommandScopePeer$to_dict()`](#method-BotCommandScopePeer-to_dict)

- [`BotCommandScopePeer$bytes()`](#method-BotCommandScopePeer-bytes)

- [`BotCommandScopePeer$clone()`](#method-BotCommandScopePeer-clone)

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

Initializes the BotCommandScopePeer with the given parameters.

#### Usage

    BotCommandScopePeer$new(peer)

#### Arguments

- `peer`:

  A TLObject representing the peer.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotCommandScopePeer object to a list (dictionary).

#### Usage

    BotCommandScopePeer$to_dict()

#### Returns

A list representation of the BotCommandScopePeer object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotCommandScopePeer object to bytes.

#### Usage

    BotCommandScopePeer$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotCommandScopePeer object. Reads a BotCommandScopePeer object from a
BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotCommandScopePeer$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
