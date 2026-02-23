# DeleteStickerSetRequest

Telegram API type DeleteStickerSetRequest

## Details

DeleteStickerSetRequest R6 class

Represents a request to delete a sticker set.

## Methods

\- initialize(stickerset): create instance. - to_list(): returns a list
representation suitable for JSON/inspection. - to_bytes(): returns a raw
vector representing serialized bytes (TL-like). - from_reader(reader):
reads a request from a reader object and returns a new instance.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `stickerset`:

  Field.

## Methods

### Public methods

- [`DeleteStickerSetRequest$new()`](#method-DeleteStickerSetRequest-new)

- [`DeleteStickerSetRequest$to_list()`](#method-DeleteStickerSetRequest-to_list)

- [`DeleteStickerSetRequest$to_bytes()`](#method-DeleteStickerSetRequest-to_bytes)

- [`DeleteStickerSetRequest$from_reader()`](#method-DeleteStickerSetRequest-from_reader)

- [`DeleteStickerSetRequest$clone()`](#method-DeleteStickerSetRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a DeleteStickerSetRequest

#### Usage

    DeleteStickerSetRequest$new(stickerset)

#### Arguments

- `stickerset`:

  InputStickerSet (TL object or representation)

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (dictionary-like)

#### Usage

    DeleteStickerSetRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (simple TL-like approximation)

#### Usage

    DeleteStickerSetRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    DeleteStickerSetRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DeleteStickerSetRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
