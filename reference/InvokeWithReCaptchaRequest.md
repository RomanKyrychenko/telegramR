# InvokeWithReCaptchaRequest R6 class

Represents the TL request \`InvokeWithReCaptchaRequest\`.

R6 class representing a request that wraps a nested \`query\` with a
ReCaptcha token. The nested \`query\` will be serialized after the
\`token\`.

## Details

Fields: - token: character string - query: TypeX (an object representing
a TL query). May be an R6 TL object with to_raw()/to_list().

Methods: - new(token, query): create new instance. - to_list(): return
an R list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL.

to_raw() expects the query to provide a to_raw() method returning a raw
vector, or to already be a raw vector. If neither is true and query is
character, it will be coerced with charToRaw().

## Public fields

- `token`:

  Field.

- `query`:

  Field. Initialize an InvokeWithReCaptchaRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithReCaptchaRequest$new()`](#method-InvokeWithReCaptchaRequest-new)

- [`InvokeWithReCaptchaRequest$to_list()`](#method-InvokeWithReCaptchaRequest-to_list)

- [`InvokeWithReCaptchaRequest$to_bytes()`](#method-InvokeWithReCaptchaRequest-to_bytes)

- [`InvokeWithReCaptchaRequest$clone()`](#method-InvokeWithReCaptchaRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithReCaptchaRequest$new(token, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithReCaptchaRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithReCaptchaRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithReCaptchaRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `token`:

  Field.

- `query`:

  Field. Initialize a new InvokeWithReCaptchaRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithReCaptchaRequest$new()`](#method-InvokeWithReCaptchaRequest-new)

- [`InvokeWithReCaptchaRequest$to_list()`](#method-InvokeWithReCaptchaRequest-to_list)

- [`InvokeWithReCaptchaRequest$to_bytes()`](#method-InvokeWithReCaptchaRequest-to_bytes)

- [`InvokeWithReCaptchaRequest$clone()`](#method-InvokeWithReCaptchaRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithReCaptchaRequest$new(token, query)

#### Arguments

- `token`:

  ReCaptcha token (character or raw).

- `query`:

  Nested query object responding to \`to_list\` and \`to_bytes\`.
  Convert the request to a list

  Produces a plain R list representation suitable for debugging or JSON
  serialization. If the nested \`query\` implements \`to_list\`, that
  representation will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithReCaptchaRequest$to_list()

#### Returns

List with keys: \`\_\`, \`token\`, and \`query\`. Serialize the request
to raw bytes

Serialization order: - constructor id (4 bytes, little-endian) -
serialized \`token\` (via \`serialize_bytes()\`) - serialized nested
\`query\` bytes (via \`query\$to_bytes()\`)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithReCaptchaRequest$to_bytes()

#### Returns

Raw vector containing the serialized bytes of the request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithReCaptchaRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
