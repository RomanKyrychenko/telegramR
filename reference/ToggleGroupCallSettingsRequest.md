# ToggleGroupCallSettingsRequest

Telegram API type ToggleGroupCallSettingsRequest

## Details

ToggleGroupCallSettingsRequest R6 class

Represents ToggleGroupCallSettingsRequest TLRequest.

## Public fields

- `call`:

  Field.

- `reset_invite_hash`:

  Field.

- `join_muted`:

  Field.

## Methods

### Public methods

- [`ToggleGroupCallSettingsRequest$new()`](#method-ToggleGroupCallSettingsRequest-new)

- [`ToggleGroupCallSettingsRequest$resolve()`](#method-ToggleGroupCallSettingsRequest-resolve)

- [`ToggleGroupCallSettingsRequest$to_list()`](#method-ToggleGroupCallSettingsRequest-to_list)

- [`ToggleGroupCallSettingsRequest$bytes()`](#method-ToggleGroupCallSettingsRequest-bytes)

- [`ToggleGroupCallSettingsRequest$from_reader()`](#method-ToggleGroupCallSettingsRequest-from_reader)

- [`ToggleGroupCallSettingsRequest$clone()`](#method-ToggleGroupCallSettingsRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ToggleGroupCallSettingsRequest

#### Usage

    ToggleGroupCallSettingsRequest$new(
      call,
      reset_invite_hash = NULL,
      join_muted = NULL
    )

#### Arguments

- `call`:

  Input group call (object).

- `reset_invite_hash`:

  Logical or NULL.

- `join_muted`:

  Logical or NULL.

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    ToggleGroupCallSettingsRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call method.

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    ToggleGroupCallSettingsRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. This implementation
assumes \`self\$call\` exposes a bytes() method returning a raw vector.

#### Usage

    ToggleGroupCallSettingsRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ToggleGroupCallSettingsRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleGroupCallSettingsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
