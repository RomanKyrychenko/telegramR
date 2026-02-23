# InputStorePaymentPremiumGiftCode

Telegram API type InputStorePaymentPremiumGiftCode

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputStorePaymentPremiumGiftCode`

## Public fields

- `users`:

  Field.

- `currency`:

  Field.

- `amount`:

  Field.

- `boost_peer`:

  Field.

- `message`:

  Field.

## Methods

### Public methods

- [`InputStorePaymentPremiumGiftCode$new()`](#method-InputStorePaymentPremiumGiftCode-new)

- [`InputStorePaymentPremiumGiftCode$to_dict()`](#method-InputStorePaymentPremiumGiftCode-to_dict)

- [`InputStorePaymentPremiumGiftCode$clone()`](#method-InputStorePaymentPremiumGiftCode-clone)

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

    InputStorePaymentPremiumGiftCode$new(
      users,
      currency,
      amount,
      boost_peer = NULL,
      message = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputStorePaymentPremiumGiftCode$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputStorePaymentPremiumGiftCode$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
