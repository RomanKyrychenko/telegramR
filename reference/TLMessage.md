# TLMessage

A class representing a Telegram Layer (TL) message. This class extends
the TLObject class and provides functionality to store and manipulate TL
message data.

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `TLMessage`

## Public fields

- `msg_id`:

  The message ID (numeric).

- `seq_no`:

  The sequence number (numeric).

- `obj`:

  The object representing the content of the message.

## Methods

### Public methods

- [`TLMessage$new()`](#method-TLMessage-new)

- [`TLMessage$to_dict()`](#method-TLMessage-to_dict)

- [`TLMessage$clone()`](#method-TLMessage-clone)

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

Initialize a new \`TLMessage\` object.

#### Usage

    TLMessage$new(msg_id, seq_no, obj)

#### Arguments

- `msg_id`:

  A numeric value for the message ID.

- `seq_no`:

  A numeric value for the sequence number.

- `obj`:

  An object representing the content of the message.

#### Returns

A new \`TLMessage\` object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the \`TLMessage\` object to a dictionary representation.

#### Usage

    TLMessage$to_dict()

#### Returns

A list containing the fields of the \`TLMessage\` object in dictionary
format.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TLMessage$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
