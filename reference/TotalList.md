# TotalList

Telegram API type TotalList

## Details

TotalList R6 class

The class keeps arbitrary R objects in the \`items\` field and a scalar
numeric \`total\` initialized to 0. It provides methods to construct an
instance and to obtain two textual representations: a human-readable
form and a dput()-based reproducible form.

## Public fields

- `items`:

  list List of objects contained in the instance.

- `total`:

  numeric Numeric scalar representing the total associated with the
  items.

## Methods

### Public methods

- [`TotalList$new()`](#method-TotalList-new)

- [`TotalList$to_string()`](#method-TotalList-to_string)

- [`TotalList$to_repr()`](#method-TotalList-to_repr)

- [`TotalList$clone()`](#method-TotalList-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes a TotalList instance.

#### Usage

    TotalList$new(items = list())

#### Arguments

- `items`:

  (initialize) Optional list of items to store; defaults to an empty
  list. The \`total\` field is initialized to 0.

#### Returns

A new TotalList instance.

------------------------------------------------------------------------

### Method `to_string()`

Returns a human-readable string representation of the TotalList. Each
item is coerced to character and the total is appended.

#### Usage

    TotalList$to_string()

#### Returns

A string representation of the TotalList.

------------------------------------------------------------------------

### Method `to_repr()`

Returns a reproducible string representation of the TotalList. Each item
is represented using dput() and the total is appended.

#### Usage

    TotalList$to_repr()

#### Returns

A reproducible string representation of the TotalList.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TotalList$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
