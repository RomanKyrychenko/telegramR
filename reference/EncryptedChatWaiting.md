# EncryptedChatWaiting

Telegram API type EncryptedChatWaiting

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `EncryptedChatWaiting`

## Public fields

- `id`:

  Field.

- `access_hash`:

  Field.

- `date`:

  Field.

- `admin_id`:

  Field.

- `participant_id`:

  Field.

## Methods

### Public methods

- [`EncryptedChatWaiting$new()`](#method-EncryptedChatWaiting-new)

- [`EncryptedChatWaiting$to_list()`](#method-EncryptedChatWaiting-to_list)

- [`EncryptedChatWaiting$bytes()`](#method-EncryptedChatWaiting-bytes)

- [`EncryptedChatWaiting$clone()`](#method-EncryptedChatWaiting-clone)

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

    EncryptedChatWaiting$new(id, access_hash, date, admin_id, participant_id)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EncryptedChatWaiting$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    EncryptedChatWaiting$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EncryptedChatWaiting$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
