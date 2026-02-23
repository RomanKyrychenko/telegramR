# BadServerSalt

Telegram API type BadServerSalt

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BadServerSalt`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `bad_msg_id`:

  Field.

- `bad_msg_seqno`:

  Field.

- `error_code`:

  Field.

- `new_server_salt`:

  Field.

## Methods

### Public methods

- [`BadServerSalt$new()`](#method-BadServerSalt-new)

- [`BadServerSalt$to_dict()`](#method-BadServerSalt-to_dict)

- [`BadServerSalt$bytes()`](#method-BadServerSalt-bytes)

- [`BadServerSalt$clone()`](#method-BadServerSalt-clone)

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

Initializes the BadServerSalt with the given parameters.

#### Usage

    BadServerSalt$new(bad_msg_id, bad_msg_seqno, error_code, new_server_salt)

#### Arguments

- `bad_msg_id`:

  An integer representing the bad message ID.

- `bad_msg_seqno`:

  An integer representing the bad message sequence number.

- `error_code`:

  An integer representing the error code.

- `new_server_salt`:

  An integer representing the new server salt.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BadServerSalt object to a list (dictionary).

#### Usage

    BadServerSalt$to_dict()

#### Returns

A list representation of the BadServerSalt object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BadServerSalt object to bytes.

#### Usage

    BadServerSalt$bytes()

#### Returns

A raw vector representing the serialized bytes of the BadServerSalt
object. Reads a BadServerSalt object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BadServerSalt$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
