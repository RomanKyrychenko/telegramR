# ReqDHParamsRequest

Telegram API type ReqDHParamsRequest

Represents the TL request \`ReqDHParamsRequest\`.

## Details

ReqDHParamsRequest Class

Fields: - nonce: numeric/integer 128-bit nonce (placeholder
representation) - server_nonce: numeric/integer 128-bit server nonce
(placeholder) - p: raw, bytes - q: raw, bytes - public_key_fingerprint:
numeric/integer 64-bit - encrypted_data: raw, bytes

Methods: - new(nonce, server_nonce, p, q, public_key_fingerprint,
encrypted_data): create new instance. - to_list(): return an R list
representation. - to_raw(): serialize to raw vector (bytes) in little
endian as used in TL.

Note: 128-bit integer handling is represented as numeric/double
placeholders. For precise 128-bit two's-complement behavior, use a
big-integer library and implement a precise serializer.

R6 class representing a request for Diffie-Hellman parameters during the
key exchange phase. This request carries: - \`nonce\` and
\`server_nonce\`: 128-bit nonces used for the DH handshake, - \`p\` and
\`q\`: byte sequences containing prime parameters, -
\`public_key_fingerprint\`: 64-bit fingerprint of the server public
key, - \`encrypted_data\`: bytes with encrypted DH payload.

## Public fields

- `CONSTRUCTOR_ID`:

  A unique identifier for the TL object.

- `SUBCLASS_OF_ID`:

  A unique identifier for the subclass of the TL object.

- `nonce`:

  The \`nonce\` value as an integer.

- `server_nonce`:

  The \`server_nonce\` value as an integer.

- `p`:

  The \`p\` value as a raw vector.

- `q`:

  The \`q\` value as a raw vector.

- `public_key_fingerprint`:

  The \`public_key_fingerprint\` value as an integer.

- `encrypted_data`:

  The \`encrypted_data\` value as a raw vector.

## Methods

### Public methods

- [`ReqDHParamsRequest$new()`](#method-ReqDHParamsRequest-new)

- [`ReqDHParamsRequest$to_list()`](#method-ReqDHParamsRequest-to_list)

- [`ReqDHParamsRequest$to_bytes()`](#method-ReqDHParamsRequest-to_bytes)

- [`ReqDHParamsRequest$clone()`](#method-ReqDHParamsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    ReqDHParamsRequest$new(
      nonce,
      server_nonce,
      p,
      q,
      public_key_fingerprint,
      encrypted_data
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ReqDHParamsRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ReqDHParamsRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReqDHParamsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `nonce`:

  Field.

- `server_nonce`:

  Field.

- `p`:

  Field.

- `q`:

  Field.

- `public_key_fingerprint`:

  Field.

- `encrypted_data`:

  Field. Initialize a ReqDHParamsRequest

## Methods

### Public methods

- [`ReqDHParamsRequest$new()`](#method-ReqDHParamsRequest-new)

- [`ReqDHParamsRequest$to_list()`](#method-ReqDHParamsRequest-to_list)

- [`ReqDHParamsRequest$to_bytes()`](#method-ReqDHParamsRequest-to_bytes)

- [`ReqDHParamsRequest$clone()`](#method-ReqDHParamsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    ReqDHParamsRequest$new(
      nonce,
      server_nonce,
      p,
      q,
      public_key_fingerprint,
      encrypted_data
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ReqDHParamsRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ReqDHParamsRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReqDHParamsRequest$clone(deep = FALSE)

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

- `server_nonce`:

  Field.

- `p`:

  Field.

- `q`:

  Field.

- `public_key_fingerprint`:

  Field.

- `encrypted_data`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`ReqDHParamsRequest$new()`](#method-ReqDHParamsRequest-new)

- [`ReqDHParamsRequest$to_list()`](#method-ReqDHParamsRequest-to_list)

- [`ReqDHParamsRequest$to_bytes()`](#method-ReqDHParamsRequest-to_bytes)

- [`ReqDHParamsRequest$clone()`](#method-ReqDHParamsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new ReqDHParamsRequest

#### Usage

    ReqDHParamsRequest$new(
      nonce,
      server_nonce,
      p,
      q,
      public_key_fingerprint,
      encrypted_data
    )

#### Arguments

- `nonce`:

  128-bit nonce generated by the client (large int or raw).

- `server_nonce`:

  128-bit nonce returned by the server (large int or raw).

- `p`:

  Byte sequence for the DH parameter p.

- `q`:

  Byte sequence for the DH parameter q.

- `public_key_fingerprint`:

  64-bit integer fingerprint for the public key.

- `encrypted_data`:

  Encrypted byte payload required for the DH exchange.

------------------------------------------------------------------------

### Method `to_list()`

Convert to list representation Returns a plain R list that mirrors the
fields of the request. Useful for debugging, inspection or JSON-style
representations.

#### Usage

    ReqDHParamsRequest$to_list()

#### Returns

List with keys: `"_"`, `nonce`, `server_nonce`, `p`, `q`,
`public_key_fingerprint`, `encrypted_data`. Serialize to raw bytes

Serializes the request into a raw vector according to the protocol: -
constructor id (4 bytes, little-endian) - `nonce` and `server_nonce` as
128-bit values - serialized `p` and `q` byte sequences -
`public_key_fingerprint` as 8-byte little-endian integer - serialized
`encrypted_data`

Note: the implementation relies on
[`serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/serialize_bytes.md)
for byte sequence fields and uses
[`writeBin()`](https://rdrr.io/r/base/readBin.html) for integer
encodings.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    ReqDHParamsRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReqDHParamsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
