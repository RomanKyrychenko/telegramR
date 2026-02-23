# ReorderPinnedSavedDialogsRequest

Represents a request to reorder pinned saved dialogs. This class
inherits from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ReorderPinnedSavedDialogsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`ReorderPinnedSavedDialogsRequest$new()`](#method-ReorderPinnedSavedDialogsRequest-new)

- [`ReorderPinnedSavedDialogsRequest$resolve()`](#method-ReorderPinnedSavedDialogsRequest-resolve)

- [`ReorderPinnedSavedDialogsRequest$to_dict()`](#method-ReorderPinnedSavedDialogsRequest-to_dict)

- [`ReorderPinnedSavedDialogsRequest$bytes()`](#method-ReorderPinnedSavedDialogsRequest-bytes)

- [`ReorderPinnedSavedDialogsRequest$clone()`](#method-ReorderPinnedSavedDialogsRequest-clone)

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

Initialize the ReorderPinnedSavedDialogsRequest object.

#### Usage

    ReorderPinnedSavedDialogsRequest$new(order, force = NULL)

#### Arguments

- `order`:

  The list of input dialog peers.

- `force`:

  Optional force flag.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    ReorderPinnedSavedDialogsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    ReorderPinnedSavedDialogsRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ReorderPinnedSavedDialogsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReorderPinnedSavedDialogsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
