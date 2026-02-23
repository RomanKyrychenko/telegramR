# RequestState

Holds information relevant to sent messages, including the message ID
assigned to the request, the container ID to which it belongs, the
request itself, the request as raw bytes, and a future result.

## Public fields

- `container_id`:

  Field.

- `msg_id`:

  Field.

- `request`:

  Field.

- `data`:

  Field.

- `future`:

  Field.

- `after`:

  Field.

## Methods

### Public methods

- [`RequestState$new()`](#method-RequestState-new)

- [`RequestState$clone()`](#method-RequestState-clone)

------------------------------------------------------------------------

### Method `new()`

Creates a new RequestState instance.

#### Usage

    RequestState$new(request, after = NULL)

#### Arguments

- `request`:

  The request object.

- `after`:

  Optional additional parameter. Defaults to NULL.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    RequestState$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
