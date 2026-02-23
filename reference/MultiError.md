# MultiError

Telegram API type MultiError

## Details

MultiError

## Super class

[`telegramR::Exception`](https://romankyrychenko.github.io/telegramR/reference/Exception.md)
-\> `MultiError`

## Public fields

- `exceptions`:

  `list` A list of exceptions.

- `results`:

  `list` A list of results.

- `requests`:

  `list` A list of requests.

## Methods

### Public methods

- [`MultiError$new()`](#method-MultiError-new)

- [`MultiError$clone()`](#method-MultiError-clone)

------------------------------------------------------------------------

### Method `new()`

Constructor for the MultiError class.

#### Usage

    MultiError$new(exceptions, results, requests)

#### Arguments

- `exceptions`:

  `list` A list of exceptions.

- `results`:

  `list` A list of results.

- `requests`:

  `list` A list of requests.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MultiError$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
