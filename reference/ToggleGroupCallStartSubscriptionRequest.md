# ToggleGroupCallStartSubscriptionRequest

Telegram API type ToggleGroupCallStartSubscriptionRequest

## Details

ToggleGroupCallStartSubscriptionRequest R6 class

Represents ToggleGroupCallStartSubscriptionRequest TLRequest.

## Public fields

- `call`:

  Field.

- `subscribed`:

  Field.

## Methods

### Public methods

- [`ToggleGroupCallStartSubscriptionRequest$new()`](#method-ToggleGroupCallStartSubscriptionRequest-new)

- [`ToggleGroupCallStartSubscriptionRequest$resolve()`](#method-ToggleGroupCallStartSubscriptionRequest-resolve)

- [`ToggleGroupCallStartSubscriptionRequest$to_list()`](#method-ToggleGroupCallStartSubscriptionRequest-to_list)

- [`ToggleGroupCallStartSubscriptionRequest$bytes()`](#method-ToggleGroupCallStartSubscriptionRequest-bytes)

- [`ToggleGroupCallStartSubscriptionRequest$from_reader()`](#method-ToggleGroupCallStartSubscriptionRequest-from_reader)

- [`ToggleGroupCallStartSubscriptionRequest$clone()`](#method-ToggleGroupCallStartSubscriptionRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ToggleGroupCallStartSubscriptionRequest

#### Usage

    ToggleGroupCallStartSubscriptionRequest$new(call, subscribed)

#### Arguments

- `call`:

  Input group call (object).

- `subscribed`:

  Logical (TRUE/FALSE).

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

#### Usage

    ToggleGroupCallStartSubscriptionRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call method.

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    ToggleGroupCallStartSubscriptionRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

This constructs the TL-serialized bytes. Assumes \`call\$bytes()\`
exists.

#### Usage

    ToggleGroupCallStartSubscriptionRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ToggleGroupCallStartSubscriptionRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleGroupCallStartSubscriptionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
