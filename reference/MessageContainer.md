# R6 Class Representing a MessageContainer

Represents a container for multiple Telegram API messages.

## Details

The \`MessageContainer\` class is used to group multiple Telegram API
messages together. It provides methods to initialize the container,
convert it to a dictionary representation, and read messages from a
binary reader.

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageContainer`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for MessageContainer (0x73f1f8dc).

- `SUBCLASS_OF_ID`:

  The subclass ID for MessageContainer.

- `messages`:

  A list of messages contained in the container.

## Methods

### Public methods

- [`MessageContainer$new()`](#method-MessageContainer-new)

- [`MessageContainer$to_dict()`](#method-MessageContainer-to_dict)

- [`MessageContainer$from_reader()`](#method-MessageContainer-from_reader)

- [`MessageContainer$clone()`](#method-MessageContainer-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

Initialize a new \`MessageContainer\` object.

#### Usage

    MessageContainer$new(messages = list())

#### Arguments

- `messages`:

  A list of messages to initialize the container with. Defaults to an
  empty list.

#### Returns

A new \`MessageContainer\` object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the \`MessageContainer\` object to a dictionary representation.

#### Usage

    MessageContainer$to_dict()

#### Returns

A list containing the fields of the \`MessageContainer\` object in
dictionary format.

------------------------------------------------------------------------

### Method `from_reader()`

Read and parse a \`MessageContainer\` object from a binary reader.

#### Usage

    MessageContainer$from_reader(reader)

#### Arguments

- `reader`:

  A binary reader object to read the messages from.

- `reader`:

  A binary reader object to read the messages from.

#### Returns

The updated \`MessageContainer\` object with the parsed messages.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageContainer$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
