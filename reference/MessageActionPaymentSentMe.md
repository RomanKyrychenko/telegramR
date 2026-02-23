# MessageActionPaymentSentMe

Telegram API type MessageActionPaymentSentMe

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionPaymentSentMe`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `currency`:

  Field.

- `total_amount`:

  Field.

- `payload`:

  Field.

- `charge`:

  Field.

- `recurring_init`:

  Field.

- `recurring_used`:

  Field.

- `info`:

  Field.

- `shipping_option_id`:

  Field.

- `subscription_until_date`:

  Field.

## Methods

### Public methods

- [`MessageActionPaymentSentMe$new()`](#method-MessageActionPaymentSentMe-new)

- [`MessageActionPaymentSentMe$to_dict()`](#method-MessageActionPaymentSentMe-to_dict)

- [`MessageActionPaymentSentMe$bytes()`](#method-MessageActionPaymentSentMe-bytes)

- [`MessageActionPaymentSentMe$clone()`](#method-MessageActionPaymentSentMe-clone)

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

    MessageActionPaymentSentMe$new(
      currency,
      total_amount,
      payload,
      charge,
      recurring_init = NULL,
      recurring_used = NULL,
      info = NULL,
      shipping_option_id = NULL,
      subscription_until_date = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionPaymentSentMe$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionPaymentSentMe$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionPaymentSentMe$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
