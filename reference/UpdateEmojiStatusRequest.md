# UpdateEmojiStatusRequest

R6 class representing an UpdateEmojiStatusRequest.

Represents a request to update the emoji status of a channel.

## Details

This class handles updating the emoji status.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateEmojiStatusRequest`

## Methods

### Public methods

- [`UpdateEmojiStatusRequest$new()`](#method-UpdateEmojiStatusRequest-new)

- [`UpdateEmojiStatusRequest$resolve()`](#method-UpdateEmojiStatusRequest-resolve)

- [`UpdateEmojiStatusRequest$to_dict()`](#method-UpdateEmojiStatusRequest-to_dict)

- [`UpdateEmojiStatusRequest$bytes()`](#method-UpdateEmojiStatusRequest-bytes)

- [`UpdateEmojiStatusRequest$clone()`](#method-UpdateEmojiStatusRequest-clone)

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

#### Usage

    UpdateEmojiStatusRequest$new(channel, emoji_status)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    UpdateEmojiStatusRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateEmojiStatusRequest$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateEmojiStatusRequest$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateEmojiStatusRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateEmojiStatusRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `emoji_status`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`UpdateEmojiStatusRequest$new()`](#method-UpdateEmojiStatusRequest-new)

- [`UpdateEmojiStatusRequest$resolve()`](#method-UpdateEmojiStatusRequest-resolve)

- [`UpdateEmojiStatusRequest$to_dict()`](#method-UpdateEmojiStatusRequest-to_dict)

- [`UpdateEmojiStatusRequest$bytes()`](#method-UpdateEmojiStatusRequest-bytes)

- [`UpdateEmojiStatusRequest$clone()`](#method-UpdateEmojiStatusRequest-clone)

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

Initialize the UpdateEmojiStatusRequest.

#### Usage

    UpdateEmojiStatusRequest$new(channel, emoji_status)

#### Arguments

- `channel`:

  The input channel.

- `emoji_status`:

  The emoji status.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    UpdateEmojiStatusRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    UpdateEmojiStatusRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    UpdateEmojiStatusRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateEmojiStatusRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
