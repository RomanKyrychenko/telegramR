# ToggleStarGiftsPinnedToTopRequest

Telegram API type ToggleStarGiftsPinnedToTopRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleStarGiftsPinnedToTopRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `stargift`:

  Field.

## Methods

### Public methods

- [`ToggleStarGiftsPinnedToTopRequest$new()`](#method-ToggleStarGiftsPinnedToTopRequest-new)

- [`ToggleStarGiftsPinnedToTopRequest$resolve()`](#method-ToggleStarGiftsPinnedToTopRequest-resolve)

- [`ToggleStarGiftsPinnedToTopRequest$to_dict()`](#method-ToggleStarGiftsPinnedToTopRequest-to_dict)

- [`ToggleStarGiftsPinnedToTopRequest$bytes()`](#method-ToggleStarGiftsPinnedToTopRequest-bytes)

- [`ToggleStarGiftsPinnedToTopRequest$from_reader()`](#method-ToggleStarGiftsPinnedToTopRequest-from_reader)

- [`ToggleStarGiftsPinnedToTopRequest$clone()`](#method-ToggleStarGiftsPinnedToTopRequest-clone)

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

Initialize the ToggleStarGiftsPinnedToTopRequest object.

#### Usage

    ToggleStarGiftsPinnedToTopRequest$new(peer, stargift)

#### Arguments

- `peer`:

  The input peer (TypeInputPeer).

- `stargift`:

  List of input saved star gifts (list of TypeInputSavedStarGift).

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    ToggleStarGiftsPinnedToTopRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    ToggleStarGiftsPinnedToTopRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ToggleStarGiftsPinnedToTopRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    ToggleStarGiftsPinnedToTopRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ToggleStarGiftsPinnedToTopRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleStarGiftsPinnedToTopRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
