# InvokeWithGooglePlayIntegrityRequest R6 class

Represents the TL request \`InvokeWithGooglePlayIntegrityRequest\`.

R6 class representing a request that wraps a nested \`query\` with
Google Play Integrity metadata. The class stores a \`nonce\` and
\`token\` and delegates serialization of the nested \`query\` to its
\`to_bytes()\` method.

## Details

Fields: - nonce: character string - token: character string - query:
TypeX (an object representing a TL query). May be an R6 TL object with
to_raw()/to_list().

Methods: - new(nonce, token, query): create new instance. - to_list():
return an R list representation. - to_raw(): serialize to raw vector
(bytes) in little endian as used in TL.

to_raw() writes the constructor id (0x1df92984) in little-endian, then
nonce, token as raw bytes and then the nested query bytes. The nested
query is expected to provide a to_raw() method or be a raw vector.

Writes constructor id 0x1df92984 as little-endian (bytes: 0x84 0x29 0xF9
0x1D), then nonce and token bytes, then nested query bytes.

## Public fields

- `classname`:

  Field.

- `nonce`:

  Field.

- `token`:

  Field.

- `query`:

  Field. Initialize an InvokeWithGooglePlayIntegrityRequest

## Active bindings

- `classname`:

  Field.

## Methods

### Public methods

- [`InvokeWithGooglePlayIntegrityRequest$new()`](#method-InvokeWithGooglePlayIntegrityRequest-new)

- [`InvokeWithGooglePlayIntegrityRequest$to_list()`](#method-InvokeWithGooglePlayIntegrityRequest-to_list)

- [`InvokeWithGooglePlayIntegrityRequest$to_bytes()`](#method-InvokeWithGooglePlayIntegrityRequest-to_bytes)

- [`InvokeWithGooglePlayIntegrityRequest$clone()`](#method-InvokeWithGooglePlayIntegrityRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithGooglePlayIntegrityRequest$new(nonce, token, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithGooglePlayIntegrityRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithGooglePlayIntegrityRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithGooglePlayIntegrityRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `nonce`:

  Field.

- `token`:

  Field.

- `query`:

  Field. Initialize a new InvokeWithGooglePlayIntegrityRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithGooglePlayIntegrityRequest$new()`](#method-InvokeWithGooglePlayIntegrityRequest-new)

- [`InvokeWithGooglePlayIntegrityRequest$to_list()`](#method-InvokeWithGooglePlayIntegrityRequest-to_list)

- [`InvokeWithGooglePlayIntegrityRequest$to_bytes()`](#method-InvokeWithGooglePlayIntegrityRequest-to_bytes)

- [`InvokeWithGooglePlayIntegrityRequest$clone()`](#method-InvokeWithGooglePlayIntegrityRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithGooglePlayIntegrityRequest$new(nonce, token, query)

#### Arguments

- `nonce`:

  Nonce value used for the request (character or raw).

- `token`:

  Google Play Integrity token string.

- `query`:

  Nested query object that responds to \`to_list\` and \`to_bytes\`.
  Convert the request to a list

  Produces a plain R list suitable for debugging or JSON serialization.
  If \`query\` implements \`to_list\`, that representation will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithGooglePlayIntegrityRequest$to_list()

#### Returns

List with keys: \`\_\`, \`nonce\`, \`token\`, and \`query\`. Serialize
the request to raw bytes

Serialization order: - constructor id (4 bytes, little-endian) -
serialized \`nonce\` - serialized \`token\` - serialized nested
\`query\` bytes

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithGooglePlayIntegrityRequest$to_bytes()

#### Returns

Raw vector containing the serialized bytes of the request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithGooglePlayIntegrityRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
