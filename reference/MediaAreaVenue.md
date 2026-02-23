# MediaAreaVenue

Telegram API type MediaAreaVenue

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MediaAreaVenue`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `coordinates`:

  Field.

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

- [`MediaAreaVenue$new()`](#method-MediaAreaVenue-new)

- [`MediaAreaVenue$to_dict()`](#method-MediaAreaVenue-to_dict)

- [`MediaAreaVenue$bytes()`](#method-MediaAreaVenue-bytes)

- [`MediaAreaVenue$clone()`](#method-MediaAreaVenue-clone)

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

    MediaAreaVenue$new(
      coordinates,
      geo,
      title,
      address,
      provider,
      venue_id,
      venue_type
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MediaAreaVenue$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MediaAreaVenue$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MediaAreaVenue$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
