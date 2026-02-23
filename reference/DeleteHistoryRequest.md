# DeleteHistoryRequest

Represents a request to delete the history of a channel.

Represents a request to delete history. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DeleteHistoryRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `max_id`:

  Field.

- `for_everyone`:

  Field.

- `class`:

  Field.

## Active bindings

- `channel`:

  Field.

- `max_id`:

  Field.

- `for_everyone`:

  Field.

- `class`:

  Field.

## Methods

### Public methods

- [`DeleteHistoryRequest$new()`](#method-DeleteHistoryRequest-new)

- [`DeleteHistoryRequest$resolve()`](#method-DeleteHistoryRequest-resolve)

- [`DeleteHistoryRequest$toDict()`](#method-DeleteHistoryRequest-toDict)

- [`DeleteHistoryRequest$bytes()`](#method-DeleteHistoryRequest-bytes)

- [`DeleteHistoryRequest$clone()`](#method-DeleteHistoryRequest-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    DeleteHistoryRequest$new(
      peer,
      maxId,
      justClear = NULL,
      revoke = NULL,
      minDate = NULL,
      maxDate = NULL
    )

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    DeleteHistoryRequest$resolve(client, utils)

------------------------------------------------------------------------

### Method `toDict()`

#### Usage

    DeleteHistoryRequest$toDict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    DeleteHistoryRequest$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteHistoryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DeleteHistoryRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`DeleteHistoryRequest$new()`](#method-DeleteHistoryRequest-new)

- [`DeleteHistoryRequest$resolve()`](#method-DeleteHistoryRequest-resolve)

- [`DeleteHistoryRequest$toDict()`](#method-DeleteHistoryRequest-toDict)

- [`DeleteHistoryRequest$bytes()`](#method-DeleteHistoryRequest-bytes)

- [`DeleteHistoryRequest$clone()`](#method-DeleteHistoryRequest-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the DeleteHistoryRequest object.

#### Usage

    DeleteHistoryRequest$new(
      peer,
      maxId,
      justClear = NULL,
      revoke = NULL,
      minDate = NULL,
      maxDate = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `maxId`:

  The maximum ID.

- `justClear`:

  Whether to just clear (optional).

- `revoke`:

  Whether to revoke (optional).

- `minDate`:

  The minimum date (optional).

- `maxDate`:

  The maximum date (optional).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    DeleteHistoryRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    DeleteHistoryRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    DeleteHistoryRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteHistoryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
