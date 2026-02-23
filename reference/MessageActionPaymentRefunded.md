# MessageActionPaymentRefunded

Telegram API type MessageActionPaymentRefunded

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionPaymentRefunded`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `currency`:

  Field.

- `total_amount`:

  Field.

- `charge`:

  Field.

- `payload`:

  Field.

## Methods

### Public methods

- [`MessageActionPaymentRefunded$new()`](#method-MessageActionPaymentRefunded-new)

- [`MessageActionPaymentRefunded$to_dict()`](#method-MessageActionPaymentRefunded-to_dict)

- [`MessageActionPaymentRefunded$bytes()`](#method-MessageActionPaymentRefunded-bytes)

- [`MessageActionPaymentRefunded$clone()`](#method-MessageActionPaymentRefunded-clone)

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

    MessageActionPaymentRefunded$new(
      peer,
      currency,
      total_amount,
      charge,
      payload = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionPaymentRefunded$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionPaymentRefunded$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionPaymentRefunded$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
