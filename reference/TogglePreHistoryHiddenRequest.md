# TogglePreHistoryHiddenRequest

Represents a request to toggle the hidden status of pre-history in a
channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `TogglePreHistoryHiddenRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `enabled`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`TogglePreHistoryHiddenRequest$new()`](#method-TogglePreHistoryHiddenRequest-new)

- [`TogglePreHistoryHiddenRequest$resolve()`](#method-TogglePreHistoryHiddenRequest-resolve)

- [`TogglePreHistoryHiddenRequest$to_dict()`](#method-TogglePreHistoryHiddenRequest-to_dict)

- [`TogglePreHistoryHiddenRequest$bytes()`](#method-TogglePreHistoryHiddenRequest-bytes)

- [`TogglePreHistoryHiddenRequest$clone()`](#method-TogglePreHistoryHiddenRequest-clone)

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

Initialize the TogglePreHistoryHiddenRequest.

#### Usage

    TogglePreHistoryHiddenRequest$new(channel, enabled)

#### Arguments

- `channel`:

  The input channel.

- `enabled`:

  Whether the feature is enabled.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    TogglePreHistoryHiddenRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    TogglePreHistoryHiddenRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    TogglePreHistoryHiddenRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TogglePreHistoryHiddenRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
