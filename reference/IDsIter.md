# IDsIter

Telegram API type IDsIter

## Details

IDsIter R6 class

Iterator over explicit message IDs, fetching results in chunks. It
optionally validates that returned messages belong to a given entity.

## Initialization

it \<- IDsIter\$new(client, entity = NULL, ids, reverse = FALSE,
wait_time = NULL, limit = Inf)

## Public fields

- `client`:

  Client used to perform requests

- `entity_input`:

  Input entity (resolved via client get_input_entity if available)

- `entity_type`:

  Entity type as reported by the client (e.g., CHANNEL)

- `ids`:

  Vector of IDs to fetch (possibly reversed)

- `offset`:

  Current offset over ids

- `reverse`:

  Whether to iterate in reverse order

- `wait_time`:

  Optional per-request wait time in seconds

- `limit`:

  Hard limit on how many items to consider

- `total`:

  Total number of requested ids

- `buffer`:

  Internal buffer of fetched items aligned with requested ids

## Methods

### Public methods

- [`IDsIter$new()`](#method-IDsIter-new)

- [`IDsIter$load_next_chunk()`](#method-IDsIter-load_next_chunk)

- [`IDsIter$has_next()`](#method-IDsIter-has_next)

- [`IDsIter$.next()`](#method-IDsIter-.next)

- [`IDsIter$clone()`](#method-IDsIter-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the iterator

#### Usage

    IDsIter$new(
      client,
      entity = NULL,
      ids,
      reverse = FALSE,
      wait_time = NULL,
      limit = Inf
    )

#### Arguments

- `client`:

  Telegram client object.

- `entity`:

  Optional entity to validate messages against (can be NULL).

- `ids`:

  Integer vector of message IDs to fetch.

- `reverse`:

  logical. If TRUE, process ids in reverse order.

- `wait_time`:

  numeric or NULL. If NULL, set heuristically based on limit.

- `limit`:

  integer or Inf. Used only for wait_time heuristic here. Load the next
  chunk of results into the buffer

  Fetches up to the internal chunk size worth of messages for the next
  slice of ids.

------------------------------------------------------------------------

### Method `load_next_chunk()`

#### Usage

    IDsIter$load_next_chunk()

#### Returns

A list of messages or NULLs aligned with the requested chunk of ids;
NULL if there are no more ids to process. Check if there are more items
to retrieve

------------------------------------------------------------------------

### Method `has_next()`

#### Usage

    IDsIter$has_next()

#### Returns

logical indicating whether there are more items to fetch or buffered.
Get the next item, fetching more if needed

------------------------------------------------------------------------

### Method `.next()`

#### Usage

    IDsIter$.next()

#### Returns

A single message object or NULL if exhausted.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    IDsIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
