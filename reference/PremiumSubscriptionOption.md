# PremiumSubscriptionOption

Telegram API type PremiumSubscriptionOption

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PremiumSubscriptionOption`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `months`:

  Field.

- `currency`:

  Field.

- `amount`:

  Field.

- `bot_url`:

  Field.

- `current`:

  Field.

- `can_purchase_upgrade`:

  Field.

- `transaction`:

  Field.

- `store_product`:

  Field.

## Methods

### Public methods

- [`PremiumSubscriptionOption$new()`](#method-PremiumSubscriptionOption-new)

- [`PremiumSubscriptionOption$to_dict()`](#method-PremiumSubscriptionOption-to_dict)

- [`PremiumSubscriptionOption$bytes()`](#method-PremiumSubscriptionOption-bytes)

- [`PremiumSubscriptionOption$clone()`](#method-PremiumSubscriptionOption-clone)

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

    PremiumSubscriptionOption$new(
      months = NULL,
      currency = NULL,
      amount = NULL,
      bot_url = NULL,
      current = NULL,
      can_purchase_upgrade = NULL,
      transaction = NULL,
      store_product = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PremiumSubscriptionOption$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PremiumSubscriptionOption$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PremiumSubscriptionOption$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
