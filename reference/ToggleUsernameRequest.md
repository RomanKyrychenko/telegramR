# ToggleUsernameRequest

R6 class representing a ToggleUsernameRequest.

Telegram API type ToggleUsernameRequest

Represents a request to toggle the active status of a username in a
channel.

## Details

This class handles toggling the active status of a username.

ToggleUsernameRequest R6 class

Represents the ToggleUsernameRequest TL request.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleUsernameRequest`

## Methods

### Public methods

- [`ToggleUsernameRequest$new()`](#method-ToggleUsernameRequest-new)

- [`ToggleUsernameRequest$resolve()`](#method-ToggleUsernameRequest-resolve)

- [`ToggleUsernameRequest$to_dict()`](#method-ToggleUsernameRequest-to_dict)

- [`ToggleUsernameRequest$bytes()`](#method-ToggleUsernameRequest-bytes)

- [`ToggleUsernameRequest$clone()`](#method-ToggleUsernameRequest-clone)

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

    ToggleUsernameRequest$new(channel, username, active)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    ToggleUsernameRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ToggleUsernameRequest$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ToggleUsernameRequest$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleUsernameRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleUsernameRequest`

## Public fields

- `bot`:

  Field.

- `username`:

  Field.

- `active`:

  Field.

## Active bindings

- `bot`:

  Field.

## Methods

### Public methods

- [`ToggleUsernameRequest$new()`](#method-ToggleUsernameRequest-new)

- [`ToggleUsernameRequest$resolve()`](#method-ToggleUsernameRequest-resolve)

- [`ToggleUsernameRequest$to_dict()`](#method-ToggleUsernameRequest-to_dict)

- [`ToggleUsernameRequest$bytes()`](#method-ToggleUsernameRequest-bytes)

- [`ToggleUsernameRequest$clone()`](#method-ToggleUsernameRequest-clone)

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

    ToggleUsernameRequest$new(channel, username, active)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    ToggleUsernameRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ToggleUsernameRequest$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ToggleUsernameRequest$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleUsernameRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleUsernameRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `username`:

  Field.

- `active`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`ToggleUsernameRequest$new()`](#method-ToggleUsernameRequest-new)

- [`ToggleUsernameRequest$resolve()`](#method-ToggleUsernameRequest-resolve)

- [`ToggleUsernameRequest$to_dict()`](#method-ToggleUsernameRequest-to_dict)

- [`ToggleUsernameRequest$bytes()`](#method-ToggleUsernameRequest-bytes)

- [`ToggleUsernameRequest$clone()`](#method-ToggleUsernameRequest-clone)

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

Initialize the ToggleUsernameRequest.

#### Usage

    ToggleUsernameRequest$new(channel, username, active)

#### Arguments

- `channel`:

  The input channel.

- `username`:

  The username.

- `active`:

  Whether the username is active.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    ToggleUsernameRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    ToggleUsernameRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ToggleUsernameRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleUsernameRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
