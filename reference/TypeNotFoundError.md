# TypeNotFoundError

Telegram API type TypeNotFoundError

## Details

TypeNotFoundError

## Super class

[`telegramR::Exception`](https://romankyrychenko.github.io/telegramR/reference/Exception.md)
-\> `TypeNotFoundError`

## Public fields

- `invalid_constructor_id`:

  `numeric` The invalid constructor ID.

- `remaining`:

  `character` The remaining bytes in the buffer.

## Methods

### Public methods

- [`TypeNotFoundError$new()`](#method-TypeNotFoundError-new)

- [`TypeNotFoundError$clone()`](#method-TypeNotFoundError-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the TypeNotFoundError class.

#### Usage

    TypeNotFoundError$new(invalid_constructor_id, remaining)

#### Arguments

- `invalid_constructor_id`:

  `numeric` The invalid constructor ID.

- `remaining`:

  `character` The remaining bytes in the buffer.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TypeNotFoundError$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
