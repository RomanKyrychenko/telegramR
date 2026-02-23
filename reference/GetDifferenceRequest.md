# GetDifferenceRequest

Telegram API type GetDifferenceRequest

Telegram API type GetDifferenceRequest

## Details

GetDifferenceRequest R6 class

TLRequest: GetDifferenceRequest

GetDifferenceRequest R6 class

Representation of updates.GetDifference request.

## Public fields

- `lang_pack`:

  Field.

- `lang_code`:

  Field.

- `from_version`:

  Field.

## Active bindings

- `lang_pack`:

  Field.

- `lang_code`:

  Field.

- `from_version`:

  Field.

## Methods

### Public methods

- [`GetDifferenceRequest$new()`](#method-GetDifferenceRequest-new)

- [`GetDifferenceRequest$to_list()`](#method-GetDifferenceRequest-to_list)

- [`GetDifferenceRequest$bytes()`](#method-GetDifferenceRequest-bytes)

- [`GetDifferenceRequest$from_reader()`](#method-GetDifferenceRequest-from_reader)

- [`GetDifferenceRequest$clone()`](#method-GetDifferenceRequest-clone)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    GetDifferenceRequest$new(
      pts,
      date = NULL,
      qts,
      pts_limit = NULL,
      pts_total_limit = NULL,
      qts_limit = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetDifferenceRequest$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    GetDifferenceRequest$bytes()

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetDifferenceRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetDifferenceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.

## Public fields

- `pts`:

  Field.

- `date`:

  Field.

- `qts`:

  Field.

- `pts_limit`:

  Field.

- `pts_total_limit`:

  Field.

- `qts_limit`:

  Field.

## Methods

### Public methods

- [`GetDifferenceRequest$new()`](#method-GetDifferenceRequest-new)

- [`GetDifferenceRequest$to_list()`](#method-GetDifferenceRequest-to_list)

- [`GetDifferenceRequest$bytes()`](#method-GetDifferenceRequest-bytes)

- [`GetDifferenceRequest$from_reader()`](#method-GetDifferenceRequest-from_reader)

- [`GetDifferenceRequest$clone()`](#method-GetDifferenceRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Converts the request to a list representation.

#### Usage

    GetDifferenceRequest$new(
      pts,
      date = NULL,
      qts,
      pts_limit = NULL,
      pts_total_limit = NULL,
      qts_limit = NULL
    )

#### Arguments

- `pts`:

  integer PTS

- `date`:

  POSIXct\|NULL Date

- `qts`:

  integer QTS

- `pts_limit`:

  integer\|NULL Optional pts_limit

- `pts_total_limit`:

  integer\|NULL Optional pts_total_limit

- `qts_limit`:

  integer\|NULL Optional qts_limit

------------------------------------------------------------------------

### Method `to_list()`

Initializes a new GetDifferenceRequest.

#### Usage

    GetDifferenceRequest$to_list()

#### Returns

A new GetDifferenceRequest instance.

------------------------------------------------------------------------

### Method `bytes()`

Converts the request to a list representation.

#### Usage

    GetDifferenceRequest$bytes()

#### Returns

A list representing the request.

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetDifferenceRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetDifferenceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
