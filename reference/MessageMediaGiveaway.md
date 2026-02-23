# MessageMediaGiveaway

Telegram API type MessageMediaGiveaway

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaGiveaway`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channels`:

  Field.

- `quantity`:

  Field.

- `until_date`:

  Field.

- `only_new_subscribers`:

  Field.

- `winners_are_visible`:

  Field.

- `countries_iso2`:

  Field.

- `prize_description`:

  Field.

- `months`:

  Field.

- `stars`:

  Field.

## Methods

### Public methods

- [`MessageMediaGiveaway$new()`](#method-MessageMediaGiveaway-new)

- [`MessageMediaGiveaway$to_dict()`](#method-MessageMediaGiveaway-to_dict)

- [`MessageMediaGiveaway$bytes()`](#method-MessageMediaGiveaway-bytes)

- [`MessageMediaGiveaway$clone()`](#method-MessageMediaGiveaway-clone)

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

    MessageMediaGiveaway$new(
      channels,
      quantity,
      until_date = NULL,
      only_new_subscribers = NULL,
      winners_are_visible = NULL,
      countries_iso2 = NULL,
      prize_description = NULL,
      months = NULL,
      stars = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaGiveaway$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaGiveaway$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaGiveaway$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
