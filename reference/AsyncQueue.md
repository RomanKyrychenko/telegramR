# AsyncQueue Class

Implements an asynchronous queue.

## Methods

### Public methods

- [`AsyncQueue$new()`](#method-AsyncQueue-new)

- [`AsyncQueue$put()`](#method-AsyncQueue-put)

- [`AsyncQueue$get()`](#method-AsyncQueue-get)

- [`AsyncQueue$clone()`](#method-AsyncQueue-clone)

------------------------------------------------------------------------

### Method `new()`

Create a new AsyncQueue.

#### Usage

    AsyncQueue$new(maxsize = NULL)

#### Arguments

- `maxsize`:

  Maximum size of the queue.

------------------------------------------------------------------------

### Method `put()`

Add an item to the queue.

#### Usage

    AsyncQueue$put(item)

#### Arguments

- `item`:

  The item to add.

#### Returns

A promise that resolves when the item is added.

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Retrieve an item from the queue.

#### Usage

    AsyncQueue$get()

#### Returns

A promise that resolves with the item.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AsyncQueue$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
