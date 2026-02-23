# BotInlineMessageMediaGeo

Telegram API type BotInlineMessageMediaGeo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInlineMessageMediaGeo`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `geo`:

  Field.

- `heading`:

  Field.

- `period`:

  Field.

- `proximity_notification_radius`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`BotInlineMessageMediaGeo$new()`](#method-BotInlineMessageMediaGeo-new)

- [`BotInlineMessageMediaGeo$to_dict()`](#method-BotInlineMessageMediaGeo-to_dict)

- [`BotInlineMessageMediaGeo$bytes()`](#method-BotInlineMessageMediaGeo-bytes)

- [`BotInlineMessageMediaGeo$clone()`](#method-BotInlineMessageMediaGeo-clone)

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

Initializes the BotInlineMessageMediaGeo with the given parameters.

#### Usage

    BotInlineMessageMediaGeo$new(
      geo,
      heading = NULL,
      period = NULL,
      proximity_notification_radius = NULL,
      reply_markup = NULL
    )

#### Arguments

- `geo`:

  A TLObject representing the geo point.

- `heading`:

  An integer representing the heading. Optional.

- `period`:

  An integer representing the period. Optional.

- `proximity_notification_radius`:

  An integer representing the proximity notification radius. Optional.

- `reply_markup`:

  A TLObject representing the reply markup. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotInlineMessageMediaGeo object to a list (dictionary).

#### Usage

    BotInlineMessageMediaGeo$to_dict()

#### Returns

A list representation of the BotInlineMessageMediaGeo object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotInlineMessageMediaGeo object to bytes.

#### Usage

    BotInlineMessageMediaGeo$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotInlineMessageMediaGeo object. Reads a BotInlineMessageMediaGeo object
from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInlineMessageMediaGeo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
