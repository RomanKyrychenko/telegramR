# BadMessageError

Telegram API type BadMessageError

## Details

BadMessageError

## Super class

[`telegramR::Exception`](https://romankyrychenko.github.io/telegramR/reference/Exception.md)
-\> `BadMessageError`

## Public fields

- `request`:

  `TLRequest` The request that caused the error.

- `code`:

  `numeric` The error code.

- `ErrorMessages`:

  `list` A list of error messages corresponding to the error codes.

## Methods

### Public methods

- [`BadMessageError$new()`](#method-BadMessageError-new)

- [`BadMessageError$clone()`](#method-BadMessageError-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the BadMessageError class.

#### Usage

    BadMessageError$new(request, code)

#### Arguments

- `request`:

  `TLRequest` The request that caused the error.

- `code`:

  `numeric` The error code.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BadMessageError$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
