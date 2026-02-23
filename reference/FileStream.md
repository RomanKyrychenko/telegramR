# FileStream

Telegram API type FileStream

## Details

FileStream Class A class to handle file streams from various sources.

## Public fields

- `file`:

  The original file input (path, raw vector, or connection).

- `file_size`:

  The size of the file in bytes.

- `name`:

  The name of the file (if applicable).

- `stream`:

  The underlying connection or raw connection.

- `close_stream`:

  Logical indicating if the stream should be closed on cleanup.

## Methods

### Public methods

- [`FileStream$new()`](#method-FileStream-new)

- [`FileStream$read()`](#method-FileStream-read)

- [`FileStream$close()`](#method-FileStream-close)

- [`FileStream$get_file_size()`](#method-FileStream-get_file_size)

- [`FileStream$get_name()`](#method-FileStream-get_name)

- [`FileStream$clone()`](#method-FileStream-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes the FileStream.

#### Usage

    FileStream$new(file, file_size = NULL)

#### Arguments

- `file`:

  A file path (character), raw vector, or connection.

- `file_size`:

  Optional size of the file in bytes (if known).

#### Returns

A new FileStream instance.

------------------------------------------------------------------------

### Method `read()`

Reads data from the stream.

#### Usage

    FileStream$read(n = -1)

#### Arguments

- `n`:

  Number of bytes to read; defaults to -1 (read all remaining).

#### Returns

A raw vector containing the read data.

------------------------------------------------------------------------

### Method [`close()`](https://rdrr.io/r/base/connections.html)

Closes the stream if it was opened by the class.

#### Usage

    FileStream$close()

#### Returns

None.

------------------------------------------------------------------------

### Method `get_file_size()`

Gets the size of the file.

#### Usage

    FileStream$get_file_size()

#### Returns

The size of the file in bytes.

------------------------------------------------------------------------

### Method `get_name()`

Gets the name of the file.

#### Usage

    FileStream$get_name()

#### Returns

The name of the file.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    FileStream$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
