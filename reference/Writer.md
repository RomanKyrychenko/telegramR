# Writer Class

Implements a simple writer.

## Public fields

- `socket`:

  Field.

## Methods

### Public methods

- [`Writer$write()`](#method-Writer-write)

- [`Writer$drain()`](#method-Writer-drain)

- [`Writer$close()`](#method-Writer-close)

- [`Writer$clone()`](#method-Writer-clone)

------------------------------------------------------------------------

### Method [`write()`](https://rdrr.io/r/base/write.html)

Write data.

#### Usage

    Writer$write(data)

#### Arguments

- `data`:

  Data to write.

------------------------------------------------------------------------

### Method `drain()`

Drain the write buffer.

#### Usage

    Writer$drain()

#### Returns

A promise that resolves when drained.

------------------------------------------------------------------------

### Method [`close()`](https://rdrr.io/r/base/connections.html)

Close the writer.

#### Usage

    Writer$close()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Writer$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
