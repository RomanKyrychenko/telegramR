# SetCustomVerificationRequest

Telegram API type SetCustomVerificationRequest

## Details

SetCustomVerificationRequest R6 class

Represents the SetCustomVerificationRequest TL request.

## Public fields

- `peer`:

  Field.

- `enabled`:

  Field.

- `bot`:

  Field.

- `custom_description`:

  Field.

## Methods

### Public methods

- [`SetCustomVerificationRequest$new()`](#method-SetCustomVerificationRequest-new)

- [`SetCustomVerificationRequest$resolve()`](#method-SetCustomVerificationRequest-resolve)

- [`SetCustomVerificationRequest$to_list()`](#method-SetCustomVerificationRequest-to_list)

- [`SetCustomVerificationRequest$to_bytes()`](#method-SetCustomVerificationRequest-to_bytes)

- [`SetCustomVerificationRequest$clone()`](#method-SetCustomVerificationRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SetCustomVerificationRequest

#### Usage

    SetCustomVerificationRequest$new(
      peer,
      enabled = NULL,
      bot = NULL,
      custom_description = NULL
    )

#### Arguments

- `peer`:

  TypeInputPeer or identifier

- `enabled`:

  logical\|null

- `bot`:

  TypeInputUser or identifier\|null

- `custom_description`:

  character\|null Resolve references (convert entities via client/utils)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SetCustomVerificationRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user / get_input_peer Convert to list
  (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SetCustomVerificationRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SetCustomVerificationRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetCustomVerificationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
