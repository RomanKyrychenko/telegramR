# ValidateRequestedInfoRequest

Telegram API type ValidateRequestedInfoRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ValidateRequestedInfoRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `invoice`:

  Field.

- `info`:

  Field.

- `save`:

  Field.

## Methods

### Public methods

- [`ValidateRequestedInfoRequest$new()`](#method-ValidateRequestedInfoRequest-new)

- [`ValidateRequestedInfoRequest$to_dict()`](#method-ValidateRequestedInfoRequest-to_dict)

- [`ValidateRequestedInfoRequest$bytes()`](#method-ValidateRequestedInfoRequest-bytes)

- [`ValidateRequestedInfoRequest$from_reader()`](#method-ValidateRequestedInfoRequest-from_reader)

- [`ValidateRequestedInfoRequest$clone()`](#method-ValidateRequestedInfoRequest-clone)

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

Initialize the ValidateRequestedInfoRequest object.

#### Usage

    ValidateRequestedInfoRequest$new(invoice, info, save = NULL)

#### Arguments

- `invoice`:

  The input invoice (TypeInputInvoice).

- `info`:

  The payment requested info (TypePaymentRequestedInfo).

- `save`:

  Optional boolean flag to save the info.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    ValidateRequestedInfoRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ValidateRequestedInfoRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    ValidateRequestedInfoRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ValidateRequestedInfoRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ValidateRequestedInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
