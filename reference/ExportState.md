# Export State Class

This class manages the state of exported MTProto senders, including
tracking the number of borrowed senders and the time since the last
borrowed sender was returned.

## Details

Tracks the state of exported MTProto senders

## Methods

### Public methods

- [`ExportState$new()`](#method-ExportState-new)

- [`ExportState$add_borrow()`](#method-ExportState-add_borrow)

- [`ExportState$add_return()`](#method-ExportState-add_return)

- [`ExportState$should_disconnect()`](#method-ExportState-should_disconnect)

- [`ExportState$need_connect()`](#method-ExportState-need_connect)

- [`ExportState$mark_disconnected()`](#method-ExportState-mark_disconnected)

- [`ExportState$clone()`](#method-ExportState-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the ExportState class

#### Usage

    ExportState$new()

#### Returns

None.

------------------------------------------------------------------------

### Method `add_borrow()`

Add a borrowed sender

#### Usage

    ExportState$add_borrow()

#### Returns

None.

------------------------------------------------------------------------

### Method `add_return()`

Return a borrowed sender

#### Usage

    ExportState$add_return()

#### Returns

None.

------------------------------------------------------------------------

### Method `should_disconnect()`

Check if the sender should be disconnected

#### Usage

    ExportState$should_disconnect()

#### Returns

TRUE if should disconnect, FALSE otherwise.

------------------------------------------------------------------------

### Method `need_connect()`

Check if the sender needs to connect

#### Usage

    ExportState$need_connect()

#### Returns

TRUE if needs to connect, FALSE otherwise.

------------------------------------------------------------------------

### Method `mark_disconnected()`

Mark the sender as disconnected

#### Usage

    ExportState$mark_disconnected()

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ExportState$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
