# InvokeWithApnsSecretRequest R6 class

Represents the TL request \`InvokeWithApnsSecretRequest\`.

R6 class representing a request that wraps a nested \`query\` and
provides Apple Push Notification Service (APNS) secret/nonce metadata.
The nested \`query\` will be serialized after the \`nonce\` and
\`secret\`.

## Details

Fields: - nonce: character string - secret: character string - query:
TypeX (an object representing a TL query). May be an R6 TL object with
to_raw()/to_list().

Methods: - new(nonce, secret, query): create new instance. - to_list():
return an R list representation. - to_raw(): serialize to raw vector
(bytes) in little endian as used in TL.

to_raw() writes constructor id 0x0dae54f8 (little-endian bytes: 0xf8
0x54 0xae 0x0d), then nonce and secret as TL strings (here serialized
via charToRaw for simplicity), then nested query bytes.

## Public fields

- `nonce`:

  Field.

- `secret`:

  Field.

- `query`:

  Field. Initialize an InvokeWithApnsSecretRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithApnsSecretRequest$new()`](#method-InvokeWithApnsSecretRequest-new)

- [`InvokeWithApnsSecretRequest$to_list()`](#method-InvokeWithApnsSecretRequest-to_list)

- [`InvokeWithApnsSecretRequest$to_bytes()`](#method-InvokeWithApnsSecretRequest-to_bytes)

- [`InvokeWithApnsSecretRequest$clone()`](#method-InvokeWithApnsSecretRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithApnsSecretRequest$new(nonce, secret, query)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithApnsSecretRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithApnsSecretRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithApnsSecretRequest$clone(deep = FALSE)

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

- `secret`:

  Field.

- `query`:

  Field. Initialize a new InvokeWithApnsSecretRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InvokeWithApnsSecretRequest$new()`](#method-InvokeWithApnsSecretRequest-new)

- [`InvokeWithApnsSecretRequest$to_list()`](#method-InvokeWithApnsSecretRequest-to_list)

- [`InvokeWithApnsSecretRequest$to_bytes()`](#method-InvokeWithApnsSecretRequest-to_bytes)

- [`InvokeWithApnsSecretRequest$clone()`](#method-InvokeWithApnsSecretRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    InvokeWithApnsSecretRequest$new(nonce, secret, query)

#### Arguments

- `nonce`:

  Nonce value used for the request (character or raw).

- `secret`:

  APNS secret string associated with the request.

- `query`:

  Nested query object that responds to \`to_list\` and \`to_bytes\`.
  Convert the request to a list

  Produces a plain R list representation suitable for debugging or JSON
  serialization. If the nested \`query\` implements \`to_list\`, its
  list representation will be used.

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWithApnsSecretRequest$to_list()

#### Returns

List with keys \`\_\`, \`nonce\`, \`secret\`, and \`query\`. Serialize
the request to raw bytes

The serialization order is: - constructor id (4 bytes, little-endian) -
serialized \`nonce\` - serialized \`secret\` - serialized nested
\`query\` bytes

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWithApnsSecretRequest$to_bytes()

#### Returns

Raw vector containing the serialized bytes of the request.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWithApnsSecretRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
