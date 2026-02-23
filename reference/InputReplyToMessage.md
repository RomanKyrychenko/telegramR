# InputReplyToMessage

Telegram API type InputReplyToMessage

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputReplyToMessage`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`InputReplyToMessage$new()`](#method-InputReplyToMessage-new)

- [`InputReplyToMessage$to_dict()`](#method-InputReplyToMessage-to_dict)

- [`InputReplyToMessage$bytes()`](#method-InputReplyToMessage-bytes)

- [`InputReplyToMessage$clone()`](#method-InputReplyToMessage-clone)

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

    InputReplyToMessage$new(
      reply_to_msg_id,
      top_msg_id = NULL,
      reply_topeer_id = NULL,
      quote_text = NULL,
      quote_entities = NULL,
      quote_offset = NULL,
      monoforumpeer_id = NULL,
      todo_item_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputReplyToMessage$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputReplyToMessage$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputReplyToMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
