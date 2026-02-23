# StarGift

Telegram API type StarGift

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `StarGift`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`StarGift$new()`](#method-StarGift-new)

- [`StarGift$to_dict()`](#method-StarGift-to_dict)

- [`StarGift$bytes()`](#method-StarGift-bytes)

- [`StarGift$clone()`](#method-StarGift-clone)

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

    StarGift$new(
      id,
      sticker,
      stars,
      convert_stars,
      limited = NULL,
      sold_out = NULL,
      birthday = NULL,
      require_premium = NULL,
      limited_per_user = NULL,
      availability_remains = NULL,
      availability_total = NULL,
      availability_resale = NULL,
      first_sale_date = NULL,
      last_sale_date = NULL,
      upgrade_stars = NULL,
      resell_min_stars = NULL,
      title = NULL,
      released_by = NULL,
      per_user_total = NULL,
      per_user_remains = NULL,
      locked_until_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    StarGift$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    StarGift$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StarGift$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
