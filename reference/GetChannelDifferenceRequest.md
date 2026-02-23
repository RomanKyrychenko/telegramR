# GetChannelDifferenceRequest

Telegram API type GetChannelDifferenceRequest

## Details

GetChannelDifferenceRequest R6 class

Representation of updates.GetChannelDifference request.

## Public fields

- `channel`:

  Field.

- `filter`:

  Field.

- `pts`:

  Field.

- `limit`:

  Field.

- `force`:

  Field.

## Methods

### Public methods

- [`GetChannelDifferenceRequest$new()`](#method-GetChannelDifferenceRequest-new)

- [`GetChannelDifferenceRequest$to_list()`](#method-GetChannelDifferenceRequest-to_list)

- [`GetChannelDifferenceRequest$bytes()`](#method-GetChannelDifferenceRequest-bytes)

- [`GetChannelDifferenceRequest$from_reader()`](#method-GetChannelDifferenceRequest-from_reader)

- [`GetChannelDifferenceRequest$clone()`](#method-GetChannelDifferenceRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes a new GetChannelDifferenceRequest.

#### Usage

    GetChannelDifferenceRequest$new(channel, filter, pts, limit, force = NULL)

#### Arguments

- `channel`:

  TypeInputChannel Input channel (R6 object with bytes() or raw

- `filter`:

  TypeChannelMessagesFilter Filter (R6 object with bytes() or raw())

- `pts`:

  integer PTS

- `limit`:

  integer Limit

- `force`:

  logical\|NULL Optional force flag

------------------------------------------------------------------------

### Method `to_list()`

Converts the request to a list representation.

#### Usage

    GetChannelDifferenceRequest$to_list()

#### Returns

A list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the request to raw bytes.

#### Usage

    GetChannelDifferenceRequest$bytes()

#### Returns

A raw vector representing the serialized request.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetChannelDifferenceRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetChannelDifferenceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
