# GetCountriesListRequest

Telegram API type GetCountriesListRequest

## Details

GetCountriesListRequest R6 class

Request to get the list of countries (possibly not modified).

## Public fields

- `langCode`:

  Field.

## Methods

### Public methods

- [`GetCountriesListRequest$new()`](#method-GetCountriesListRequest-new)

- [`GetCountriesListRequest$to_list()`](#method-GetCountriesListRequest-to_list)

- [`GetCountriesListRequest$to_bytes()`](#method-GetCountriesListRequest-to_bytes)

- [`GetCountriesListRequest$clone()`](#method-GetCountriesListRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize GetCountriesListRequest

#### Usage

    GetCountriesListRequest$new(langCode = "", hash = 0L)

#### Arguments

- `langCode`:

  character

- `hash`:

  integer Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GetCountriesListRequest$to_list()

#### Returns

list with \`\_\` discriminator, lang_code and hash Serialize to bytes
(raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    GetCountriesListRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetCountriesListRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
