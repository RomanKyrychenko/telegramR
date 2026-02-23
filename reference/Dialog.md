# Dialog

Telegram API type Dialog

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `Dialog`

## Public fields

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

- `unread_mentions_count`:

  Field.

- `unread_reactions_count`:

  Field.

- `notify_settings`:

  Field.

- `pinned`:

  Field.

- `unread_mark`:

  Field.

- `view_forum_as_messages`:

  Field.

- `pts`:

  Field.

- `draft`:

  Field.

- `folder_id`:

  Field.

- `ttl_period`:

  Field.

## Methods

### Public methods

- [`Dialog$new()`](#method-Dialog-new)

- [`Dialog$to_list()`](#method-Dialog-to_list)

- [`Dialog$clone()`](#method-Dialog-clone)

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

    Dialog$new(
      peer,
      top_message,
      read_inbox_max_id,
      read_outbox_max_id,
      unread_count,
      unread_mentions_count,
      unread_reactions_count,
      notify_settings,
      pinned = NULL,
      unread_mark = NULL,
      view_forum_as_messages = NULL,
      pts = NULL,
      draft = NULL,
      folder_id = NULL,
      ttl_period = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    Dialog$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Dialog$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
