# GetSavedDialogsRequest

Represents a request to get saved dialogs. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetSavedDialogsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetSavedDialogsRequest$new()`](#method-GetSavedDialogsRequest-new)

- [`GetSavedDialogsRequest$resolve()`](#method-GetSavedDialogsRequest-resolve)

- [`GetSavedDialogsRequest$toDict()`](#method-GetSavedDialogsRequest-toDict)

- [`GetSavedDialogsRequest$bytes()`](#method-GetSavedDialogsRequest-bytes)

- [`GetSavedDialogsRequest$clone()`](#method-GetSavedDialogsRequest-clone)

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

Initialize the GetSavedDialogsRequest object.

#### Usage

    GetSavedDialogsRequest$new(
      offsetDate,
      offsetId,
      offsetPeer,
      limit,
      hash,
      excludePinned = NULL,
      parentPeer = NULL
    )

#### Arguments

- `offsetDate`:

  The offset date.

- `offsetId`:

  The offset ID.

- `offsetPeer`:

  The offset peer.

- `limit`:

  The limit.

- `hash`:

  The hash value.

- `excludePinned`:

  Whether to exclude pinned dialogs.

- `parentPeer`:

  Optional parent peer.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    GetSavedDialogsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    GetSavedDialogsRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetSavedDialogsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSavedDialogsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
