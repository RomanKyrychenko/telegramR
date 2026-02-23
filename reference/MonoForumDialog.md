# MonoForumDialog

Telegram API type MonoForumDialog

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MonoForumDialog`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `top_message`:

  Field.

- `read_inbox_max_id`:

  Field.

- `read_outbox_max_id`:

  Field.

- `unread_count`:

  Field.

- `unread_reactions_count`:

  Field.

- `unread_mark`:

  Field.

- `nopaid_messages_exception`:

  Field.

- `draft`:

  Field.

## Methods

### Public methods

- [`MonoForumDialog$new()`](#method-MonoForumDialog-new)

- [`MonoForumDialog$to_dict()`](#method-MonoForumDialog-to_dict)

- [`MonoForumDialog$bytes()`](#method-MonoForumDialog-bytes)

- [`MonoForumDialog$clone()`](#method-MonoForumDialog-clone)

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

    MonoForumDialog$new(
      peer,
      top_message,
      read_inbox_max_id,
      read_outbox_max_id,
      unread_count,
      unread_reactions_count,
      unread_mark = NULL,
      nopaid_messages_exception = NULL,
      draft = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MonoForumDialog$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MonoForumDialog$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MonoForumDialog$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
