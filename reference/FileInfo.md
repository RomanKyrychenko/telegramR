# FileInfo

Telegram API type FileInfo

## Details

FileInfo Class

An R6 class representing file information with dc_id, location, and
size.

## Public fields

- `dc_id`:

  The data center ID.

- `location`:

  The file location.

- `size`:

  The file size.

## Methods

### Public methods

- [`FileInfo$new()`](#method-FileInfo-new)

- [`FileInfo$clone()`](#method-FileInfo-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the FileInfo object.

#### Usage

    FileInfo$new(dc_id, location, size)

#### Arguments

- `dc_id`:

  The data center ID.

- `location`:

  The file location.

- `size`:

  The file size.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    FileInfo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
