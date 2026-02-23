# StarGiftUnique

Telegram API type StarGiftUnique

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `StarGiftUnique`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`StarGiftUnique$new()`](#method-StarGiftUnique-new)

- [`StarGiftUnique$to_dict()`](#method-StarGiftUnique-to_dict)

- [`StarGiftUnique$bytes()`](#method-StarGiftUnique-bytes)

- [`StarGiftUnique$clone()`](#method-StarGiftUnique-clone)

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

    StarGiftUnique$new(
      id,
      gift_id,
      title,
      slug,
      num,
      attributes,
      availability_issued,
      availability_total,
      require_premium = NULL,
      resale_ton_only = NULL,
      theme_available = NULL,
      owner_id = NULL,
      owner_name = NULL,
      owner_address = NULL,
      gift_address = NULL,
      resell_amount = NULL,
      released_by = NULL,
      value_amount = NULL,
      value_currency = NULL,
      themepeer = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    StarGiftUnique$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    StarGiftUnique$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StarGiftUnique$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
