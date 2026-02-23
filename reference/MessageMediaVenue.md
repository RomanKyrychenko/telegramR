# MessageMediaVenue

Telegram API type MessageMediaVenue

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaVenue`

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

## Methods

### Public methods

- [`MessageMediaVenue$new()`](#method-MessageMediaVenue-new)

- [`MessageMediaVenue$to_dict()`](#method-MessageMediaVenue-to_dict)

- [`MessageMediaVenue$bytes()`](#method-MessageMediaVenue-bytes)

- [`MessageMediaVenue$clone()`](#method-MessageMediaVenue-clone)

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

    MessageMediaVenue$new(geo, title, address, provider, venue_id, venue_type)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaVenue$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaVenue$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaVenue$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
