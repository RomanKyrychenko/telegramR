# EncryptedFile

Telegram API type EncryptedFile

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `EncryptedFile`

## Public fields

- `id`:

  Field.

- `access_hash`:

  Field.

- `size`:

  Field.

- `dc_id`:

  Field.

- `key_fingerprint`:

  Field.

## Methods

### Public methods

- [`EncryptedFile$new()`](#method-EncryptedFile-new)

- [`EncryptedFile$to_list()`](#method-EncryptedFile-to_list)

- [`EncryptedFile$bytes()`](#method-EncryptedFile-bytes)

- [`EncryptedFile$clone()`](#method-EncryptedFile-clone)

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

    EncryptedFile$new(id, access_hash, size, dc_id, key_fingerprint)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EncryptedFile$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    EncryptedFile$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EncryptedFile$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
