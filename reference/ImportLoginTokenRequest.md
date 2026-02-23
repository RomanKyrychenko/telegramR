# ImportLoginTokenRequest

Telegram API type ImportLoginTokenRequest

## Details

ImportLoginTokenRequest R6 class

Represents the TLRequest auth.ImportLoginTokenRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `token`:

  Field.

## Methods

### Public methods

- [`ImportLoginTokenRequest$new()`](#method-ImportLoginTokenRequest-new)

- [`ImportLoginTokenRequest$to_list()`](#method-ImportLoginTokenRequest-to_list)

- [`ImportLoginTokenRequest$to_bytes()`](#method-ImportLoginTokenRequest-to_bytes)

- [`ImportLoginTokenRequest$from_reader()`](#method-ImportLoginTokenRequest-from_reader)

- [`ImportLoginTokenRequest$clone()`](#method-ImportLoginTokenRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an ImportLoginTokenRequest

#### Usage

    ImportLoginTokenRequest$new(token)

#### Arguments

- `token`:

  raw vector or string

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    ImportLoginTokenRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    ImportLoginTokenRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create ImportLoginTokenRequest

#### Usage

    ImportLoginTokenRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_int(), tgread_string(),
  tgread_bytes(), tgread_object()

#### Returns

ImportLoginTokenRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ImportLoginTokenRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
