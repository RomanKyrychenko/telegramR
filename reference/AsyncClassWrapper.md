# AsyncClassWrapper

An R6 class that wraps an object and provides asynchronous method
wrapping. This class mimics the behavior of a Python class that wraps
objects to handle asynchronous calls.

## Public fields

- `wrapped`:

  The wrapped object.

## Methods

### Public methods

- [`AsyncClassWrapper$new()`](#method-AsyncClassWrapper-new)

- [`AsyncClassWrapper$get_attr()`](#method-AsyncClassWrapper-get_attr)

- [`AsyncClassWrapper$clone()`](#method-AsyncClassWrapper-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the AsyncClassWrapper.

#### Usage

    AsyncClassWrapper$new(wrapped)

#### Arguments

- `wrapped`:

  The object to wrap.

------------------------------------------------------------------------

### Method `get_attr()`

Get an attribute from the wrapped object. If the attribute is a
function, return a wrapper function that checks if the result is
awaitable and awaits it if necessary (assuming the 'coro' package for
async support).

#### Usage

    AsyncClassWrapper$get_attr(item)

#### Arguments

- `item`:

  The name of the attribute as a string.

#### Returns

The attribute value or a wrapped function.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AsyncClassWrapper$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
