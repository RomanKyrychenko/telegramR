# AcceptTermsOfServiceRequest

Telegram API type AcceptTermsOfServiceRequest

## Details

AcceptTermsOfServiceRequest R6 class

Accept terms of service (help.TermsOfService). Serializes a DataJSON id.

## Public fields

- `id`:

  Field.

## Methods

### Public methods

- [`AcceptTermsOfServiceRequest$new()`](#method-AcceptTermsOfServiceRequest-new)

- [`AcceptTermsOfServiceRequest$to_list()`](#method-AcceptTermsOfServiceRequest-to_list)

- [`AcceptTermsOfServiceRequest$to_bytes()`](#method-AcceptTermsOfServiceRequest-to_bytes)

- [`AcceptTermsOfServiceRequest$clone()`](#method-AcceptTermsOfServiceRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize AcceptTermsOfServiceRequest

#### Usage

    AcceptTermsOfServiceRequest$new(id = NULL)

#### Arguments

- `id`:

  TLObject-like or raw Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    AcceptTermsOfServiceRequest$to_list()

#### Returns

list with \`\_\` discriminator and id as list (if possible) Serialize to
bytes (raw vector)

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    AcceptTermsOfServiceRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AcceptTermsOfServiceRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
