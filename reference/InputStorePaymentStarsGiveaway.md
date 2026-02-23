# InputStorePaymentStarsGiveaway

Telegram API type InputStorePaymentStarsGiveaway

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputStorePaymentStarsGiveaway`

## Public fields

- `stars`:

  Field.

- `boost_peer`:

  Field.

- `until_date`:

  Field.

- `currency`:

  Field.

- `amount`:

  Field.

- `users`:

  Field.

- `only_new_subscribers`:

  Field.

- `winners_are_visible`:

  Field.

- `additional_peers`:

  Field.

- `countries_iso2`:

  Field.

- `prize_description`:

  Field.

- `random_id`:

  Field.

## Methods

### Public methods

- [`InputStorePaymentStarsGiveaway$new()`](#method-InputStorePaymentStarsGiveaway-new)

- [`InputStorePaymentStarsGiveaway$to_dict()`](#method-InputStorePaymentStarsGiveaway-to_dict)

- [`InputStorePaymentStarsGiveaway$bytes()`](#method-InputStorePaymentStarsGiveaway-bytes)

- [`InputStorePaymentStarsGiveaway$clone()`](#method-InputStorePaymentStarsGiveaway-clone)

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

    InputStorePaymentStarsGiveaway$new(
      stars,
      boost_peer,
      until_date,
      currency,
      amount,
      users,
      only_new_subscribers = NULL,
      winners_are_visible = NULL,
      additional_peers = NULL,
      countries_iso2 = NULL,
      prize_description = NULL,
      random_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputStorePaymentStarsGiveaway$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputStorePaymentStarsGiveaway$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputStorePaymentStarsGiveaway$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
