# SetMainProfileTabRequest

R6 class representing a SetMainProfileTabRequest.

Represents a request to set the main profile tab for a channel.

## Details

This class handles setting the main profile tab.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SetMainProfileTabRequest`

## Methods

### Public methods

- [`SetMainProfileTabRequest$new()`](#method-SetMainProfileTabRequest-new)

- [`SetMainProfileTabRequest$resolve()`](#method-SetMainProfileTabRequest-resolve)

- [`SetMainProfileTabRequest$to_dict()`](#method-SetMainProfileTabRequest-to_dict)

- [`SetMainProfileTabRequest$bytes()`](#method-SetMainProfileTabRequest-bytes)

- [`SetMainProfileTabRequest$clone()`](#method-SetMainProfileTabRequest-clone)

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

    SetMainProfileTabRequest$new(channel, tab)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SetMainProfileTabRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    SetMainProfileTabRequest$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    SetMainProfileTabRequest$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetMainProfileTabRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SetMainProfileTabRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `tab`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`SetMainProfileTabRequest$new()`](#method-SetMainProfileTabRequest-new)

- [`SetMainProfileTabRequest$resolve()`](#method-SetMainProfileTabRequest-resolve)

- [`SetMainProfileTabRequest$to_dict()`](#method-SetMainProfileTabRequest-to_dict)

- [`SetMainProfileTabRequest$bytes()`](#method-SetMainProfileTabRequest-bytes)

- [`SetMainProfileTabRequest$clone()`](#method-SetMainProfileTabRequest-clone)

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

Initialize the SetMainProfileTabRequest.

#### Usage

    SetMainProfileTabRequest$new(channel, tab)

#### Arguments

- `channel`:

  The input channel.

- `tab`:

  The profile tab.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    SetMainProfileTabRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SetMainProfileTabRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SetMainProfileTabRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetMainProfileTabRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
