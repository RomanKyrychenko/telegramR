# EditPeerFoldersRequest

Telegram API type EditPeerFoldersRequest

## Value

An R6 object of class EditPeerFoldersRequest

## Details

EditPeerFoldersRequest R6 class

Represents the TL request EditPeerFoldersRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `folder_peers`:

  Field.

## Methods

### Public methods

- [`EditPeerFoldersRequest$new()`](#method-EditPeerFoldersRequest-new)

- [`EditPeerFoldersRequest$to_list()`](#method-EditPeerFoldersRequest-to_list)

- [`EditPeerFoldersRequest$to_raw()`](#method-EditPeerFoldersRequest-to_raw)

- [`EditPeerFoldersRequest$clone()`](#method-EditPeerFoldersRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize EditPeerFoldersRequest

#### Usage

    EditPeerFoldersRequest$new(folder_peers = list())

#### Arguments

- `folder_peers`:

  list List of InputFolderPeer objects

------------------------------------------------------------------------

### Method `to_list()`

Convert to a serializable R list (similar to to_dict)

#### Usage

    EditPeerFoldersRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_raw()`

Serialize to raw bytes. Expects folder_peers elements to provide
to_raw()

#### Usage

    EditPeerFoldersRequest$to_raw()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    EditPeerFoldersRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
