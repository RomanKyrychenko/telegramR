# BotInlineMessageMediaVenue

Telegram API type BotInlineMessageMediaVenue

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInlineMessageMediaVenue`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `geo`:

  Field.

- `title`:

  Field.

- `address`:

  Field.

- `provider`:

  Field.

- `venue_id`:

  Field.

- `venue_type`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`BotInlineMessageMediaVenue$new()`](#method-BotInlineMessageMediaVenue-new)

- [`BotInlineMessageMediaVenue$to_dict()`](#method-BotInlineMessageMediaVenue-to_dict)

- [`BotInlineMessageMediaVenue$bytes()`](#method-BotInlineMessageMediaVenue-bytes)

- [`BotInlineMessageMediaVenue$clone()`](#method-BotInlineMessageMediaVenue-clone)

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

Initializes the BotInlineMessageMediaVenue with the given parameters.

#### Usage

    BotInlineMessageMediaVenue$new(
      geo,
      title,
      address,
      provider,
      venue_id,
      venue_type,
      reply_markup = NULL
    )

#### Arguments

- `geo`:

  A TLObject representing the geo point.

- `title`:

  A string representing the title.

- `address`:

  A string representing the address.

- `provider`:

  A string representing the provider.

- `venue_id`:

  A string representing the venue ID.

- `venue_type`:

  A string representing the venue type.

- `reply_markup`:

  A TLObject representing the reply markup. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotInlineMessageMediaVenue object to a list (dictionary).

#### Usage

    BotInlineMessageMediaVenue$to_dict()

#### Returns

A list representation of the BotInlineMessageMediaVenue object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotInlineMessageMediaVenue object to bytes.

#### Usage

    BotInlineMessageMediaVenue$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotInlineMessageMediaVenue object. Reads a BotInlineMessageMediaVenue
object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInlineMessageMediaVenue$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
