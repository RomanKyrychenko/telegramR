# ImportAuthorizationRequest

Telegram API type ImportAuthorizationRequest

## Details

ImportAuthorizationRequest R6 class

Represents the TLRequest auth.ImportAuthorizationRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `bytes`:

  Field.

## Methods

### Public methods

- [`ImportAuthorizationRequest$new()`](#method-ImportAuthorizationRequest-new)

- [`ImportAuthorizationRequest$to_list()`](#method-ImportAuthorizationRequest-to_list)

- [`ImportAuthorizationRequest$to_bytes()`](#method-ImportAuthorizationRequest-to_bytes)

- [`ImportAuthorizationRequest$from_reader()`](#method-ImportAuthorizationRequest-from_reader)

- [`ImportAuthorizationRequest$clone()`](#method-ImportAuthorizationRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an ImportAuthorizationRequest

#### Usage

    ImportAuthorizationRequest$new(id, bytes)

#### Arguments

- `id`:

  numeric or integer (64-bit)

- `bytes`:

  raw vector or string

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ImportAuthorizationRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ImportAuthorizationRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ImportAuthorizationRequest

#### Usage

    ImportAuthorizationRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_long(), tgread_bytes()

#### Returns

ImportAuthorizationRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ImportAuthorizationRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
