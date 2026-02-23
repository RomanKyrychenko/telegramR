# DisallowedGiftsSettings

Telegram API type DisallowedGiftsSettings

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `DisallowedGiftsSettings`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `disallow_unlimited_stargifts`:

  Field.

- `disallow_limited_stargifts`:

  Field.

- `disallow_unique_stargifts`:

  Field.

- `disallow_premium_gifts`:

  Field.

## Methods

### Public methods

- [`DisallowedGiftsSettings$new()`](#method-DisallowedGiftsSettings-new)

- [`DisallowedGiftsSettings$to_list()`](#method-DisallowedGiftsSettings-to_list)

- [`DisallowedGiftsSettings$bytes()`](#method-DisallowedGiftsSettings-bytes)

- [`DisallowedGiftsSettings$clone()`](#method-DisallowedGiftsSettings-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    DisallowedGiftsSettings$new(
      disallow_unlimited_stargifts = NULL,
      disallow_limited_stargifts = NULL,
      disallow_unique_stargifts = NULL,
      disallow_premium_gifts = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DisallowedGiftsSettings$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    DisallowedGiftsSettings$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DisallowedGiftsSettings$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
