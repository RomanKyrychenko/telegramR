# ImportBotAuthorizationRequest

Telegram API type ImportBotAuthorizationRequest

## Details

ImportBotAuthorizationRequest R6 class

Represents the TLRequest auth.ImportBotAuthorizationRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `flags`:

  Field.

- `api_id`:

  Field.

- `api_hash`:

  Field.

- `bot_auth_token`:

  Field.

## Methods

### Public methods

- [`ImportBotAuthorizationRequest$new()`](#method-ImportBotAuthorizationRequest-new)

- [`ImportBotAuthorizationRequest$to_list()`](#method-ImportBotAuthorizationRequest-to_list)

- [`ImportBotAuthorizationRequest$to_bytes()`](#method-ImportBotAuthorizationRequest-to_bytes)

- [`ImportBotAuthorizationRequest$from_reader()`](#method-ImportBotAuthorizationRequest-from_reader)

- [`ImportBotAuthorizationRequest$clone()`](#method-ImportBotAuthorizationRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an ImportBotAuthorizationRequest

#### Usage

    ImportBotAuthorizationRequest$new(flags, api_id, api_hash, bot_auth_token)

#### Arguments

- `flags`:

  integer

- `api_id`:

  integer

- `api_hash`:

  character

- `bot_auth_token`:

  character

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ImportBotAuthorizationRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ImportBotAuthorizationRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ImportBotAuthorizationRequest

#### Usage

    ImportBotAuthorizationRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string()

#### Returns

ImportBotAuthorizationRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ImportBotAuthorizationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
