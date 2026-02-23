# ImportWebTokenAuthorizationRequest

Telegram API type ImportWebTokenAuthorizationRequest

## Details

ImportWebTokenAuthorizationRequest R6 class

Represents the TLRequest auth.ImportWebTokenAuthorizationRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `api_id`:

  Field.

- `api_hash`:

  Field.

- `web_auth_token`:

  Field.

## Methods

### Public methods

- [`ImportWebTokenAuthorizationRequest$new()`](#method-ImportWebTokenAuthorizationRequest-new)

- [`ImportWebTokenAuthorizationRequest$to_list()`](#method-ImportWebTokenAuthorizationRequest-to_list)

- [`ImportWebTokenAuthorizationRequest$to_bytes()`](#method-ImportWebTokenAuthorizationRequest-to_bytes)

- [`ImportWebTokenAuthorizationRequest$from_reader()`](#method-ImportWebTokenAuthorizationRequest-from_reader)

- [`ImportWebTokenAuthorizationRequest$clone()`](#method-ImportWebTokenAuthorizationRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an ImportWebTokenAuthorizationRequest

#### Usage

    ImportWebTokenAuthorizationRequest$new(api_id, api_hash, web_auth_token)

#### Arguments

- `api_id`:

  integer

- `api_hash`:

  character

- `web_auth_token`:

  character

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ImportWebTokenAuthorizationRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ImportWebTokenAuthorizationRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ImportWebTokenAuthorizationRequest

#### Usage

    ImportWebTokenAuthorizationRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_bytes(), tgread_object()

#### Returns

ImportWebTokenAuthorizationRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ImportWebTokenAuthorizationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
