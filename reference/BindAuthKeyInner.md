# BindAuthKeyInner

Telegram API type BindAuthKeyInner

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BindAuthKeyInner`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `nonce`:

  Field.

- `temp_auth_key_id`:

  Field.

- `perm_auth_key_id`:

  Field.

- `temp_session_id`:

  Field.

- `expires_at`:

  Field.

## Methods

### Public methods

- [`BindAuthKeyInner$new()`](#method-BindAuthKeyInner-new)

- [`BindAuthKeyInner$to_dict()`](#method-BindAuthKeyInner-to_dict)

- [`BindAuthKeyInner$bytes()`](#method-BindAuthKeyInner-bytes)

- [`BindAuthKeyInner$clone()`](#method-BindAuthKeyInner-clone)

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

Initializes the BindAuthKeyInner with the given parameters.

#### Usage

    BindAuthKeyInner$new(
      nonce,
      temp_auth_key_id,
      perm_auth_key_id,
      temp_session_id,
      expires_at = NULL
    )

#### Arguments

- `nonce`:

  An integer representing the nonce.

- `temp_auth_key_id`:

  An integer representing the temporary auth key ID.

- `perm_auth_key_id`:

  An integer representing the permanent auth key ID.

- `temp_session_id`:

  An integer representing the temporary session ID.

- `expires_at`:

  A datetime object representing when this expires. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BindAuthKeyInner object to a list (dictionary).

#### Usage

    BindAuthKeyInner$to_dict()

#### Returns

A list representation of the BindAuthKeyInner object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BindAuthKeyInner object to bytes.

#### Usage

    BindAuthKeyInner$bytes()

#### Returns

A raw vector representing the serialized bytes of the BindAuthKeyInner
object. Reads a BindAuthKeyInner object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BindAuthKeyInner$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
