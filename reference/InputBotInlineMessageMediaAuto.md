# InputBotInlineMessageMediaAuto

Telegram API type InputBotInlineMessageMediaAuto

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBotInlineMessageMediaAuto`

## Public fields

- `message`:

  Field.

- `invert_media`:

  Field.

- `entities`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`InputBotInlineMessageMediaAuto$new()`](#method-InputBotInlineMessageMediaAuto-new)

- [`InputBotInlineMessageMediaAuto$to_list()`](#method-InputBotInlineMessageMediaAuto-to_list)

- [`InputBotInlineMessageMediaAuto$bytes()`](#method-InputBotInlineMessageMediaAuto-bytes)

- [`InputBotInlineMessageMediaAuto$clone()`](#method-InputBotInlineMessageMediaAuto-clone)

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

    InputBotInlineMessageMediaAuto$new(
      message,
      invert_media = NULL,
      entities = NULL,
      reply_markup = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputBotInlineMessageMediaAuto$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBotInlineMessageMediaAuto$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBotInlineMessageMediaAuto$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
