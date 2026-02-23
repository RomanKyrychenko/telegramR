# MessagePacker

Telegram API type MessagePacker

## Details

MessagePacker R6 class

bytes and generate message ids via \`write_data_as_message\`.

This method also sets \`ready\` to `TRUE` to notify any waiting \`get\`
calls that new data is available.

Each element in \`states\` is appended in order. \`ready\` is set to
`TRUE` after extension.

\- If an individual message exceeds the maximum allowed size it will be
skipped and, if present, \`state_item\$future\$set_exception\` will be
called with a simple error. A warning is logged when a payload is too
large. - Logging calls are guarded so that failures in logger methods do
not interrupt packing.

## Public fields

- `state`:

  Field.

- `deque`:

  Field.

- `ready`:

  Field.

- `log`:

  Field.

- `add`:

  Field.

- `add`:

  Field.

- `content_related`:

  Field.

## Active bindings

- `add`:

  Field.

- `add`:

  Field.

- `content_related`:

  Field.

## Methods

### Public methods

- [`MessagePacker$new()`](#method-MessagePacker-new)

- [`MessagePacker$append()`](#method-MessagePacker-append)

- [`MessagePacker$extend()`](#method-MessagePacker-extend)

- [`MessagePacker$get()`](#method-MessagePacker-get)

- [`MessagePacker$clone()`](#method-MessagePacker-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a MessagePacker

#### Usage

    MessagePacker$new(state, loggers = list())

#### Arguments

- `state`:

  An object implementing \`write_data_as_message(buffer_con, data,
  ...)\` used to serialize individual messages and return their
  \`msg_id\`.

- `loggers`:

  Optional list of logger instances. If a \`"messagepacker"\` entry
  exists it will be used; otherwise the first logger in the list will be
  used as a fallback.

------------------------------------------------------------------------

### Method [`append()`](https://rdrr.io/r/base/append.html)

Append a single state item to the queue

#### Usage

    MessagePacker$append(state_item)

#### Arguments

- `state_item`:

  A list-like object representing a request payload and associated
  metadata. Items are appended to the right (tail) of the deque.

------------------------------------------------------------------------

### Method `extend()`

Extend the queue with multiple state items

#### Usage

    MessagePacker$extend(states)

#### Arguments

- `states`:

  An iterable (e.g. list) of state items to append to the queue.

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

This method blocks (simple polling) until at least one item is
available. It then accumulates items from the deque into a batch while
respecting \`MessageContainer\$MAXIMUM_LENGTH\` and
\`MessageContainer\$MAXIMUM_SIZE\`. For each included state item it
calls \`self\$state\$write_data_as_message\` to serialize the message
into a temporary raw connection and obtain a \`msg_id\`. If multiple
messages are batched they are wrapped into a container and a single
container message is produced; otherwise the single message bytes are
returned.

#### Usage

    MessagePacker$get()

#### Returns

A list of two elements: - \`batch\`: a list of state items that were
included (or NULL if none), - \`bytes\`: raw vector with serialized
bytes ready to send (or NULL if none).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessagePacker$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
