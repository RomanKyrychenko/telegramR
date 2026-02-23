# ToggleGroupCallRecordRequest

Telegram API type ToggleGroupCallRecordRequest

## Details

ToggleGroupCallRecordRequest R6 class

Represents ToggleGroupCallRecordRequest TLRequest.

## Public fields

- `call`:

  Field.

- `start`:

  Field.

- `video`:

  Field.

- `title`:

  Field.

- `video_portrait`:

  Field.

## Methods

### Public methods

- [`ToggleGroupCallRecordRequest$new()`](#method-ToggleGroupCallRecordRequest-new)

- [`ToggleGroupCallRecordRequest$resolve()`](#method-ToggleGroupCallRecordRequest-resolve)

- [`ToggleGroupCallRecordRequest$to_list()`](#method-ToggleGroupCallRecordRequest-to_list)

- [`ToggleGroupCallRecordRequest$bytes()`](#method-ToggleGroupCallRecordRequest-bytes)

- [`ToggleGroupCallRecordRequest$from_reader()`](#method-ToggleGroupCallRecordRequest-from_reader)

- [`ToggleGroupCallRecordRequest$clone()`](#method-ToggleGroupCallRecordRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a ToggleGroupCallRecordRequest

#### Usage

    ToggleGroupCallRecordRequest$new(
      call,
      start = NULL,
      video = NULL,
      title = NULL,
      video_portrait = NULL
    )

#### Arguments

- `call`:

  Input group call (object).

- `start`:

  Logical or NULL.

- `video`:

  Logical or NULL.

- `title`:

  Optional string or NULL.

- `video_portrait`:

  Logical or NULL.

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

#### Usage

    ToggleGroupCallRecordRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call method.

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    ToggleGroupCallRecordRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

This constructs the TL-serialized bytes. Assumes \`call\$bytes()\`
exists.

#### Usage

    ToggleGroupCallRecordRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    ToggleGroupCallRecordRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleGroupCallRecordRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
