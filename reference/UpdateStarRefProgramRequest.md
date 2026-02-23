# UpdateStarRefProgramRequest

Telegram API type UpdateStarRefProgramRequest

## Details

UpdateStarRefProgramRequest R6 class

Represents the UpdateStarRefProgramRequest TL request.

## Public fields

- `bot`:

  Field.

- `commission_permille`:

  Field.

- `duration_months`:

  Field.

## Methods

### Public methods

- [`UpdateStarRefProgramRequest$new()`](#method-UpdateStarRefProgramRequest-new)

- [`UpdateStarRefProgramRequest$resolve()`](#method-UpdateStarRefProgramRequest-resolve)

- [`UpdateStarRefProgramRequest$to_list()`](#method-UpdateStarRefProgramRequest-to_list)

- [`UpdateStarRefProgramRequest$to_bytes()`](#method-UpdateStarRefProgramRequest-to_bytes)

- [`UpdateStarRefProgramRequest$clone()`](#method-UpdateStarRefProgramRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize UpdateStarRefProgramRequest

#### Usage

    UpdateStarRefProgramRequest$new(
      bot,
      commission_permille,
      duration_months = NULL
    )

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `commission_permille`:

  integer

- `duration_months`:

  integer\|null Resolve references (convert entities via client/utils)

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    UpdateStarRefProgramRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    UpdateStarRefProgramRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    UpdateStarRefProgramRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateStarRefProgramRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
