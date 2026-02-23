# InputStorePaymentStarsTopup

Telegram API type InputStorePaymentStarsTopup

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputStorePaymentStarsTopup`

## Public fields

- `stars`:

  Field.

- `currency`:

  Field.

- `amount`:

  Field.

- `spend_purpose_peer`:

  Field.

## Methods

### Public methods

- [`InputStorePaymentStarsTopup$new()`](#method-InputStorePaymentStarsTopup-new)

- [`InputStorePaymentStarsTopup$to_dict()`](#method-InputStorePaymentStarsTopup-to_dict)

- [`InputStorePaymentStarsTopup$bytes()`](#method-InputStorePaymentStarsTopup-bytes)

- [`InputStorePaymentStarsTopup$clone()`](#method-InputStorePaymentStarsTopup-clone)

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

    InputStorePaymentStarsTopup$new(
      stars,
      currency,
      amount,
      spend_purpose_peer = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputStorePaymentStarsTopup$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputStorePaymentStarsTopup$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputStorePaymentStarsTopup$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
