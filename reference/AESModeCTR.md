# AESModeCTR

A wrapper around AES CTR mode with custom IV using the \`digest\`
library. This class provides methods to encrypt and decrypt data using
AES CTR mode. It initializes with a key and a 16-byte initialization
vector (IV).

## Public fields

- `key`:

  The encryption key as a raw vector.

- `iv`:

  The initialization vector (IV) as a 16-byte raw vector.

## Methods

### Public methods

- [`AESModeCTR$new()`](#method-AESModeCTR-new)

- [`AESModeCTR$encrypt()`](#method-AESModeCTR-encrypt)

- [`AESModeCTR$decrypt()`](#method-AESModeCTR-decrypt)

- [`AESModeCTR$clone()`](#method-AESModeCTR-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the AES CTR mode with the given key and IV.

#### Usage

    AESModeCTR$new(key, iv)

#### Arguments

- `key`:

  A raw vector representing the encryption key (16 bytes).

- `iv`:

  A raw vector representing the initialization vector (16 bytes).

------------------------------------------------------------------------

### Method [`encrypt()`](https://romankyrychenko.github.io/telegramR/reference/encrypt.md)

Encrypt the given plain text using AES CTR mode.

#### Usage

    AESModeCTR$encrypt(data)

#### Arguments

- `data`:

  A raw vector representing the plain text to encrypt.

#### Returns

A raw vector representing the encrypted cipher text.

------------------------------------------------------------------------

### Method `decrypt()`

Decrypt the given cipher text using AES CTR mode.

#### Usage

    AESModeCTR$decrypt(data)

#### Arguments

- `data`:

  A raw vector representing the cipher text to decrypt.

#### Returns

A raw vector representing the decrypted plain text.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AESModeCTR$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
