# ExportInvoiceRequest

Represents a request to export an invoice. Inherits from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ExportInvoiceRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `invoice_media`:

  Field.

## Methods

### Public methods

- [`ExportInvoiceRequest$new()`](#method-ExportInvoiceRequest-new)

- [`ExportInvoiceRequest$resolve()`](#method-ExportInvoiceRequest-resolve)

- [`ExportInvoiceRequest$to_dict()`](#method-ExportInvoiceRequest-to_dict)

- [`ExportInvoiceRequest$bytes()`](#method-ExportInvoiceRequest-bytes)

- [`ExportInvoiceRequest$from_reader()`](#method-ExportInvoiceRequest-from_reader)

- [`ExportInvoiceRequest$clone()`](#method-ExportInvoiceRequest-clone)

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

------------------------------------------------------------------------

### Method `new()`

Initialize the ExportInvoiceRequest object.

#### Usage

    ExportInvoiceRequest$new(invoice_media)

#### Arguments

- `invoice_media`:

  The input media for the invoice (TypeInputMedia).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the invoice_media using client and utils.

#### Usage

    ExportInvoiceRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    ExportInvoiceRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ExportInvoiceRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    ExportInvoiceRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ExportInvoiceRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ExportInvoiceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
