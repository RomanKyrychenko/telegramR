# ToggleStickerSetsRequest

Represents a request to toggle sticker sets. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleStickerSetsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`ToggleStickerSetsRequest$new()`](#method-ToggleStickerSetsRequest-new)

- [`ToggleStickerSetsRequest$to_dict()`](#method-ToggleStickerSetsRequest-to_dict)

- [`ToggleStickerSetsRequest$bytes()`](#method-ToggleStickerSetsRequest-bytes)

- [`ToggleStickerSetsRequest$clone()`](#method-ToggleStickerSetsRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the ToggleStickerSetsRequest object.

#### Usage

    ToggleStickerSetsRequest$new(
      stickersets,
      uninstall = NULL,
      archive = NULL,
      unarchive = NULL
    )

#### Arguments

- `stickersets`:

  The list of input sticker sets.

- `uninstall`:

  Optional uninstall flag.

- `archive`:

  Optional archive flag.

- `unarchive`:

  Optional unarchive flag.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    ToggleStickerSetsRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ToggleStickerSetsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleStickerSetsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
