# CheckShortNameRequest

Telegram API type CheckShortNameRequest

## Details

CheckShortNameRequest R6 class

Represents a request to check whether a short name is available/valid.

## Methods

\- initialize(short_name): create instance. - to_list(): returns a list
representation suitable for JSON/inspection. - to_bytes(): returns a raw
vector representing serialized bytes (TL-like). - from_reader(reader):
reads a request from a reader object and returns a new instance.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `short_name`:

  Field.

## Methods

### Public methods

- [`CheckShortNameRequest$new()`](#method-CheckShortNameRequest-new)

- [`CheckShortNameRequest$to_list()`](#method-CheckShortNameRequest-to_list)

- [`CheckShortNameRequest$to_bytes()`](#method-CheckShortNameRequest-to_bytes)

- [`CheckShortNameRequest$from_reader()`](#method-CheckShortNameRequest-from_reader)

- [`CheckShortNameRequest$clone()`](#method-CheckShortNameRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a CheckShortNameRequest

#### Usage

    CheckShortNameRequest$new(short_name)

#### Arguments

- `short_name`:

  character short name string

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list

#### Usage

    CheckShortNameRequest$to_list()

#### Returns

list representation

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (TL-like approximation)

#### Usage

    CheckShortNameRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    CheckShortNameRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CheckShortNameRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
