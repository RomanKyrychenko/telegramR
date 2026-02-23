# ExportMessageLinkRequest

Represents a request to export a message link from a channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ExportMessageLinkRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `id`:

  Field.

- `grouped`:

  Field.

- `thread`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`ExportMessageLinkRequest$new()`](#method-ExportMessageLinkRequest-new)

- [`ExportMessageLinkRequest$resolve()`](#method-ExportMessageLinkRequest-resolve)

- [`ExportMessageLinkRequest$to_dict()`](#method-ExportMessageLinkRequest-to_dict)

- [`ExportMessageLinkRequest$bytes()`](#method-ExportMessageLinkRequest-bytes)

- [`ExportMessageLinkRequest$clone()`](#method-ExportMessageLinkRequest-clone)

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
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the ExportMessageLinkRequest.

#### Usage

    ExportMessageLinkRequest$new(channel, id, grouped = NULL, thread = NULL)

#### Arguments

- `channel`:

  The input channel.

- `id`:

  The message ID.

- `grouped`:

  Whether to include grouped messages.

- `thread`:

  Whether to include thread.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    ExportMessageLinkRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    ExportMessageLinkRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ExportMessageLinkRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ExportMessageLinkRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
