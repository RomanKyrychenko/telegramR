# Reader Class

Implements a simple reader.

## Public fields

- `socket`:

  Field.

- `timeout`:

  Field.

## Methods

### Public methods

- [`Reader$readexactly()`](#method-Reader-readexactly)

- [`Reader$clone()`](#method-Reader-clone)

------------------------------------------------------------------------

### Method `readexactly()`

Read a fixed number of bytes.

#### Usage

    Reader$readexactly(n)

#### Arguments

- `n`:

  Number of bytes to read.

#### Returns

A promise resolving with raw data.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Reader$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
