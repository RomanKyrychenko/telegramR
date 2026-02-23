# EncryptedChat

Telegram API type EncryptedChat

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `EncryptedChat`

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

- `g_a_or_b`:

  Field.

- `key_fingerprint`:

  Field.

## Methods

### Public methods

- [`EncryptedChat$new()`](#method-EncryptedChat-new)

- [`EncryptedChat$to_list()`](#method-EncryptedChat-to_list)

- [`EncryptedChat$bytes()`](#method-EncryptedChat-bytes)

- [`EncryptedChat$clone()`](#method-EncryptedChat-clone)

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

    EncryptedChat$new(
      id,
      access_hash,
      date,
      admin_id,
      participant_id,
      g_a_or_b,
      key_fingerprint
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EncryptedChat$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    EncryptedChat$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EncryptedChat$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
