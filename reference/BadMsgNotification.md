# BadMsgNotification

Telegram API type BadMsgNotification

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BadMsgNotification`

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

## Methods

### Public methods

- [`BadMsgNotification$new()`](#method-BadMsgNotification-new)

- [`BadMsgNotification$to_dict()`](#method-BadMsgNotification-to_dict)

- [`BadMsgNotification$bytes()`](#method-BadMsgNotification-bytes)

- [`BadMsgNotification$clone()`](#method-BadMsgNotification-clone)

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

Initializes the BadMsgNotification with the given parameters.

#### Usage

    BadMsgNotification$new(bad_msg_id, bad_msg_seqno, error_code)

#### Arguments

- `bad_msg_id`:

  An integer representing the bad message ID.

- `bad_msg_seqno`:

  An integer representing the bad message sequence number.

- `error_code`:

  An integer representing the error code.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BadMsgNotification object to a list (dictionary).

#### Usage

    BadMsgNotification$to_dict()

#### Returns

A list representation of the BadMsgNotification object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BadMsgNotification object to bytes.

#### Usage

    BadMsgNotification$bytes()

#### Returns

A raw vector representing the serialized bytes of the BadMsgNotification
object. Reads a BadMsgNotification object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BadMsgNotification$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
