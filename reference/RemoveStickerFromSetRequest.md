# RemoveStickerFromSetRequest

Telegram API type RemoveStickerFromSetRequest

## Details

RemoveStickerFromSetRequest R6 class

Represents a request to remove a sticker from a set.

## Methods

\- initialize(sticker): create instance. - resolve(client, utils):
resolves the sticker to an InputDocument using utils. - to_list():
returns a list representation suitable for JSON/inspection. -
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

## Methods

### Public methods

- [`RemoveStickerFromSetRequest$new()`](#method-RemoveStickerFromSetRequest-new)

- [`RemoveStickerFromSetRequest$resolve()`](#method-RemoveStickerFromSetRequest-resolve)

- [`RemoveStickerFromSetRequest$to_list()`](#method-RemoveStickerFromSetRequest-to_list)

- [`RemoveStickerFromSetRequest$to_bytes()`](#method-RemoveStickerFromSetRequest-to_bytes)

- [`RemoveStickerFromSetRequest$from_reader()`](#method-RemoveStickerFromSetRequest-from_reader)

- [`RemoveStickerFromSetRequest$clone()`](#method-RemoveStickerFromSetRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a RemoveStickerFromSetRequest

#### Usage

    RemoveStickerFromSetRequest$new(sticker)

#### Arguments

- `sticker`:

  InputDocument (TL object or representation)

------------------------------------------------------------------------

### Method `resolve()`

Resolve references (e.g. convert user-friendly inputs to TL inputs)

#### Usage

    RemoveStickerFromSetRequest$resolve(client, utils)

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

    RemoveStickerFromSetRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (simple TL-like approximation)

#### Usage

    RemoveStickerFromSetRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    RemoveStickerFromSetRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RemoveStickerFromSetRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
