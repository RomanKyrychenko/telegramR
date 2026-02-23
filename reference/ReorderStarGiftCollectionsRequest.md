# ReorderStarGiftCollectionsRequest

Telegram API type ReorderStarGiftCollectionsRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ReorderStarGiftCollectionsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `order`:

  Field.

## Methods

### Public methods

- [`ReorderStarGiftCollectionsRequest$new()`](#method-ReorderStarGiftCollectionsRequest-new)

- [`ReorderStarGiftCollectionsRequest$resolve()`](#method-ReorderStarGiftCollectionsRequest-resolve)

- [`ReorderStarGiftCollectionsRequest$to_dict()`](#method-ReorderStarGiftCollectionsRequest-to_dict)

- [`ReorderStarGiftCollectionsRequest$bytes()`](#method-ReorderStarGiftCollectionsRequest-bytes)

- [`ReorderStarGiftCollectionsRequest$from_reader()`](#method-ReorderStarGiftCollectionsRequest-from_reader)

- [`ReorderStarGiftCollectionsRequest$clone()`](#method-ReorderStarGiftCollectionsRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the ReorderStarGiftCollectionsRequest object.

#### Usage

    ReorderStarGiftCollectionsRequest$new(peer, order)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `order`:

  The order list of integers.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    ReorderStarGiftCollectionsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    ReorderStarGiftCollectionsRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ReorderStarGiftCollectionsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    ReorderStarGiftCollectionsRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ReorderStarGiftCollectionsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReorderStarGiftCollectionsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
