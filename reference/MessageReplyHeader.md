# MessageReplyHeader

Telegram API type MessageReplyHeader

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageReplyHeader`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `reply_to_scheduled`:

  Field.

- `forum_topic`:

  Field.

- `quote`:

  Field.

- `reply_to_msg_id`:

  Field.

- `reply_topeer_id`:

  Field.

- `reply_from`:

  Field.

- `reply_media`:

  Field.

- `reply_to_top_id`:

  Field.

- `quote_text`:

  Field.

- `quote_entities`:

  Field.

- `quote_offset`:

  Field.

- `todo_item_id`:

  Field.

## Methods

### Public methods

- [`MessageReplyHeader$new()`](#method-MessageReplyHeader-new)

- [`MessageReplyHeader$to_dict()`](#method-MessageReplyHeader-to_dict)

- [`MessageReplyHeader$bytes()`](#method-MessageReplyHeader-bytes)

- [`MessageReplyHeader$clone()`](#method-MessageReplyHeader-clone)

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

    MessageReplyHeader$new(
      reply_to_scheduled = NULL,
      forum_topic = NULL,
      quote = NULL,
      reply_to_msg_id = NULL,
      reply_topeer_id = NULL,
      reply_from = NULL,
      reply_media = NULL,
      reply_to_top_id = NULL,
      quote_text = NULL,
      quote_entities = NULL,
      quote_offset = NULL,
      todo_item_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageReplyHeader$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageReplyHeader$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageReplyHeader$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
