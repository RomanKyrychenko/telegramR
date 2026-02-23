# BotInlineMessageMediaInvoice

Telegram API type BotInlineMessageMediaInvoice

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotInlineMessageMediaInvoice`

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

- `shipping_address_requested`:

  Field.

- `test`:

  Field.

- `photo`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`BotInlineMessageMediaInvoice$new()`](#method-BotInlineMessageMediaInvoice-new)

- [`BotInlineMessageMediaInvoice$to_dict()`](#method-BotInlineMessageMediaInvoice-to_dict)

- [`BotInlineMessageMediaInvoice$bytes()`](#method-BotInlineMessageMediaInvoice-bytes)

- [`BotInlineMessageMediaInvoice$clone()`](#method-BotInlineMessageMediaInvoice-clone)

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

Initializes the BotInlineMessageMediaInvoice with the given parameters.

#### Usage

    BotInlineMessageMediaInvoice$new(
      title,
      description,
      currency,
      total_amount,
      shipping_address_requested = NULL,
      test = NULL,
      photo = NULL,
      reply_markup = NULL
    )

#### Arguments

- `title`:

  A string representing the title.

- `description`:

  A string representing the description.

- `currency`:

  A string representing the currency.

- `total_amount`:

  An integer representing the total amount.

- `shipping_address_requested`:

  A boolean indicating if shipping address is requested. Optional.

- `test`:

  A boolean indicating if it's a test. Optional.

- `photo`:

  A TLObject representing the photo. Optional.

- `reply_markup`:

  A TLObject representing the reply markup. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotInlineMessageMediaInvoice object to a list (dictionary).

#### Usage

    BotInlineMessageMediaInvoice$to_dict()

#### Returns

A list representation of the BotInlineMessageMediaInvoice object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotInlineMessageMediaInvoice object to bytes.

#### Usage

    BotInlineMessageMediaInvoice$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotInlineMessageMediaInvoice object. Reads a
BotInlineMessageMediaInvoice object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotInlineMessageMediaInvoice$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
