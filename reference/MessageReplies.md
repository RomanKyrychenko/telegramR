# MessageReplies

Telegram API type MessageReplies

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageReplies`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `replies`:

  Field.

- `replies_pts`:

  Field.

- `comments`:

  Field.

- `recent_repliers`:

  Field.

- `channel_id`:

  Field.

- `max_id`:

  Field.

- `read_max_id`:

  Field.

## Methods

### Public methods

- [`MessageReplies$new()`](#method-MessageReplies-new)

- [`MessageReplies$to_dict()`](#method-MessageReplies-to_dict)

- [`MessageReplies$bytes()`](#method-MessageReplies-bytes)

- [`MessageReplies$clone()`](#method-MessageReplies-clone)

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

    MessageReplies$new(
      replies,
      replies_pts,
      comments = NULL,
      recent_repliers = NULL,
      channel_id = NULL,
      max_id = NULL,
      read_max_id = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageReplies$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageReplies$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageReplies$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
