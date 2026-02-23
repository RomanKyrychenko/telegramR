# FinishJobRequest

Telegram API type FinishJobRequest

## Details

FinishJobRequest R6 class

Representation of the FinishJobRequest TLRequest.

Encodes constructor id, flags (bit 0 for error), job_id and optional
error.

## Public fields

- `job_id`:

  Field.

- `error`:

  Field.

- `lock_class`:

  Field.

## Active bindings

- `lock_class`:

  Field.

## Methods

### Public methods

- [`FinishJobRequest$new()`](#method-FinishJobRequest-new)

- [`FinishJobRequest$to_list()`](#method-FinishJobRequest-to_list)

- [`FinishJobRequest$bytes()`](#method-FinishJobRequest-bytes)

- [`FinishJobRequest$from_reader()`](#method-FinishJobRequest-from_reader)

- [`FinishJobRequest$clone()`](#method-FinishJobRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a FinishJobRequest

#### Usage

    FinishJobRequest$new(job_id, error = NULL)

#### Arguments

- `job_id`:

  character

- `error`:

  character or NULL

#### Returns

self

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    FinishJobRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Get raw bytes for this constructor

#### Usage

    FinishJobRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    FinishJobRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    FinishJobRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
