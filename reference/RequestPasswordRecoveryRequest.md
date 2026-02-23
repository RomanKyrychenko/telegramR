# RequestPasswordRecoveryRequest

Telegram API type RequestPasswordRecoveryRequest

## Details

RequestPasswordRecoveryRequest R6 class

Represents the TLRequest auth.RequestPasswordRecoveryRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`RequestPasswordRecoveryRequest$new()`](#method-RequestPasswordRecoveryRequest-new)

- [`RequestPasswordRecoveryRequest$to_list()`](#method-RequestPasswordRecoveryRequest-to_list)

- [`RequestPasswordRecoveryRequest$to_bytes()`](#method-RequestPasswordRecoveryRequest-to_bytes)

- [`RequestPasswordRecoveryRequest$from_reader()`](#method-RequestPasswordRecoveryRequest-from_reader)

- [`RequestPasswordRecoveryRequest$clone()`](#method-RequestPasswordRecoveryRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a RequestPasswordRecoveryRequest

#### Usage

    RequestPasswordRecoveryRequest$new()

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    RequestPasswordRecoveryRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    RequestPasswordRecoveryRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create RequestPasswordRecoveryRequest

#### Usage

    RequestPasswordRecoveryRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_object()

#### Returns

RequestPasswordRecoveryRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestPasswordRecoveryRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
