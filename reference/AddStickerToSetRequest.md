# AddStickerToSetRequest

Telegram API type AddStickerToSetRequest

## Details

AddStickerToSetRequest R6 class

Represents a request to add a sticker to a sticker set.

## Methods

\- initialize(stickerset, sticker): create instance. - resolve(client,
utils): resolve friendly references to TL inputs (optional helper). -
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

- `stickerset`:

  Field.

- `sticker`:

  Field.

## Methods

### Public methods

- [`AddStickerToSetRequest$new()`](#method-AddStickerToSetRequest-new)

- [`AddStickerToSetRequest$resolve()`](#method-AddStickerToSetRequest-resolve)

- [`AddStickerToSetRequest$to_list()`](#method-AddStickerToSetRequest-to_list)

- [`AddStickerToSetRequest$to_bytes()`](#method-AddStickerToSetRequest-to_bytes)

- [`AddStickerToSetRequest$from_reader()`](#method-AddStickerToSetRequest-from_reader)

- [`AddStickerToSetRequest$clone()`](#method-AddStickerToSetRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize AddStickerToSetRequest

#### Usage

    AddStickerToSetRequest$new(stickerset, sticker)

#### Arguments

- `stickerset`:

  InputStickerSet (TL object or representation)

- `sticker`:

  InputStickerSetItem (TL object or representation)

------------------------------------------------------------------------

### Method `resolve()`

Optionally resolve friendly inputs to TL input objects

#### Usage

    AddStickerToSetRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object (used for entity resolution if needed)

- `utils`:

  utilities object with helper conversions (may implement
  get_input_document / get_input_user)

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list

#### Usage

    AddStickerToSetRequest$to_list()

#### Returns

list representation

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (TL-like approximation)

#### Usage

    AddStickerToSetRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    AddStickerToSetRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AddStickerToSetRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
