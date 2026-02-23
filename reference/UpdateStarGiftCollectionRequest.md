# UpdateStarGiftCollectionRequest

Telegram API type UpdateStarGiftCollectionRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpdateStarGiftCollectionRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `collection_id`:

  Field.

- `title`:

  Field.

- `delete_stargift`:

  Field.

- `add_stargift`:

  Field.

- `order`:

  Field.

## Methods

### Public methods

- [`UpdateStarGiftCollectionRequest$new()`](#method-UpdateStarGiftCollectionRequest-new)

- [`UpdateStarGiftCollectionRequest$resolve()`](#method-UpdateStarGiftCollectionRequest-resolve)

- [`UpdateStarGiftCollectionRequest$to_dict()`](#method-UpdateStarGiftCollectionRequest-to_dict)

- [`UpdateStarGiftCollectionRequest$bytes()`](#method-UpdateStarGiftCollectionRequest-bytes)

- [`UpdateStarGiftCollectionRequest$from_reader()`](#method-UpdateStarGiftCollectionRequest-from_reader)

- [`UpdateStarGiftCollectionRequest$clone()`](#method-UpdateStarGiftCollectionRequest-clone)

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

Initialize the UpdateStarGiftCollectionRequest object.

#### Usage

    UpdateStarGiftCollectionRequest$new(
      peer,
      collection_id,
      title = NULL,
      delete_stargift = NULL,
      add_stargift = NULL,
      order = NULL
    )

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `collection_id`:

  The collection ID (integer).

- `title`:

  Optional title (string).

- `delete_stargift`:

  Optional list of star gifts to delete (list of
  TypeInputSavedStarGift).

- `add_stargift`:

  Optional list of star gifts to add (list of TypeInputSavedStarGift).

- `order`:

  Optional order of star gifts (list of TypeInputSavedStarGift).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    UpdateStarGiftCollectionRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    UpdateStarGiftCollectionRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    UpdateStarGiftCollectionRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    UpdateStarGiftCollectionRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpdateStarGiftCollectionRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateStarGiftCollectionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
