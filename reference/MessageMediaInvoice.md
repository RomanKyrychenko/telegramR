# MessageMediaInvoice

Telegram API type MessageMediaInvoice

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageMediaInvoice`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `title`:

  Field.

- `description`:

  Field.

- `currency`:

  Field.

- `total_amount`:

  Field.

- `start_param`:

  Field.

- `shipping_address_requested`:

  Field.

- `test`:

  Field.

- `photo`:

  Field.

- `receipt_msg_id`:

  Field.

- `extended_media`:

  Field.

## Methods

### Public methods

- [`MessageMediaInvoice$new()`](#method-MessageMediaInvoice-new)

- [`MessageMediaInvoice$to_dict()`](#method-MessageMediaInvoice-to_dict)

- [`MessageMediaInvoice$bytes()`](#method-MessageMediaInvoice-bytes)

- [`MessageMediaInvoice$clone()`](#method-MessageMediaInvoice-clone)

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

    MessageMediaInvoice$new(
      title,
      description,
      currency,
      total_amount,
      start_param,
      shipping_address_requested = NULL,
      test = NULL,
      photo = NULL,
      receipt_msg_id = NULL,
      extended_media = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageMediaInvoice$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageMediaInvoice$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageMediaInvoice$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
