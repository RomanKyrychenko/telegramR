# InputBotInlineMessageMediaInvoice

Telegram API type InputBotInlineMessageMediaInvoice

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBotInlineMessageMediaInvoice`

## Public fields

- `title`:

  Field.

- `description`:

  Field.

- `invoice`:

  Field.

- `payload`:

  Field.

- `provider`:

  Field.

- `provider_data`:

  Field.

- `photo`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`InputBotInlineMessageMediaInvoice$new()`](#method-InputBotInlineMessageMediaInvoice-new)

- [`InputBotInlineMessageMediaInvoice$to_list()`](#method-InputBotInlineMessageMediaInvoice-to_list)

- [`InputBotInlineMessageMediaInvoice$bytes()`](#method-InputBotInlineMessageMediaInvoice-bytes)

- [`InputBotInlineMessageMediaInvoice$clone()`](#method-InputBotInlineMessageMediaInvoice-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InputBotInlineMessageMediaInvoice$new(
      title,
      description,
      invoice,
      payload,
      provider,
      provider_data,
      photo = NULL,
      reply_markup = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputBotInlineMessageMediaInvoice$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBotInlineMessageMediaInvoice$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBotInlineMessageMediaInvoice$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
