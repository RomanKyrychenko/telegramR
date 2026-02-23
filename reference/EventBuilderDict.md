# EventBuilderDict

Telegram API type EventBuilderDict

## Details

EventBuilderDict class

## Public fields

- `client`:

  The Telegram client instance.

- `update`:

  The update data.

- `others`:

  Additional data for building events.

- `cache`:

  A cache for built events.

## Methods

### Public methods

- [`EventBuilderDict$new()`](#method-EventBuilderDict-new)

- [`EventBuilderDict$get()`](#method-EventBuilderDict-get)

- [`EventBuilderDict$clone()`](#method-EventBuilderDict-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes the EventBuilderDict with the given client, update, and
others.

#### Usage

    EventBuilderDict$new(client, update, others)

#### Arguments

- `client`:

  The Telegram client instance.

- `update`:

  The update data.

- `others`:

  Additional data for building events.

#### Returns

None.

------------------------------------------------------------------------

### Method [`get()`](https://rdrr.io/r/base/get.html)

Builds an event from the given builder.

#### Usage

    EventBuilderDict$get(builder)

#### Arguments

- `builder`:

  The builder to use for building the event.

#### Returns

The built event.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EventBuilderDict$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
