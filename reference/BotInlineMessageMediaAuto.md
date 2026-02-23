# BotInlineMessageMediaAuto

Telegram API type BotInlineMessageMediaAuto

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInlineMessageMediaAuto`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `message`:

  Field.

- `invert_media`:

  Field.

- `entities`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`BotInlineMessageMediaAuto$new()`](#method-BotInlineMessageMediaAuto-new)

- [`BotInlineMessageMediaAuto$to_dict()`](#method-BotInlineMessageMediaAuto-to_dict)

- [`BotInlineMessageMediaAuto$bytes()`](#method-BotInlineMessageMediaAuto-bytes)

- [`BotInlineMessageMediaAuto$clone()`](#method-BotInlineMessageMediaAuto-clone)

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

Initializes the BotInlineMessageMediaAuto with the given parameters.

#### Usage

    BotInlineMessageMediaAuto$new(
      message,
      invert_media = NULL,
      entities = NULL,
      reply_markup = NULL
    )

#### Arguments

- `message`:

  A string representing the message.

- `invert_media`:

  A boolean indicating if invert media. Optional.

- `entities`:

  A list of TLObjects representing entities. Optional.

- `reply_markup`:

  A TLObject representing the reply markup. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotInlineMessageMediaAuto object to a list (dictionary).

#### Usage

    BotInlineMessageMediaAuto$to_dict()

#### Returns

A list representation of the BotInlineMessageMediaAuto object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotInlineMessageMediaAuto object to bytes.

#### Usage

    BotInlineMessageMediaAuto$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotInlineMessageMediaAuto object. Reads a BotInlineMessageMediaAuto
object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInlineMessageMediaAuto$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
