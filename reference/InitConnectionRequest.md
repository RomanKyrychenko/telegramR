# InitConnectionRequest R6 class

Represents the TL request \`InitConnectionRequest\`.

Represents a request to initialize a connection with the server. This
class holds connection metadata and the inner \`query\` object to be
serialized and sent. Optional \`proxy\` and \`params\` fields are
included based on flags during serialization.

## Details

Fields: - api_id: integer (32-bit) - device_model: character -
system_version: character - app_version: character - system_lang_code:
character - lang_pack: character - lang_code: character - query: TypeX
(an object providing to_raw()/to_list() or a raw vector/character) -
proxy: optional TypeInputClientProxy (object with to_raw()/to_list(),
raw, or character) - params: optional TypeJSONValue (object with
to_raw()/to_list(), raw, or character)

Methods: - new(api_id, device_model, system_version, app_version,
system_lang_code, lang_pack, lang_code, query, proxy = NULL, params =
NULL) - to_list(): return an R list representation. - to_raw():
serialize to raw vector (bytes) in little endian as used in TL.

Note: string and object serialization is simplified (charToRaw, nested
to_raw()). For exact TL compact string encoding or precise integer
widths replace with correct utilities.

to_list will call nested object's to_list() if available. Serialize to
raw (bytes)

Writes constructor id 0xa95ecd c1 (bytes: 0xA9 0x5E 0xCD 0xC1), then
flags (4 bytes little-endian), api_id (4 bytes little-endian), then
simple string bytes for device_model, system_version, app_version,
system_lang_code, lang_pack, lang_code, then optional proxy and params
bytes, and finally nested query bytes.

## Public fields

- `api_id`:

  Field.

- `device_model`:

  Field.

- `system_version`:

  Field.

- `app_version`:

  Field.

- `system_lang_code`:

  Field.

- `lang_pack`:

  Field.

- `lang_code`:

  Field.

- `query`:

  Field.

- `proxy`:

  Field.

- `params`:

  Field. Initialize an InitConnectionRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InitConnectionRequest$new()`](#method-InitConnectionRequest-new)

- [`InitConnectionRequest$to_list()`](#method-InitConnectionRequest-to_list)

- [`InitConnectionRequest$to_bytes()`](#method-InitConnectionRequest-to_bytes)

- [`InitConnectionRequest$clone()`](#method-InitConnectionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InitConnectionRequest$new(
      api_id,
      device_model,
      system_version,
      app_version,
      system_lang_code,
      lang_pack,
      lang_code,
      query,
      proxy = NULL,
      params = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InitConnectionRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InitConnectionRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InitConnectionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `api_id`:

  Field.

- `device_model`:

  Field.

- `system_version`:

  Field.

- `app_version`:

  Field.

- `system_lang_code`:

  Field.

- `lang_pack`:

  Field.

- `lang_code`:

  Field.

- `query`:

  Field.

- `proxy`:

  Field.

- `params`:

  Field. Initialize a new InitConnectionRequest

  Creates a new instance and stores all provided metadata and nested
  objects. \`proxy\` and \`params\` are optional and default to
  \`NULL\`.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InitConnectionRequest$new()`](#method-InitConnectionRequest-new)

- [`InitConnectionRequest$to_list()`](#method-InitConnectionRequest-to_list)

- [`InitConnectionRequest$to_bytes()`](#method-InitConnectionRequest-to_bytes)

- [`InitConnectionRequest$clone()`](#method-InitConnectionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InitConnectionRequest$new(
      api_id,
      device_model,
      system_version,
      app_version,
      system_lang_code,
      lang_pack,
      lang_code,
      query,
      proxy = NULL,
      params = NULL
    )

#### Arguments

- `api_id`:

  Integer API identifier.

- `device_model`:

  Character device model string.

- `system_version`:

  Character operating system version string.

- `app_version`:

  Character application version string.

- `system_lang_code`:

  Character system language code.

- `lang_pack`:

  Character language pack.

- `lang_code`:

  Character user language code.

- `query`:

  Nested query object that responds to \`to_bytes\`.

- `proxy`:

  Optional proxy object.

- `params`:

  Optional params object. Convert the request to a list

  Produces a plain R list representation suitable for JSON or debugging.
  Nested objects will be converted via their \`to_list\` method if
  available.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InitConnectionRequest$to_list()

#### Returns

List with keys matching the request structure. Serialize the request to
raw bytes

Produces a raw vector following the expected binary format: -
constructor id (4 bytes) - flags (4 bytes) indicating presence of
\`proxy\` and \`params\` - \`api_id\` (4 bytes) - serialized strings for
device and locale metadata - optional \`proxy\` and \`params\` bytes -
the nested \`query\` bytes

NOTE: This relies on \`serialize_bytes()\` for string fields and the
nested objects' \`to_bytes()\` methods to produce raw vectors.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InitConnectionRequest$to_bytes()

#### Returns

Raw vector with serialized request bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InitConnectionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
