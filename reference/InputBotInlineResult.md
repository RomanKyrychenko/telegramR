# InputBotInlineResult

Telegram API type InputBotInlineResult

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBotInlineResult`

## Public fields

- `id`:

  Field.

- `type`:

  Field.

- `send_message`:

  Field.

- `title`:

  Field.

- `description`:

  Field.

- `url`:

  Field.

- `thumb`:

  Field.

- `content`:

  Field.

## Methods

### Public methods

- [`InputBotInlineResult$new()`](#method-InputBotInlineResult-new)

- [`InputBotInlineResult$to_list()`](#method-InputBotInlineResult-to_list)

- [`InputBotInlineResult$bytes()`](#method-InputBotInlineResult-bytes)

- [`InputBotInlineResult$clone()`](#method-InputBotInlineResult-clone)

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

    InputBotInlineResult$new(
      id,
      type,
      send_message,
      title = NULL,
      description = NULL,
      url = NULL,
      thumb = NULL,
      content = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputBotInlineResult$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBotInlineResult$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBotInlineResult$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
