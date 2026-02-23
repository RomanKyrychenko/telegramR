# EditGroupCallTitleRequest

Telegram API type EditGroupCallTitleRequest

## Details

EditGroupCallTitleRequest R6 class

Represents EditGroupCallTitleRequest TLRequest.

## Public fields

- `call`:

  Field.

- `title`:

  Field.

## Methods

### Public methods

- [`EditGroupCallTitleRequest$new()`](#method-EditGroupCallTitleRequest-new)

- [`EditGroupCallTitleRequest$resolve()`](#method-EditGroupCallTitleRequest-resolve)

- [`EditGroupCallTitleRequest$to_list()`](#method-EditGroupCallTitleRequest-to_list)

- [`EditGroupCallTitleRequest$bytes()`](#method-EditGroupCallTitleRequest-bytes)

- [`EditGroupCallTitleRequest$from_reader()`](#method-EditGroupCallTitleRequest-from_reader)

- [`EditGroupCallTitleRequest$clone()`](#method-EditGroupCallTitleRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize an EditGroupCallTitleRequest

#### Usage

    EditGroupCallTitleRequest$new(call, title)

#### Arguments

- `call`:

  Input group call object.

- `title`:

  String title.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `resolve()`

Resolve input references

Typically used to convert high-level entities into input objects.

#### Usage

    EditGroupCallTitleRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object (passed to utils functions).

- `utils`:

  Utility object with get_input_group_call method.

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    EditGroupCallTitleRequest$to_list()

#### Returns

A named list representing the request.

------------------------------------------------------------------------

### Method `bytes()`

Produce raw bytes for the request

Builds the TL-serialized byte representation. Assumes dependent objects
provide bytes().

#### Usage

    EditGroupCallTitleRequest$bytes()

#### Returns

raw vector (bytes). If dependent objects don't provide bytes(), a
warning is emitted and raw(0) is returned.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    EditGroupCallTitleRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditGroupCallTitleRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
