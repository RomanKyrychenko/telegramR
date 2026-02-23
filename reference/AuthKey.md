# AuthKey

Telegram API type AuthKey

## Details

AuthKey Class

## Public fields

- `key_id`:

  Field.

- `key_id_raw`:

  Field.

- `aux_hash`:

  Field.

- `aux_hash_raw`:

  Field.

## Active bindings

- `key`:

  Field. Direct accessor used across sender/state code.

- `active_key`:

  Field. Gets or sets the authorization key.

- `return_aux_hash`:

  Field. Gets the auxiliary hash derived from the key.

- `return_key_id`:

  Field. Gets the key identifier derived from the key.

## Methods

### Public methods

- [`AuthKey$new()`](#method-AuthKey-new)

- [`AuthKey$calc_new_nonce_hash()`](#method-AuthKey-calc_new_nonce_hash)

- [`AuthKey$is_valid()`](#method-AuthKey-is_valid)

- [`AuthKey$equals()`](#method-AuthKey-equals)

- [`AuthKey$clone()`](#method-AuthKey-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes a new authorization key.

#### Usage

    AuthKey$new(data)

#### Arguments

- `data`:

  A raw vector representing the authorization key data.

#### Returns

None.

------------------------------------------------------------------------

### Method `calc_new_nonce_hash()`

Calculates the new nonce hash based on the current attributes.

#### Usage

    AuthKey$calc_new_nonce_hash(new_nonce, number)

#### Arguments

- `new_nonce`:

  A raw vector representing the new nonce.

- `number`:

  An integer to prepend before the hash.

#### Returns

An integer representing the hash for the given new nonce.

------------------------------------------------------------------------

### Method `is_valid()`

Checks if the authorization key is valid.

#### Usage

    AuthKey$is_valid()

#### Returns

A logical value indicating whether the key is valid.

------------------------------------------------------------------------

### Method `equals()`

Compares the current key with another key.

#### Usage

    AuthKey$equals(other)

#### Arguments

- `other`:

  An instance of AuthKey to compare with.

#### Returns

A logical value indicating whether the keys are equal.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AuthKey$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
