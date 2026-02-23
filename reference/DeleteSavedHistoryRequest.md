# DeleteSavedHistoryRequest

Represents a request to delete saved history. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `DeleteSavedHistoryRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`DeleteSavedHistoryRequest$new()`](#method-DeleteSavedHistoryRequest-new)

- [`DeleteSavedHistoryRequest$resolve()`](#method-DeleteSavedHistoryRequest-resolve)

- [`DeleteSavedHistoryRequest$toDict()`](#method-DeleteSavedHistoryRequest-toDict)

- [`DeleteSavedHistoryRequest$bytes()`](#method-DeleteSavedHistoryRequest-bytes)

- [`DeleteSavedHistoryRequest$clone()`](#method-DeleteSavedHistoryRequest-clone)

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

Initialize the DeleteSavedHistoryRequest object.

#### Usage

    DeleteSavedHistoryRequest$new(
      peer,
      maxId,
      parentPeer = NULL,
      minDate = NULL,
      maxDate = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `maxId`:

  The maximum ID.

- `parentPeer`:

  The optional input peer.

- `minDate`:

  The optional minimum date.

- `maxDate`:

  The optional maximum date.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    DeleteSavedHistoryRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    DeleteSavedHistoryRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    DeleteSavedHistoryRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteSavedHistoryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
