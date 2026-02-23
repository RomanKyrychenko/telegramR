# UpdateColorRequest

R6 class representing an UpdateColorRequest.

Represents a request to update the color settings of a channel.

## Details

This class handles updating the color settings with optional profile
flag, color, and background emoji ID.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateColorRequest`

## Methods

### Public methods

- [`UpdateColorRequest$new()`](#method-UpdateColorRequest-new)

- [`UpdateColorRequest$resolve()`](#method-UpdateColorRequest-resolve)

- [`UpdateColorRequest$to_dict()`](#method-UpdateColorRequest-to_dict)

- [`UpdateColorRequest$bytes()`](#method-UpdateColorRequest-bytes)

- [`UpdateColorRequest$clone()`](#method-UpdateColorRequest-clone)

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

    UpdateColorRequest$new(
      channel,
      for_profile = NULL,
      color = NULL,
      background_emoji_id = NULL
    )

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    UpdateColorRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateColorRequest$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateColorRequest$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateColorRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateColorRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `for_profile`:

  Field.

- `color`:

  Field.

- `background_emoji_id`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`UpdateColorRequest$new()`](#method-UpdateColorRequest-new)

- [`UpdateColorRequest$resolve()`](#method-UpdateColorRequest-resolve)

- [`UpdateColorRequest$to_dict()`](#method-UpdateColorRequest-to_dict)

- [`UpdateColorRequest$bytes()`](#method-UpdateColorRequest-bytes)

- [`UpdateColorRequest$clone()`](#method-UpdateColorRequest-clone)

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

Initialize the UpdateColorRequest.

#### Usage

    UpdateColorRequest$new(
      channel,
      for_profile = NULL,
      color = NULL,
      background_emoji_id = NULL
    )

#### Arguments

- `channel`:

  The input channel.

- `for_profile`:

  Whether the color is for the profile.

- `color`:

  The color value.

- `background_emoji_id`:

  The background emoji ID.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    UpdateColorRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    UpdateColorRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    UpdateColorRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateColorRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
