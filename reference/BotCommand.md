# BotCommand

Telegram API type BotCommand

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotCommand`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `command`:

  Field.

- `description`:

  Field.

## Methods

### Public methods

- [`BotCommand$new()`](#method-BotCommand-new)

- [`BotCommand$to_dict()`](#method-BotCommand-to_dict)

- [`BotCommand$bytes()`](#method-BotCommand-bytes)

- [`BotCommand$clone()`](#method-BotCommand-clone)

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

Initializes the BotCommand with the given parameters.

#### Usage

    BotCommand$new(command, description)

#### Arguments

- `command`:

  A string representing the command.

- `description`:

  A string representing the description.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotCommand object to a list (dictionary).

#### Usage

    BotCommand$to_dict()

#### Returns

A list representation of the BotCommand object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotCommand object to bytes.

#### Usage

    BotCommand$bytes()

#### Returns

A raw vector representing the serialized bytes of the BotCommand object.
Reads a BotCommand object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotCommand$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
