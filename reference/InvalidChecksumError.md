# InvalidChecksumError

Telegram API type InvalidChecksumError

## Details

InvalidChecksumError

## Super class

[`telegramR::Exception`](https://romankyrychenko.github.io/telegramR/reference/Exception.md)
-\> `InvalidChecksumError`

## Public fields

- `checksum`:

  `numeric` The received checksum.

- `valid_checksum`:

  `numeric` The expected checksum.

## Methods

### Public methods

- [`InvalidChecksumError$new()`](#method-InvalidChecksumError-new)

- [`InvalidChecksumError$clone()`](#method-InvalidChecksumError-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the InvalidChecksumError class.

#### Usage

    InvalidChecksumError$new(checksum, valid_checksum)

#### Arguments

- `checksum`:

  `numeric` The received checksum.

- `valid_checksum`:

  `numeric` The expected checksum.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InvalidChecksumError$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
