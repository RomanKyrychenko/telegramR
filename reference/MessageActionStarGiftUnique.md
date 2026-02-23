# MessageActionStarGiftUnique

Telegram API type MessageActionStarGiftUnique

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionStarGiftUnique`

## Public fields

- `gift`:

  Field.

- `upgrade`:

  Field.

- `transferred`:

  Field.

- `saved`:

  Field.

- `refunded`:

  Field.

- `prepaid_upgrade`:

  Field.

- `can_export_at`:

  Field.

- `transfer_stars`:

  Field.

- `from_id`:

  Field.

- `peer`:

  Field.

- `saved_id`:

  Field.

- `resale_amount`:

  Field.

- `can_transfer_at`:

  Field.

- `can_resell_at`:

  Field.

## Methods

### Public methods

- [`MessageActionStarGiftUnique$new()`](#method-MessageActionStarGiftUnique-new)

- [`MessageActionStarGiftUnique$to_dict()`](#method-MessageActionStarGiftUnique-to_dict)

- [`MessageActionStarGiftUnique$bytes()`](#method-MessageActionStarGiftUnique-bytes)

- [`MessageActionStarGiftUnique$clone()`](#method-MessageActionStarGiftUnique-clone)

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

    MessageActionStarGiftUnique$new(
      gift,
      upgrade = NULL,
      transferred = NULL,
      saved = NULL,
      refunded = NULL,
      prepaid_upgrade = NULL,
      can_export_at = NULL,
      transfer_stars = NULL,
      from_id = NULL,
      peer = NULL,
      saved_id = NULL,
      resale_amount = NULL,
      can_transfer_at = NULL,
      can_resell_at = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionStarGiftUnique$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionStarGiftUnique$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionStarGiftUnique$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
