# RenameStickerSetRequest

Telegram API type RenameStickerSetRequest

## Details

RenameStickerSetRequest R6 class

Represents a request to rename a sticker set.

## Methods

\- initialize(stickerset, title): create instance. - to_list(): returns
a list representation suitable for JSON/inspection. - to_bytes():
returns a raw vector representing serialized bytes (TL-like). -
from_reader(reader): reads a request from a reader object and returns a
new instance.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `stickerset`:

  Field.

- `title`:

  Field.

## Methods

### Public methods

- [`RenameStickerSetRequest$new()`](#method-RenameStickerSetRequest-new)

- [`RenameStickerSetRequest$to_list()`](#method-RenameStickerSetRequest-to_list)

- [`RenameStickerSetRequest$to_bytes()`](#method-RenameStickerSetRequest-to_bytes)

- [`RenameStickerSetRequest$from_reader()`](#method-RenameStickerSetRequest-from_reader)

- [`RenameStickerSetRequest$clone()`](#method-RenameStickerSetRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a RenameStickerSetRequest

#### Usage

    RenameStickerSetRequest$new(stickerset, title)

#### Arguments

- `stickerset`:

  InputStickerSet (TL object or representation)

- `title`:

  character Title string

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (dictionary-like)

#### Usage

    RenameStickerSetRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (simple TL-like approximation)

#### Usage

    RenameStickerSetRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    RenameStickerSetRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RenameStickerSetRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
