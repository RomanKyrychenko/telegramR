# DialogFilterChatlist

Telegram API type DialogFilterChatlist

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `DialogFilterChatlist`

## Public fields

- `id`:

  Field.

- `title`:

  Field.

- `pinned_peers`:

  Field.

- `include_peers`:

  Field.

- `has_my_invites`:

  Field.

- `title_noanimate`:

  Field.

- `emoticon`:

  Field.

- `color`:

  Field.

## Methods

### Public methods

- [`DialogFilterChatlist$new()`](#method-DialogFilterChatlist-new)

- [`DialogFilterChatlist$to_list()`](#method-DialogFilterChatlist-to_list)

- [`DialogFilterChatlist$clone()`](#method-DialogFilterChatlist-clone)

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

    DialogFilterChatlist$new(
      id,
      title,
      pinned_peers,
      include_peers,
      has_my_invites = NULL,
      title_noanimate = NULL,
      emoticon = NULL,
      color = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DialogFilterChatlist$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DialogFilterChatlist$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
