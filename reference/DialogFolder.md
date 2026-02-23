# DialogFolder

Telegram API type DialogFolder

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `DialogFolder`

## Public fields

- `folder`:

  Field.

- `peer`:

  Field.

- `top_message`:

  Field.

- `unread_muted_peers_count`:

  Field.

- `unread_unmuted_peers_count`:

  Field.

- `unread_muted_messages_count`:

  Field.

- `unread_unmuted_messages_count`:

  Field.

- `pinned`:

  Field.

## Methods

### Public methods

- [`DialogFolder$new()`](#method-DialogFolder-new)

- [`DialogFolder$to_list()`](#method-DialogFolder-to_list)

- [`DialogFolder$bytes()`](#method-DialogFolder-bytes)

- [`DialogFolder$clone()`](#method-DialogFolder-clone)

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

    DialogFolder$new(
      folder,
      peer,
      top_message,
      unread_muted_peers_count,
      unread_unmuted_peers_count,
      unread_muted_messages_count,
      unread_unmuted_messages_count,
      pinned = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    DialogFolder$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    DialogFolder$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DialogFolder$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
