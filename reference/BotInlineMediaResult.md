# BotInlineMediaResult

Telegram API type BotInlineMediaResult

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInlineMediaResult`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `type`:

  Field.

- `send_message`:

  Field.

- `photo`:

  Field.

- `document`:

  Field.

- `title`:

  Field.

- `description`:

  Field.

## Methods

### Public methods

- [`BotInlineMediaResult$new()`](#method-BotInlineMediaResult-new)

- [`BotInlineMediaResult$to_dict()`](#method-BotInlineMediaResult-to_dict)

- [`BotInlineMediaResult$bytes()`](#method-BotInlineMediaResult-bytes)

- [`BotInlineMediaResult$clone()`](#method-BotInlineMediaResult-clone)

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

Initializes the BotInlineMediaResult with the given parameters.

#### Usage

    BotInlineMediaResult$new(
      id,
      type,
      send_message,
      photo = NULL,
      document = NULL,
      title = NULL,
      description = NULL
    )

#### Arguments

- `id`:

  A string representing the ID.

- `type`:

  A string representing the type.

- `send_message`:

  A TLObject representing the send message.

- `photo`:

  A TLObject representing the photo. Optional.

- `document`:

  A TLObject representing the document. Optional.

- `title`:

  A string representing the title. Optional.

- `description`:

  A string representing the description. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotInlineMediaResult object to a list (dictionary).

#### Usage

    BotInlineMediaResult$to_dict()

#### Returns

A list representation of the BotInlineMediaResult object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotInlineMediaResult object to bytes.

#### Usage

    BotInlineMediaResult$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotInlineMediaResult object. Reads a BotInlineMediaResult object from a
BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInlineMediaResult$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
