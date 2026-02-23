# Invoice

Telegram API type Invoice

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Invoice`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `currency`:

  Field.

- `prices`:

  Field.

- `test`:

  Field.

- `name_requested`:

  Field.

- `phone_requested`:

  Field.

- `email_requested`:

  Field.

- `shipping_address_requested`:

  Field.

- `flexible`:

  Field.

- `phone_to_provider`:

  Field.

- `email_to_provider`:

  Field.

- `recurring`:

  Field.

- `max_tip_amount`:

  Field.

- `suggested_tip_amounts`:

  Field.

- `terms_url`:

  Field.

- `subscription_period`:

  Field.

## Methods

### Public methods

- [`Invoice$new()`](#method-Invoice-new)

- [`Invoice$to_dict()`](#method-Invoice-to_dict)

- [`Invoice$bytes()`](#method-Invoice-bytes)

- [`Invoice$clone()`](#method-Invoice-clone)

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

    Invoice$new(
      currency,
      prices,
      test = NULL,
      name_requested = NULL,
      phone_requested = NULL,
      email_requested = NULL,
      shipping_address_requested = NULL,
      flexible = NULL,
      phone_to_provider = NULL,
      email_to_provider = NULL,
      recurring = NULL,
      max_tip_amount = NULL,
      suggested_tip_amounts = NULL,
      terms_url = NULL,
      subscription_period = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    Invoice$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    Invoice$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Invoice$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
