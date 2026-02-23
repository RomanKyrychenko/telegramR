# DialogFilter

Telegram API type DialogFilter

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `DialogFilter`

## Public fields

- `id`:

  Field.

- `title`:

  Field.

- `pinned_peers`:

  Field.

- `include_peers`:

  Field.

- `exclude_peers`:

  Field.

- `contacts`:

  Field.

- `non_contacts`:

  Field.

- `groups`:

  Field.

- `broadcasts`:

  Field.

- `bots`:

  Field.

- `exclude_muted`:

  Field.

- `exclude_read`:

  Field.

- `exclude_archived`:

  Field.

- `title_noanimate`:

  Field.

- `emoticon`:

  Field.

- `color`:

  Field.

## Methods

### Public methods

- [`DialogFilter$new()`](#method-DialogFilter-new)

- [`DialogFilter$to_list()`](#method-DialogFilter-to_list)

- [`DialogFilter$clone()`](#method-DialogFilter-clone)

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

    DialogFilter$new(
      id,
      title,
      pinned_peers,
      include_peers,
      exclude_peers,
      contacts = NULL,
      non_contacts = NULL,
      groups = NULL,
      broadcasts = NULL,
      bots = NULL,
      exclude_muted = NULL,
      exclude_read = NULL,
      exclude_archived = NULL,
      title_noanimate = NULL,
      emoticon = NULL,
      color = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DialogFilter$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DialogFilter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
