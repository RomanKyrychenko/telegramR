# BindTempAuthKeyRequest

Telegram API type BindTempAuthKeyRequest

## Details

BindTempAuthKeyRequest R6 class

Represents the TLRequest auth.BindTempAuthKeyRequest.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `perm_auth_key_id`:

  Field.

- `nonce`:

  Field.

- `expires_at`:

  Field.

- `encrypted_message`:

  Field.

## Methods

### Public methods

- [`BindTempAuthKeyRequest$new()`](#method-BindTempAuthKeyRequest-new)

- [`BindTempAuthKeyRequest$to_list()`](#method-BindTempAuthKeyRequest-to_list)

- [`BindTempAuthKeyRequest$to_bytes()`](#method-BindTempAuthKeyRequest-to_bytes)

- [`BindTempAuthKeyRequest$from_reader()`](#method-BindTempAuthKeyRequest-from_reader)

- [`BindTempAuthKeyRequest$clone()`](#method-BindTempAuthKeyRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a BindTempAuthKeyRequest

#### Usage

    BindTempAuthKeyRequest$new(
      perm_auth_key_id,
      nonce,
      expires_at = NULL,
      encrypted_message
    )

#### Arguments

- `perm_auth_key_id`:

  numeric or integer (64-bit)

- `nonce`:

  numeric or integer (64-bit)

- `expires_at`:

  POSIXct\|Date or NULL

- `encrypted_message`:

  raw vector or string

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (similar to to_dict)

#### Usage

    BindTempAuthKeyRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes

#### Usage

    BindTempAuthKeyRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

Read from reader and create BindTempAuthKeyRequest

#### Usage

    BindTempAuthKeyRequest$from_reader(reader)

#### Arguments

- `reader`:

  Reader object implementing read_long(), tgread_date(), tgread_bytes()

#### Returns

BindTempAuthKeyRequest instance

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BindTempAuthKeyRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
