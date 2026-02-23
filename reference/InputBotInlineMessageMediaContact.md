# InputBotInlineMessageMediaContact

Telegram API type InputBotInlineMessageMediaContact

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBotInlineMessageMediaContact`

## Public fields

- `phone_number`:

  Field.

- `first_name`:

  Field.

- `last_name`:

  Field.

- `vcard`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`InputBotInlineMessageMediaContact$new()`](#method-InputBotInlineMessageMediaContact-new)

- [`InputBotInlineMessageMediaContact$to_list()`](#method-InputBotInlineMessageMediaContact-to_list)

- [`InputBotInlineMessageMediaContact$bytes()`](#method-InputBotInlineMessageMediaContact-bytes)

- [`InputBotInlineMessageMediaContact$clone()`](#method-InputBotInlineMessageMediaContact-clone)

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

    InputBotInlineMessageMediaContact$new(
      phone_number,
      first_name,
      last_name,
      vcard,
      reply_markup = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputBotInlineMessageMediaContact$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBotInlineMessageMediaContact$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBotInlineMessageMediaContact$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
