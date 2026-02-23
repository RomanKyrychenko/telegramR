# ChangeStickerPositionRequest

Telegram API type ChangeStickerPositionRequest

## Details

ChangeStickerPositionRequest R6 class

Represents a request to change a sticker's position within a sticker
set.

## Methods

\- initialize(sticker, position): create instance. - resolve(client,
utils): resolve friendly references to TL inputs (documents). -
to_list(): returns a list representation suitable for JSON/inspection. -
to_bytes(): returns a raw vector representing serialized bytes
(TL-like). - from_reader(reader): reads a request from a reader object
and returns a new instance.

All methods are exported as part of the R6 object.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `sticker`:

  Field.

- `position`:

  Field.

## Methods

### Public methods

- [`ChangeStickerPositionRequest$new()`](#method-ChangeStickerPositionRequest-new)

- [`ChangeStickerPositionRequest$resolve()`](#method-ChangeStickerPositionRequest-resolve)

- [`ChangeStickerPositionRequest$to_list()`](#method-ChangeStickerPositionRequest-to_list)

- [`ChangeStickerPositionRequest$to_bytes()`](#method-ChangeStickerPositionRequest-to_bytes)

- [`ChangeStickerPositionRequest$from_reader()`](#method-ChangeStickerPositionRequest-from_reader)

- [`ChangeStickerPositionRequest$clone()`](#method-ChangeStickerPositionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ChangeStickerPositionRequest

#### Usage

    ChangeStickerPositionRequest$new(sticker, position)

#### Arguments

- `sticker`:

  InputDocument (TL object or representation)

- `position`:

  integer new position

------------------------------------------------------------------------

### Method `resolve()`

Resolve friendly inputs to TL input objects

#### Usage

    ChangeStickerPositionRequest$resolve(client, utils)

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

    ChangeStickerPositionRequest$to_list()

#### Returns

list representation

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (TL-like approximation)

#### Usage

    ChangeStickerPositionRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ChangeStickerPositionRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChangeStickerPositionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
