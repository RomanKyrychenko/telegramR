# GetSmsJobRequest

Telegram API type GetSmsJobRequest

## Details

GetSmsJobRequest R6 class

Representation of the GetSmsJobRequest TLRequest.

This calls a helper serialize_bytes() to encode the job_id.

## Public fields

- `job_id`:

  Field.

- `lock_class`:

  Field.

## Active bindings

- `lock_class`:

  Field.

## Methods

### Public methods

- [`GetSmsJobRequest$new()`](#method-GetSmsJobRequest-new)

- [`GetSmsJobRequest$to_list()`](#method-GetSmsJobRequest-to_list)

- [`GetSmsJobRequest$bytes()`](#method-GetSmsJobRequest-bytes)

- [`GetSmsJobRequest$from_reader()`](#method-GetSmsJobRequest-from_reader)

- [`GetSmsJobRequest$clone()`](#method-GetSmsJobRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a GetSmsJobRequest

#### Usage

    GetSmsJobRequest$new(job_id)

#### Arguments

- `job_id`:

  character

#### Returns

self

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (dictionary-like)

#### Usage

    GetSmsJobRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `bytes()`

Get raw bytes for this constructor

#### Usage

    GetSmsJobRequest$bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    GetSmsJobRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetSmsJobRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
