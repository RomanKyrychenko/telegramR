# Exception

Telegram API type Exception

## Details

The classes defined in this file include: - \`Exception\`: A base class
for all exceptions. - \`ReadCancelledError\`: Raised when a read
operation is cancelled. - \`TypeNotFoundError\`: Raised when a type is
not found. - \`InvalidChecksumError\`: Raised when a checksum is
invalid. - \`InvalidBufferError\`: Raised when a buffer is invalid. -
\`AuthKeyNotFound\`: Raised when an authorization key is not found. -
\`SecurityError\`: Raised when a security check fails. -
\`CdnFileTamperedError\`: Raised when a CDN file is tampered with. -
\`AlreadyInConversationError\`: Raised when another exclusive
conversation is opened in the same chat. - \`BadMessageError\`: Raised
when handling a bad message notification. - \`MultiError\`: A container
for multiple exceptions.

## Public fields

- `message`:

  `character` The error message.

## Methods

### Public methods

- [`Exception$new()`](#method-Exception-new)

- [`Exception$clone()`](#method-Exception-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the Exception class.

#### Usage

    Exception$new(message = "An error occurred.")

#### Arguments

- `message`:

  `character` The error message.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Exception$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
