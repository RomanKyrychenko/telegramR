# ReplaceStickerRequest

Telegram API type ReplaceStickerRequest

## Details

ReplaceStickerRequest R6 class

Represents a request to replace a sticker with a new sticker item.

## Methods

\- initialize(sticker, new_sticker): create instance. - resolve(client,
utils): resolves references (e.g. ensure sticker is InputDocument). -
to_list(): returns a list representation suitable for JSON/inspection. -
to_bytes(): returns a raw vector representing serialized bytes
(TL-like). - from_reader(reader): reads a request from a reader object
and returns a new instance.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `sticker`:

  Field.

- `new_sticker`:

  Field.

## Methods

### Public methods

- [`ReplaceStickerRequest$new()`](#method-ReplaceStickerRequest-new)

- [`ReplaceStickerRequest$resolve()`](#method-ReplaceStickerRequest-resolve)

- [`ReplaceStickerRequest$to_list()`](#method-ReplaceStickerRequest-to_list)

- [`ReplaceStickerRequest$to_bytes()`](#method-ReplaceStickerRequest-to_bytes)

- [`ReplaceStickerRequest$from_reader()`](#method-ReplaceStickerRequest-from_reader)

- [`ReplaceStickerRequest$clone()`](#method-ReplaceStickerRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ReplaceStickerRequest

#### Usage

    ReplaceStickerRequest$new(sticker, new_sticker)

#### Arguments

- `sticker`:

  InputDocument (TL object or representation)

- `new_sticker`:

  InputStickerSetItem (TL object or representation)

------------------------------------------------------------------------

### Method `resolve()`

Resolve references (e.g. convert user-friendly inputs to TL inputs)

#### Usage

    ReplaceStickerRequest$resolve(client, utils)

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

    ReplaceStickerRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (simple TL-like approximation)

#### Usage

    ReplaceStickerRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ReplaceStickerRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReplaceStickerRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
