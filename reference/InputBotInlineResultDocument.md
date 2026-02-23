# InputBotInlineResultDocument

Telegram API type InputBotInlineResultDocument

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputBotInlineResultDocument`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `type`:

  Field.

- `document`:

  Field.

- `send_message`:

  Field.

- `title`:

  Field.

- `description`:

  Field.

## Methods

### Public methods

- [`InputBotInlineResultDocument$new()`](#method-InputBotInlineResultDocument-new)

- [`InputBotInlineResultDocument$to_list()`](#method-InputBotInlineResultDocument-to_list)

- [`InputBotInlineResultDocument$bytes()`](#method-InputBotInlineResultDocument-bytes)

- [`InputBotInlineResultDocument$clone()`](#method-InputBotInlineResultDocument-clone)

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

    InputBotInlineResultDocument$new(
      id,
      type,
      document,
      send_message,
      title = NULL,
      description = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InputBotInlineResultDocument$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputBotInlineResultDocument$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputBotInlineResultDocument$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
