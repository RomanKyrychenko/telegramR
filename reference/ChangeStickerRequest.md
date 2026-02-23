# ChangeStickerRequest

Telegram API type ChangeStickerRequest

## Details

ChangeStickerRequest R6 class

Represents a request to change sticker attributes (emoji, mask
coordinates, keywords).

## Methods

\- initialize(sticker, emoji = NULL, mask_coords = NULL, keywords =
NULL): create instance. - resolve(client, utils): resolve friendly
references to TL inputs (documents). - to_list(): returns a list
representation suitable for JSON/inspection. - to_bytes(): returns a raw
vector representing serialized bytes (TL-like). - from_reader(reader):
reads a request from a reader object and returns a new instance.

All methods are exported as part of the R6 object.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `sticker`:

  Field.

- `emoji`:

  Field.

- `mask_coords`:

  Field.

- `keywords`:

  Field.

## Methods

### Public methods

- [`ChangeStickerRequest$new()`](#method-ChangeStickerRequest-new)

- [`ChangeStickerRequest$resolve()`](#method-ChangeStickerRequest-resolve)

- [`ChangeStickerRequest$to_list()`](#method-ChangeStickerRequest-to_list)

- [`ChangeStickerRequest$to_bytes()`](#method-ChangeStickerRequest-to_bytes)

- [`ChangeStickerRequest$from_reader()`](#method-ChangeStickerRequest-from_reader)

- [`ChangeStickerRequest$clone()`](#method-ChangeStickerRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ChangeStickerRequest

#### Usage

    ChangeStickerRequest$new(
      sticker,
      emoji = NULL,
      mask_coords = NULL,
      keywords = NULL
    )

#### Arguments

- `sticker`:

  InputDocument (TL object or representation)

- `emoji`:

  optional character emoji string

- `mask_coords`:

  optional MaskCoords TL object (or raw representation)

- `keywords`:

  optional character keywords string

------------------------------------------------------------------------

### Method `resolve()`

Resolve friendly inputs to TL input objects

#### Usage

    ChangeStickerRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object (used for entity resolution if needed)

- `utils`:

  utilities object with helper conversions (must implement
  get_input_document)

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list

#### Usage

    ChangeStickerRequest$to_list()

#### Returns

list representation

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (TL-like approximation)

#### Usage

    ChangeStickerRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ChangeStickerRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChangeStickerRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
