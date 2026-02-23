# UpgradeStarGiftRequest

Telegram API type UpgradeStarGiftRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UpgradeStarGiftRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `stargift`:

  Field.

- `keep_original_details`:

  Field.

## Methods

### Public methods

- [`UpgradeStarGiftRequest$new()`](#method-UpgradeStarGiftRequest-new)

- [`UpgradeStarGiftRequest$to_dict()`](#method-UpgradeStarGiftRequest-to_dict)

- [`UpgradeStarGiftRequest$bytes()`](#method-UpgradeStarGiftRequest-bytes)

- [`UpgradeStarGiftRequest$from_reader()`](#method-UpgradeStarGiftRequest-from_reader)

- [`UpgradeStarGiftRequest$clone()`](#method-UpgradeStarGiftRequest-clone)

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

Initialize the UpgradeStarGiftRequest object.

#### Usage

    UpgradeStarGiftRequest$new(stargift, keep_original_details = NULL)

#### Arguments

- `stargift`:

  The input saved star gift (TypeInputSavedStarGift).

- `keep_original_details`:

  Optional boolean flag to keep original details.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    UpgradeStarGiftRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    UpgradeStarGiftRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    UpgradeStarGiftRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of UpgradeStarGiftRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpgradeStarGiftRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
