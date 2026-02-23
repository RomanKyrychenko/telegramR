# Folder

Telegram API type Folder

## Public fields

- `id`:

  Field.

- `title`:

  Field.

- `autofill_new_broadcasts`:

  Field.

- `autofill_public_groups`:

  Field.

- `autofill_new_correspondents`:

  Field.

- `photo`:

  Field.

## Methods

### Public methods

- [`Folder$new()`](#method-Folder-new)

- [`Folder$to_list()`](#method-Folder-to_list)

- [`Folder$clone()`](#method-Folder-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    Folder$new(
      id,
      title,
      autofill_new_broadcasts = NULL,
      autofill_public_groups = NULL,
      autofill_new_correspondents = NULL,
      photo = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    Folder$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Folder$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
