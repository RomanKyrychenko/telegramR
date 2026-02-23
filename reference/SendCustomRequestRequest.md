# SendCustomRequestRequest

Telegram API type SendCustomRequestRequest

## Details

SendCustomRequestRequest R6 class

Represents the SendCustomRequestRequest TL request.

Each method is documented inline below.

## Public fields

- `custom_method`:

  Field.

- `params`:

  Field.

## Methods

### Public methods

- [`SendCustomRequestRequest$new()`](#method-SendCustomRequestRequest-new)

- [`SendCustomRequestRequest$resolve()`](#method-SendCustomRequestRequest-resolve)

- [`SendCustomRequestRequest$to_list()`](#method-SendCustomRequestRequest-to_list)

- [`SendCustomRequestRequest$to_bytes()`](#method-SendCustomRequestRequest-to_bytes)

- [`SendCustomRequestRequest$clone()`](#method-SendCustomRequestRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize SendCustomRequestRequest

#### Usage

    SendCustomRequestRequest$new(custom_method, params)

#### Arguments

- `custom_method`:

  character

- `params`:

  TypeDataJSON or object Resolve references (convert entities via
  client/utils)

  For this request no entity resolution is required; kept for API
  consistency.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    SendCustomRequestRequest$resolve(client = NULL, utils = NULL)

#### Arguments

- `client`:

  client (unused)

- `utils`:

  utils (unused) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    SendCustomRequestRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    SendCustomRequestRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendCustomRequestRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
