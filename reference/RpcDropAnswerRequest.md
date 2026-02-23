# RpcDropAnswerRequest R6 class

Methods: - new(req_msg_id): create new instance. - to_list(): return an
R list representation. - to_raw(): serialize to raw vector (bytes) in
little endian as used in TL. - from_reader(reader): class method,
construct instance from a \`reader\` object that exposes \`read_long()\`
(returns numeric/integer) and similar methods.

Note: to_raw() uses writeBin on numeric for 8-byte values. If exact
64-bit two's-complement preservation is required, replace with a
dedicated 64-bit integer serialization utility.

R6 class representing a request to drop an RPC answer for a previously
sent request message. The server will respond with one of the
`RpcAnswer*` response variants (e.g. `RpcAnswerUnknown`,
`RpcAnswerDroppedRunning`, `RpcAnswerDropped`).

## Value

An R6 object of class `RpcDropAnswerRequest`.

## Details

Represents the TL request \`RpcDropAnswerRequest\`.

## Public fields

- `req_msg_id`:

  Field. Initialize a RpcDropAnswerRequest

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`RpcDropAnswerRequest$new()`](#method-RpcDropAnswerRequest-new)

- [`RpcDropAnswerRequest$to_list()`](#method-RpcDropAnswerRequest-to_list)

- [`RpcDropAnswerRequest$to_bytes()`](#method-RpcDropAnswerRequest-to_bytes)

- [`RpcDropAnswerRequest$clone()`](#method-RpcDropAnswerRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    RpcDropAnswerRequest$new(req_msg_id)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    RpcDropAnswerRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    RpcDropAnswerRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RpcDropAnswerRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `req_msg_id`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`RpcDropAnswerRequest$new()`](#method-RpcDropAnswerRequest-new)

- [`RpcDropAnswerRequest$to_list()`](#method-RpcDropAnswerRequest-to_list)

- [`RpcDropAnswerRequest$to_bytes()`](#method-RpcDropAnswerRequest-to_bytes)

- [`RpcDropAnswerRequest$clone()`](#method-RpcDropAnswerRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    RpcDropAnswerRequest$new(req_msg_id)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    RpcDropAnswerRequest$to_list()

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    RpcDropAnswerRequest$to_bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RpcDropAnswerRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
