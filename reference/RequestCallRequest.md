# RequestCallRequest

Telegram API type RequestCallRequest

## Details

RequestCallRequest R6 class

Represents RequestCallRequest TLRequest.

## Public fields

- `user_id`:

  Field.

- `g_a_hash`:

  Field.

- `protocol`:

  Field.

- `video`:

  Field.

- `random_id`:

  Field.

## Methods

### Public methods

- [`RequestCallRequest$new()`](#method-RequestCallRequest-new)

- [`RequestCallRequest$resolve()`](#method-RequestCallRequest-resolve)

- [`RequestCallRequest$to_list()`](#method-RequestCallRequest-to_list)

- [`RequestCallRequest$bytes()`](#method-RequestCallRequest-bytes)

- [`RequestCallRequest$from_reader()`](#method-RequestCallRequest-from_reader)

- [`RequestCallRequest$clone()`](#method-RequestCallRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a RequestCallRequest

#### Usage

    RequestCallRequest$new(
      user_id,
      g_a_hash,
      protocol,
      video = NULL,
      random_id = NULL
    )

#### Arguments

- `user_id`:

  Input user object.

- `g_a_hash`:

  Raw vector or single string representing bytes.

- `protocol`:

  Protocol object.

- `video`:

  Logical or NULL.

- `random_id`:

  Integer or NULL (if NULL a random 32-bit int is chosen).

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    RequestCallRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (unused here).

- `utils`:

  Utility object with get_input_user method.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    RequestCallRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes
\`user_id\$bytes()\` and \`protocol\$bytes()\` exist. \`g_a_hash\` may
be raw vector or single string.

#### Usage

    RequestCallRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    RequestCallRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestCallRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
