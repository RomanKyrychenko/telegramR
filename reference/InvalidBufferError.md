# InvalidBufferError

Telegram API type InvalidBufferError

## Details

InvalidBufferError

## Super class

[`telegramR::Exception`](https://romankyrychenko.github.io/telegramR/reference/Exception.md)
-\> `InvalidBufferError`

## Public fields

- `payload`:

  `raw` The invalid buffer payload.

- `code`:

  `numeric` The HTTP error code.

## Methods

### Public methods

- [`InvalidBufferError$new()`](#method-InvalidBufferError-new)

- [`InvalidBufferError$clone()`](#method-InvalidBufferError-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the InvalidBufferError class.

#### Usage

    InvalidBufferError$new(payload)

#### Arguments

- `payload`:

  `raw` The invalid buffer payload.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvalidBufferError$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
