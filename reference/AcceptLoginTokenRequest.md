# AcceptLoginTokenRequest

Telegram API type AcceptLoginTokenRequest

## Details

AcceptLoginTokenRequest R6 class

Represents the TLRequest auth.AcceptLoginTokenRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `token`:

  Field.

## Methods

### Public methods

- [`AcceptLoginTokenRequest$new()`](#method-AcceptLoginTokenRequest-new)

- [`AcceptLoginTokenRequest$to_list()`](#method-AcceptLoginTokenRequest-to_list)

- [`AcceptLoginTokenRequest$to_bytes()`](#method-AcceptLoginTokenRequest-to_bytes)

- [`AcceptLoginTokenRequest$from_reader()`](#method-AcceptLoginTokenRequest-from_reader)

- [`AcceptLoginTokenRequest$clone()`](#method-AcceptLoginTokenRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an AcceptLoginTokenRequest

#### Usage

    AcceptLoginTokenRequest$new(token)

#### Arguments

- `token`:

  raw vector or string

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    AcceptLoginTokenRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    AcceptLoginTokenRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create AcceptLoginTokenRequest

#### Usage

    AcceptLoginTokenRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing tgread_bytes()

#### Returns

AcceptLoginTokenRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AcceptLoginTokenRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
