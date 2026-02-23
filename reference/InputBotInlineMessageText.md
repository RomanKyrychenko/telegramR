# InputBotInlineMessageText

Telegram API type InputBotInlineMessageText

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBotInlineMessageText`

## Public fields

- `message`:

  Field.

- `no_webpage`:

  Field.

- `invert_media`:

  Field.

- `entities`:

  Field.

- `reply_markup`:

  Field.

## Methods

### Public methods

- [`InputBotInlineMessageText$new()`](#method-InputBotInlineMessageText-new)

- [`InputBotInlineMessageText$to_list()`](#method-InputBotInlineMessageText-to_list)

- [`InputBotInlineMessageText$bytes()`](#method-InputBotInlineMessageText-bytes)

- [`InputBotInlineMessageText$clone()`](#method-InputBotInlineMessageText-clone)

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

    InputBotInlineMessageText$new(
      message,
      no_webpage = NULL,
      invert_media = NULL,
      entities = NULL,
      reply_markup = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputBotInlineMessageText$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBotInlineMessageText$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBotInlineMessageText$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
