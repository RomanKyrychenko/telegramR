# EncryptedChatRequested

Telegram API type EncryptedChatRequested

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `EncryptedChatRequested`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

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

- `g_a`:

  Field.

- `folder_id`:

  Field.

## Methods

### Public methods

- [`EncryptedChatRequested$new()`](#method-EncryptedChatRequested-new)

- [`EncryptedChatRequested$to_list()`](#method-EncryptedChatRequested-to_list)

- [`EncryptedChatRequested$bytes()`](#method-EncryptedChatRequested-bytes)

- [`EncryptedChatRequested$clone()`](#method-EncryptedChatRequested-clone)

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

    EncryptedChatRequested$new(
      id,
      access_hash,
      date,
      admin_id,
      participant_id,
      g_a,
      folder_id = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EncryptedChatRequested$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    EncryptedChatRequested$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EncryptedChatRequested$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
