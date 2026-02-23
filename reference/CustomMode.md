# CustomMode

An R6 class representing a custom parse mode with parse and unparse
methods. This class is used when a callable function is provided as the
parse mode.

## Public fields

- `parse`:

  A function to parse text into entities.

## Methods

### Public methods

- [`CustomMode$new()`](#method-CustomMode-new)

- [`CustomMode$unparse()`](#method-CustomMode-unparse)

- [`CustomMode$clone()`](#method-CustomMode-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the CustomMode object.

#### Usage

    CustomMode$new()

------------------------------------------------------------------------

### Method [`unparse()`](https://romankyrychenko.github.io/telegramR/reference/unparse.md)

Unparse entities back to text.

#### Usage

    CustomMode$unparse(text, entities)

#### Arguments

- `text`:

  The text string.

- `entities`:

  The entities list.

#### Returns

Raises NotImplementedError.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CustomMode$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
