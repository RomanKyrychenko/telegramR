# SetStickerSetThumbRequest

Telegram API type SetStickerSetThumbRequest

## Details

SetStickerSetThumbRequest R6 class

Represents a request to set a thumbnail for a sticker set.

## Methods

\- initialize(stickerset, thumb = NULL, thumb_document_id = NULL):
create instance. - resolve(client, utils): resolves references (e.g.
ensure thumb is InputDocument). - to_list(): returns a list
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

- `thumb`:

  Field.

- `thumb_document_id`:

  Field.

## Methods

### Public methods

- [`SetStickerSetThumbRequest$new()`](#method-SetStickerSetThumbRequest-new)

- [`SetStickerSetThumbRequest$resolve()`](#method-SetStickerSetThumbRequest-resolve)

- [`SetStickerSetThumbRequest$to_list()`](#method-SetStickerSetThumbRequest-to_list)

- [`SetStickerSetThumbRequest$to_bytes()`](#method-SetStickerSetThumbRequest-to_bytes)

- [`SetStickerSetThumbRequest$from_reader()`](#method-SetStickerSetThumbRequest-from_reader)

- [`SetStickerSetThumbRequest$clone()`](#method-SetStickerSetThumbRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SetStickerSetThumbRequest

#### Usage

    SetStickerSetThumbRequest$new(
      stickerset,
      thumb = NULL,
      thumb_document_id = NULL
    )

#### Arguments

- `stickerset`:

  InputStickerSet (TL object or representation)

- `thumb`:

  Optional InputDocument (TL object or representation)

- `thumb_document_id`:

  Optional integer identifier for thumb document

------------------------------------------------------------------------

### Method `resolve()`

Resolve references (e.g. convert user-friendly inputs to TL inputs)

#### Usage

    SetStickerSetThumbRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object (used for entity resolution if needed)

- `utils`:

  utilities object with helper conversions (must implement
  get_input_document)

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (dictionary-like)

#### Usage

    SetStickerSetThumbRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (simple TL-like approximation)

#### Usage

    SetStickerSetThumbRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SetStickerSetThumbRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetStickerSetThumbRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
