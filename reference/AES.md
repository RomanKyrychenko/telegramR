# AES

Telegram API type AES

## Details

R6 Class Representing AES Encryption and Decryption

A pure R implementation of AES IGE mode encryption and decryption.

## Methods

### Public methods

- [`AES$decrypt_ige()`](#method-AES-decrypt_ige)

- [`AES$encrypt_ige()`](#method-AES-encrypt_ige)

- [`AES$clone()`](#method-AES-clone)

------------------------------------------------------------------------

### Method `decrypt_ige()`

Decrypts the given text in 16-byte blocks using the provided key and IV.

#### Usage

    AES$decrypt_ige(cipher_text, key, iv)

#### Arguments

- `cipher_text`:

  A raw vector representing the encrypted text.

- `key`:

  A raw vector representing the encryption key.

- `iv`:

  A raw vector representing the 32-byte initialization vector.

#### Returns

A raw vector representing the decrypted text.

------------------------------------------------------------------------

### Method `encrypt_ige()`

Encrypts the given text in 16-byte blocks using the provided key and IV.

#### Usage

    AES$encrypt_ige(plain_text, key, iv)

#### Arguments

- `plain_text`:

  A raw vector representing the text to encrypt.

- `key`:

  A raw vector representing the encryption key.

- `iv`:

  A raw vector representing the 32-byte initialization vector.

#### Returns

A raw vector representing the encrypted text.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AES$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
