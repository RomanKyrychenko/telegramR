# SendPaymentFormRequest

Telegram API type SendPaymentFormRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendPaymentFormRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `form_id`:

  Field.

- `invoice`:

  Field.

- `credentials`:

  Field.

- `requested_info_id`:

  Field.

- `shipping_option_id`:

  Field.

- `tip_amount`:

  Field.

## Methods

### Public methods

- [`SendPaymentFormRequest$new()`](#method-SendPaymentFormRequest-new)

- [`SendPaymentFormRequest$to_dict()`](#method-SendPaymentFormRequest-to_dict)

- [`SendPaymentFormRequest$bytes()`](#method-SendPaymentFormRequest-bytes)

- [`SendPaymentFormRequest$from_reader()`](#method-SendPaymentFormRequest-from_reader)

- [`SendPaymentFormRequest$clone()`](#method-SendPaymentFormRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the SendPaymentFormRequest object.

#### Usage

    SendPaymentFormRequest$new(
      form_id,
      invoice,
      credentials,
      requested_info_id = NULL,
      shipping_option_id = NULL,
      tip_amount = NULL
    )

#### Arguments

- `form_id`:

  The form ID (integer).

- `invoice`:

  The input invoice (TypeInputInvoice).

- `credentials`:

  The input payment credentials (TypeInputPaymentCredentials).

- `requested_info_id`:

  Optional requested info ID (string).

- `shipping_option_id`:

  Optional shipping option ID (string).

- `tip_amount`:

  Optional tip amount (integer).

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    SendPaymentFormRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SendPaymentFormRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    SendPaymentFormRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of SendPaymentFormRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendPaymentFormRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
