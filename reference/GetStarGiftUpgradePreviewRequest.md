# GetStarGiftUpgradePreviewRequest

Represents a request to get the star gift upgrade preview. Inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetStarGiftUpgradePreviewRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `gift_id`:

  Field.

## Methods

### Public methods

- [`GetStarGiftUpgradePreviewRequest$new()`](#method-GetStarGiftUpgradePreviewRequest-new)

- [`GetStarGiftUpgradePreviewRequest$to_dict()`](#method-GetStarGiftUpgradePreviewRequest-to_dict)

- [`GetStarGiftUpgradePreviewRequest$bytes()`](#method-GetStarGiftUpgradePreviewRequest-bytes)

- [`GetStarGiftUpgradePreviewRequest$from_reader()`](#method-GetStarGiftUpgradePreviewRequest-from_reader)

- [`GetStarGiftUpgradePreviewRequest$clone()`](#method-GetStarGiftUpgradePreviewRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the GetStarGiftUpgradePreviewRequest object.

#### Usage

    GetStarGiftUpgradePreviewRequest$new(gift_id)

#### Arguments

- `gift_id`:

  The gift ID (integer).

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    GetStarGiftUpgradePreviewRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetStarGiftUpgradePreviewRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    GetStarGiftUpgradePreviewRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of GetStarGiftUpgradePreviewRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetStarGiftUpgradePreviewRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
