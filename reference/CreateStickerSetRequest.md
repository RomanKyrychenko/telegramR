# CreateStickerSetRequest

Telegram API type CreateStickerSetRequest

## Details

CreateStickerSetRequest R6 class

Represents a request to create a sticker set.

## Methods

\- initialize(user_id, title, short_name, stickers, masks = NULL, emojis
= NULL, text_color = NULL, thumb = NULL, software = NULL): create
instance. - resolve(client, utils): resolve friendly references to TL
inputs (documents / users). - to_list(): returns a list representation
suitable for inspection/JSON. - to_bytes(): returns a raw vector
representing serialized bytes (TL-like). - from_reader(reader):
static-style constructor that reads values from a reader object.

All methods are exported as part of the R6 object.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `title`:

  Field.

- `short_name`:

  Field.

- `stickers`:

  Field.

- `masks`:

  Field.

- `emojis`:

  Field.

- `text_color`:

  Field.

- `thumb`:

  Field.

- `software`:

  Field.

## Methods

### Public methods

- [`CreateStickerSetRequest$new()`](#method-CreateStickerSetRequest-new)

- [`CreateStickerSetRequest$resolve()`](#method-CreateStickerSetRequest-resolve)

- [`CreateStickerSetRequest$to_list()`](#method-CreateStickerSetRequest-to_list)

- [`CreateStickerSetRequest$to_bytes()`](#method-CreateStickerSetRequest-to_bytes)

- [`CreateStickerSetRequest$from_reader()`](#method-CreateStickerSetRequest-from_reader)

- [`CreateStickerSetRequest$clone()`](#method-CreateStickerSetRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CreateStickerSetRequest

#### Usage

    CreateStickerSetRequest$new(
      user_id,
      title,
      short_name,
      stickers,
      masks = NULL,
      emojis = NULL,
      text_color = NULL,
      thumb = NULL,
      software = NULL
    )

#### Arguments

- `user_id`:

  InputUser (TL object or representation)

- `title`:

  character Title string

- `short_name`:

  character Short name string

- `stickers`:

  list of InputStickerSetItem TL objects (or raw representations)

- `masks`:

  logical optional

- `emojis`:

  logical optional

- `text_color`:

  logical optional

- `thumb`:

  optional InputDocument TL object (or raw)

- `software`:

  optional character string

------------------------------------------------------------------------

### Method `resolve()`

Resolve friendly inputs to TL input objects

#### Usage

    CreateStickerSetRequest$resolve(client, utils)

#### Arguments

- `client`:

  client object (used for entity resolution if needed)

- `utils`:

  utilities object with helper conversions (must implement
  get_input_user and get_input_document)

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list

#### Usage

    CreateStickerSetRequest$to_list()

#### Returns

list representation

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (TL-like approximation)

#### Usage

    CreateStickerSetRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    CreateStickerSetRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateStickerSetRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
