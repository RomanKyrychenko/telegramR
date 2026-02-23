# MessagesIter

Telegram API type MessagesIter

## Details

MessagesIter R6 class

Iterator over messages with support for search, filters, reply threads,
scheduled history, ranges (min_id/max_id), and reverse iteration. This
is a translation of the original async RequestIter-based logic into R6.
It delegates fetching to the provided client via iter_messages().

## Public fields

- `client`:

  Client used to perform requests

- `entity_input`:

  Input entity (resolved via client get_input_entity if available)

- `is_global`:

  Whether this is a global search (entity is NULL)

- `reverse`:

  Whether to iterate in reverse

- `limit`:

  Hard limit of messages to retrieve

- `left`:

  Remaining messages to retrieve

- `wait_time`:

  Optional per-request wait time (seconds)

- `add_offset`:

  Add offset used by server requests

- `max_id`:

  Upper bound for message id (exclusive)

- `min_id`:

  Lower bound for message id (exclusive)

- `last_id`:

  Last seen message id (used to avoid duplicates/order issues)

- `total`:

  Total messages reported by the server (when available)

- `request`:

  Request parameters tracked between chunks

- `buffer`:

  Internal buffer of fetched messages

- `exhausted`:

  Exhausted flag

- `from_id`:

  From-user peer id for local filtering when needed

- `search`:

  Optional search query

- `filter`:

  Optional filter object

- `reply_to`:

  Optional reply thread id

- `offset_date`:

  Optional offset date

- `entity`:

  Field.

- `from_user`:

  Field.

- `offset_date`:

  Field.

- `filter`:

  Field.

- `search`:

  Field.

- `reply_to`:

  Field.

- `scheduled`:

  Field.

- `reverse`:

  Field.

- `wait_time`:

  Field. Load next chunk

  Fetches the next chunk of messages and appends them to the internal
  buffer.

- `ids`:

  Field. Check if there are more items to retrieve

## Active bindings

- `entity`:

  Field.

- `from_user`:

  Field.

- `scheduled`:

  Field.

- `ids`:

  Field. Check if there are more items to retrieve

## Methods

### Public methods

- [`MessagesIter$new()`](#method-MessagesIter-new)

- [`MessagesIter$load_next_chunk()`](#method-MessagesIter-load_next_chunk)

- [`MessagesIter$has_next()`](#method-MessagesIter-has_next)

- [`MessagesIter$.next()`](#method-MessagesIter-.next)

- [`MessagesIter$clone()`](#method-MessagesIter-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the iterator with query parameters.

#### Usage

    MessagesIter$new(
      client,
      entity = NULL,
      offset_id = 0L,
      min_id = 0L,
      max_id = 0L,
      from_user = NULL,
      offset_date = NULL,
      add_offset = 0L,
      filter = NULL,
      search = NULL,
      reply_to = NULL,
      scheduled = FALSE,
      reverse = FALSE,
      wait_time = NULL,
      limit = Inf
    )

#### Arguments

- `client`:

  Telegram client object that provides iter_messages(), collect(),
  collect_one().

- `entity`:

  Optional entity to iterate (NULL for global search).

- `offset_id`:

  Integer offset id start.

- `min_id`:

  Integer minimum id (exclusive).

- `max_id`:

  Integer maximum id (exclusive).

- `from_user`:

  Optional user entity to filter from.

- `offset_date`:

  POSIXct or Date to offset by date.

- `add_offset`:

  Integer additional offset.

- `filter`:

  Optional filter object or constructor.

- `search`:

  Optional text query.

- `reply_to`:

  Optional message id to iterate replies to.

- `scheduled`:

  Logical; if TRUE, scheduled messages history is used.

- `reverse`:

  Logical; if TRUE, oldest to newest.

- `wait_time`:

  Optional per-request sleep in seconds.

- `limit`:

  Integer or Inf, maximum messages to yield.

------------------------------------------------------------------------

### Method `load_next_chunk()`

#### Usage

    MessagesIter$load_next_chunk()

#### Returns

A list of messages for this chunk or NULL if exhausted.

------------------------------------------------------------------------

### Method `has_next()`

#### Usage

    MessagesIter$has_next()

#### Returns

logical indicating whether there are more items to fetch or buffered.
Get the next item, fetching more if needed

------------------------------------------------------------------------

### Method `.next()`

#### Usage

    MessagesIter$.next()

#### Returns

A single message object or NULL if exhausted.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessagesIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
