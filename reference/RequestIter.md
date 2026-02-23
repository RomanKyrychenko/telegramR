# RequestIter

Helper class to deal with requests that need offsets to iterate.
Provides facilities such as sleeping between requests and handling
limits.

## Public fields

- `client`:

  The client instance used for making requests.

- `reverse`:

  Whether to reverse the iteration order.

- `wait_time`:

  Time to wait between requests (in seconds).

- `kwargs`:

  Additional arguments passed to the iterator.

- `limit`:

  The total number of items to return (default is Inf).

- `left`:

  The number of items left to fetch.

- `buffer`:

  A temporary storage for fetched items.

- `index`:

  The current index in the buffer.

- `total`:

  The total number of items fetched (if applicable).

- `last_load`:

  The timestamp of the last data load.

## Methods

### Public methods

- [`RequestIter$new()`](#method-RequestIter-new)

- [`RequestIter$async_init()`](#method-RequestIter-async_init)

- [`RequestIter$load_next_chunk()`](#method-RequestIter-load_next_chunk)

- [`RequestIter$collect()`](#method-RequestIter-collect)

- [`RequestIter$.next()`](#method-RequestIter-.next)

- [`RequestIter$reset()`](#method-RequestIter-reset)

- [`RequestIter$clone()`](#method-RequestIter-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes the RequestIter object.

#### Usage

    RequestIter$new(client, limit = Inf, reverse = FALSE, wait_time = NULL, ...)

#### Arguments

- `client`:

  The client instance.

- `limit`:

  The total number of items to return (default is Inf).

- `reverse`:

  Whether to reverse the iteration order (default is FALSE).

- `wait_time`:

  Time to wait between requests (in seconds, default is NULL).

- `...`:

  Additional arguments passed to the iterator.

------------------------------------------------------------------------

### Method `async_init()`

Asynchronous initialization (to be overridden by subclasses).

#### Usage

    RequestIter$async_init(...)

#### Arguments

- `...`:

  Additional arguments passed to the initialization.

#### Returns

TRUE if this is the last iteration, FALSE otherwise.

------------------------------------------------------------------------

### Method `load_next_chunk()`

Loads the next chunk of data (to be overridden by subclasses).

#### Usage

    RequestIter$load_next_chunk()

#### Returns

TRUE if this is the last chunk, FALSE otherwise.

------------------------------------------------------------------------

### Method `collect()`

Collects all items into a list asynchronously.

#### Usage

    RequestIter$collect()

#### Returns

A list of all items collected.

------------------------------------------------------------------------

### Method `.next()`

Returns the next item in the iteration asynchronously.

#### Usage

    RequestIter$.next()

#### Returns

The next item in the iteration.

------------------------------------------------------------------------

### Method `reset()`

Resets the iterator to its initial state.

#### Usage

    RequestIter$reset()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
