# DocumentAttributeSticker

Telegram API type DocumentAttributeSticker

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `DocumentAttributeSticker`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `alt`:

  Field.

- `stickerset`:

  Field.

- `mask`:

  Field.

- `mask_coords`:

  Field.

## Methods

### Public methods

- [`DocumentAttributeSticker$new()`](#method-DocumentAttributeSticker-new)

- [`DocumentAttributeSticker$to_dict()`](#method-DocumentAttributeSticker-to_dict)

- [`DocumentAttributeSticker$bytes()`](#method-DocumentAttributeSticker-bytes)

- [`DocumentAttributeSticker$clone()`](#method-DocumentAttributeSticker-clone)

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

------------------------------------------------------------------------

### Method `new()`

#### Usage

    DocumentAttributeSticker$new(alt, stickerset, mask = NULL, mask_coords = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    DocumentAttributeSticker$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    DocumentAttributeSticker$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DocumentAttributeSticker$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
