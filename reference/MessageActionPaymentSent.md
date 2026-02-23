# MessageActionPaymentSent

Telegram API type MessageActionPaymentSent

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionPaymentSent`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `currency`:

  Field.

- `total_amount`:

  Field.

- `recurring_init`:

  Field.

- `recurring_used`:

  Field.

- `invoice_slug`:

  Field.

- `subscription_until_date`:

  Field.

## Methods

### Public methods

- [`MessageActionPaymentSent$new()`](#method-MessageActionPaymentSent-new)

- [`MessageActionPaymentSent$to_dict()`](#method-MessageActionPaymentSent-to_dict)

- [`MessageActionPaymentSent$bytes()`](#method-MessageActionPaymentSent-bytes)

- [`MessageActionPaymentSent$clone()`](#method-MessageActionPaymentSent-clone)

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

    MessageActionPaymentSent$new(
      currency,
      total_amount,
      recurring_init = NULL,
      recurring_used = NULL,
      invoice_slug = NULL,
      subscription_until_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionPaymentSent$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionPaymentSent$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionPaymentSent$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
