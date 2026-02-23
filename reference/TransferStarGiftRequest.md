# TransferStarGiftRequest

Telegram API type TransferStarGiftRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `TransferStarGiftRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `stargift`:

  Field.

- `to_id`:

  Field.

## Methods

### Public methods

- [`TransferStarGiftRequest$new()`](#method-TransferStarGiftRequest-new)

- [`TransferStarGiftRequest$resolve()`](#method-TransferStarGiftRequest-resolve)

- [`TransferStarGiftRequest$to_dict()`](#method-TransferStarGiftRequest-to_dict)

- [`TransferStarGiftRequest$bytes()`](#method-TransferStarGiftRequest-bytes)

- [`TransferStarGiftRequest$from_reader()`](#method-TransferStarGiftRequest-from_reader)

- [`TransferStarGiftRequest$clone()`](#method-TransferStarGiftRequest-clone)

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

Initialize the TransferStarGiftRequest object.

#### Usage

    TransferStarGiftRequest$new(stargift, to_id)

#### Arguments

- `stargift`:

  The input saved star gift (TypeInputSavedStarGift).

- `to_id`:

  The input peer to transfer to (TypeInputPeer).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the to_id using client and utils.

#### Usage

    TransferStarGiftRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    TransferStarGiftRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    TransferStarGiftRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    TransferStarGiftRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of TransferStarGiftRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TransferStarGiftRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
