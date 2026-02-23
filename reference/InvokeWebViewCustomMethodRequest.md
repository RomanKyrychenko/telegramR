# InvokeWebViewCustomMethodRequest

Telegram API type InvokeWebViewCustomMethodRequest

## Details

InvokeWebViewCustomMethodRequest R6 class

Represents the InvokeWebViewCustomMethodRequest TL request.

Each method is documented inline below.

## Public fields

- `bot`:

  Field.

- `custom_method`:

  Field.

- `params`:

  Field.

## Methods

### Public methods

- [`InvokeWebViewCustomMethodRequest$new()`](#method-InvokeWebViewCustomMethodRequest-new)

- [`InvokeWebViewCustomMethodRequest$resolve()`](#method-InvokeWebViewCustomMethodRequest-resolve)

- [`InvokeWebViewCustomMethodRequest$to_list()`](#method-InvokeWebViewCustomMethodRequest-to_list)

- [`InvokeWebViewCustomMethodRequest$to_bytes()`](#method-InvokeWebViewCustomMethodRequest-to_bytes)

- [`InvokeWebViewCustomMethodRequest$clone()`](#method-InvokeWebViewCustomMethodRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize InvokeWebViewCustomMethodRequest

#### Usage

    InvokeWebViewCustomMethodRequest$new(bot, custom_method, params)

#### Arguments

- `bot`:

  TypeInputUser or identifier

- `custom_method`:

  character

- `params`:

  TypeDataJSON or object Resolve references (convert entities via
  client/utils)

  Resolves bot via client\$get_input_entity and utils\$get_input_user.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    InvokeWebViewCustomMethodRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  utils with get_input_user

#### Returns

invisible(self) Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    InvokeWebViewCustomMethodRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    InvokeWebViewCustomMethodRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvokeWebViewCustomMethodRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
