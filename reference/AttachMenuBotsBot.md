# AttachMenuBotsBot

Telegram API type AttachMenuBotsBot

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AttachMenuBotsBot`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `bot`:

  Field.

- `users`:

  Field.

## Methods

### Public methods

- [`AttachMenuBotsBot$new()`](#method-AttachMenuBotsBot-new)

- [`AttachMenuBotsBot$to_dict()`](#method-AttachMenuBotsBot-to_dict)

- [`AttachMenuBotsBot$bytes()`](#method-AttachMenuBotsBot-bytes)

- [`AttachMenuBotsBot$clone()`](#method-AttachMenuBotsBot-clone)

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

Initializes the AttachMenuBotsBot with the given parameters.

#### Usage

    AttachMenuBotsBot$new(bot, users)

#### Arguments

- `bot`:

  A TypeAttachMenuBot object.

- `users`:

  A list of TypeUser objects.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AttachMenuBotsBot object to a list (dictionary).

#### Usage

    AttachMenuBotsBot$to_dict()

#### Returns

A list representation of the AttachMenuBotsBot object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AttachMenuBotsBot object to bytes.

#### Usage

    AttachMenuBotsBot$bytes()

#### Returns

A raw vector representing the serialized bytes of the AttachMenuBotsBot
object. Reads an AttachMenuBotsBot object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AttachMenuBotsBot$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
