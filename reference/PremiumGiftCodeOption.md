# PremiumGiftCodeOption

Telegram API type PremiumGiftCodeOption

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PremiumGiftCodeOption`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `users`:

  Field.

- `months`:

  Field.

- `currency`:

  Field.

- `amount`:

  Field.

- `store_product`:

  Field.

- `store_quantity`:

  Field.

## Methods

### Public methods

- [`PremiumGiftCodeOption$new()`](#method-PremiumGiftCodeOption-new)

- [`PremiumGiftCodeOption$to_dict()`](#method-PremiumGiftCodeOption-to_dict)

- [`PremiumGiftCodeOption$bytes()`](#method-PremiumGiftCodeOption-bytes)

- [`PremiumGiftCodeOption$clone()`](#method-PremiumGiftCodeOption-clone)

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

    PremiumGiftCodeOption$new(
      users = NULL,
      months = NULL,
      currency = NULL,
      amount = NULL,
      store_product = NULL,
      store_quantity = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PremiumGiftCodeOption$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PremiumGiftCodeOption$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PremiumGiftCodeOption$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
