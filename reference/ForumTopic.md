# ForumTopic

Telegram API type ForumTopic

## Public fields

- `id`:

  Field.

- `date`:

  Field.

- `title`:

  Field.

- `icon_color`:

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

- `from_id`:

  Field.

- `notify_settings`:

  Field.

- `my`:

  Field.

- `closed`:

  Field.

- `pinned`:

  Field.

- `short`:

  Field.

- `hidden`:

  Field.

- `icon_emoji_id`:

  Field.

- `draft`:

  Field.

## Methods

### Public methods

- [`ForumTopic$new()`](#method-ForumTopic-new)

- [`ForumTopic$to_list()`](#method-ForumTopic-to_list)

- [`ForumTopic$clone()`](#method-ForumTopic-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    ForumTopic$new(
      id,
      date = NULL,
      title,
      icon_color,
      top_message,
      read_inbox_max_id,
      read_outbox_max_id,
      unread_count,
      unread_mentions_count,
      unread_reactions_count,
      from_id,
      notify_settings,
      my = NULL,
      closed = NULL,
      pinned = NULL,
      short = NULL,
      hidden = NULL,
      icon_emoji_id = NULL,
      draft = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ForumTopic$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ForumTopic$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
