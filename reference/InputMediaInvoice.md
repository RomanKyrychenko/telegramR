# InputMediaInvoice

Telegram API type InputMediaInvoice

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputMediaInvoice`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `title`:

  Field.

- `description`:

  Field.

- `invoice`:

  Field.

- `payload`:

  Field.

- `providerdata`:

  Field.

- `photo`:

  Field.

- `provider`:

  Field.

- `start_param`:

  Field.

- `extended_media`:

  Field.

## Methods

### Public methods

- [`InputMediaInvoice$new()`](#method-InputMediaInvoice-new)

- [`InputMediaInvoice$to_dict()`](#method-InputMediaInvoice-to_dict)

- [`InputMediaInvoice$bytes()`](#method-InputMediaInvoice-bytes)

- [`InputMediaInvoice$clone()`](#method-InputMediaInvoice-clone)

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

    InputMediaInvoice$new(
      title,
      description,
      invoice,
      payload,
      providerdata,
      photo = NULL,
      provider = NULL,
      start_param = NULL,
      extended_media = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputMediaInvoice$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputMediaInvoice$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputMediaInvoice$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
