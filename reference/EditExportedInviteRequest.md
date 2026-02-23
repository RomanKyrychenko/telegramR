# EditExportedInviteRequest

Telegram API type EditExportedInviteRequest

## Details

EditExportedInviteRequest R6 class

Request to edit an exported invite for a chatlist (optional title and
peers).

## Public fields

- `chatlist`:

  Field.

- `slug`:

  Field.

- `title`:

  Field.

- `peers`:

  Field.

## Methods

### Public methods

- [`EditExportedInviteRequest$new()`](#method-EditExportedInviteRequest-new)

- [`EditExportedInviteRequest$resolve()`](#method-EditExportedInviteRequest-resolve)

- [`EditExportedInviteRequest$to_list()`](#method-EditExportedInviteRequest-to_list)

- [`EditExportedInviteRequest$bytes()`](#method-EditExportedInviteRequest-bytes)

- [`EditExportedInviteRequest$from_reader()`](#method-EditExportedInviteRequest-from_reader)

- [`EditExportedInviteRequest$clone()`](#method-EditExportedInviteRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize EditExportedInviteRequest

#### Usage

    EditExportedInviteRequest$new(
      chatlist = NULL,
      slug = NULL,
      title = NULL,
      peers = NULL
    )

#### Arguments

- `chatlist`:

  Input chatlist object

- `slug`:

  Invite slug (string)

- `title`:

  Optional invite title (string)

- `peers`:

  Optional list of input peers Resolve peer entities to input peers

  Iterates over peers, resolves each via client and utils and replaces
  the peers field with input_peer objects.

------------------------------------------------------------------------

### Method `resolve()`

#### Usage

    EditExportedInviteRequest$resolve(client, utils)

#### Arguments

- `client`:

  Client object that provides get_input_entity

- `utils`:

  Utilities that provide get_input_peer

#### Returns

Invisible self Convert to list (dictionary-like)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    EditExportedInviteRequest$to_list()

#### Returns

A named list representation Serialize to raw bytes

Serializes constructor id, flags, chatlist, slug, optional title and
optional peers vector.

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    EditExportedInviteRequest$bytes()

#### Returns

raw vector with serialized bytes

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    EditExportedInviteRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditExportedInviteRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
