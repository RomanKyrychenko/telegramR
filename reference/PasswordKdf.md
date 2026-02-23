# PasswordKdf Class

An R6 class for handling password key derivation functions (KDF) as per
Telegram's specifications. This class provides utility methods for
checking modular exponentiation, XOR operations, PBKDF2 hashing, and
computing password hashes and digests.

## Methods

### Public methods

- [`PasswordKdf$is_good_mod_exp_first()`](#method-PasswordKdf-is_good_mod_exp_first)

- [`PasswordKdf$xor()`](#method-PasswordKdf-xor)

- [`PasswordKdf$pbkdf2sha512()`](#method-PasswordKdf-pbkdf2sha512)

- [`PasswordKdf$compute_hash()`](#method-PasswordKdf-compute_hash)

- [`PasswordKdf$compute_digest()`](#method-PasswordKdf-compute_digest)

- [`PasswordKdf$check_prime_and_good()`](#method-PasswordKdf-check_prime_and_good)

- [`PasswordKdf$check_prime_and_good_check()`](#method-PasswordKdf-check_prime_and_good_check)

- [`PasswordKdf$is_good_large()`](#method-PasswordKdf-is_good_large)

- [`PasswordKdf$num_bytes_for_hash()`](#method-PasswordKdf-num_bytes_for_hash)

- [`PasswordKdf$big_num_for_hash()`](#method-PasswordKdf-big_num_for_hash)

- [`PasswordKdf$sha256()`](#method-PasswordKdf-sha256)

- [`PasswordKdf$clone()`](#method-PasswordKdf-clone)

------------------------------------------------------------------------

### Method [`is_good_mod_exp_first()`](https://romankyrychenko.github.io/telegramR/reference/is_good_mod_exp_first.md)

Check if a modular exponentiation result is good for the first check.

#### Usage

    PasswordKdf$is_good_mod_exp_first(modexp, prime)

#### Arguments

- `modexp`:

  A big integer representing the modular exponentiation result.

- `prime`:

  A big integer representing the prime modulus.

#### Returns

A logical value indicating if the check passes.

------------------------------------------------------------------------

### Method [`xor()`](https://rdrr.io/r/base/Logic.html)

Perform XOR operation on two byte vectors.

#### Usage

    PasswordKdf$xor(a, b)

#### Arguments

- `a`:

  A raw vector (bytes).

- `b`:

  A raw vector (bytes).

#### Returns

A raw vector of the XOR result.

------------------------------------------------------------------------

### Method `pbkdf2sha512()`

Compute PBKDF2 with SHA512.

#### Usage

    PasswordKdf$pbkdf2sha512(password, salt, iterations)

#### Arguments

- `password`:

  A raw vector representing the password.

- `salt`:

  A raw vector representing the salt.

- `iterations`:

  An integer for the number of iterations.

#### Returns

A raw vector of the derived key.

------------------------------------------------------------------------

### Method `compute_hash()`

Compute the hash for the password KDF algorithm.

#### Usage

    PasswordKdf$compute_hash(algo, password)

#### Arguments

- `algo`:

  An object of type
  PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow.

- `password`:

  A string representing the password.

#### Returns

A raw vector of the computed hash.

------------------------------------------------------------------------

### Method `compute_digest()`

Compute the digest for the password KDF algorithm.

#### Usage

    PasswordKdf$compute_digest(algo, password)

#### Arguments

- `algo`:

  An object of type
  PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow.

- `password`:

  A string representing the password.

#### Returns

A raw vector of the computed digest.

------------------------------------------------------------------------

### Method [`check_prime_and_good()`](https://romankyrychenko.github.io/telegramR/reference/check_prime_and_good.md)

Check if the prime and generator are good.

#### Usage

    PasswordKdf$check_prime_and_good(prime_bytes, g)

#### Arguments

- `prime_bytes`:

  A raw vector representing the prime in bytes.

- `g`:

  An integer representing the generator.

------------------------------------------------------------------------

### Method [`check_prime_and_good_check()`](https://romankyrychenko.github.io/telegramR/reference/check_prime_and_good_check.md)

Check if the prime and generator are good with detailed checks.

#### Usage

    PasswordKdf$check_prime_and_good_check(prime, g)

#### Arguments

- `prime`:

  An integer representing the prime.

- `g`:

  An integer representing the generator.

------------------------------------------------------------------------

### Method [`is_good_large()`](https://romankyrychenko.github.io/telegramR/reference/is_good_large.md)

Check if a number is good and large.

#### Usage

    PasswordKdf$is_good_large(number, p)

#### Arguments

- `number`:

  An integer representing the number to check.

- `p`:

  An integer representing the prime modulus.

#### Returns

A logical value indicating if the check passes.

------------------------------------------------------------------------

### Method [`num_bytes_for_hash()`](https://romankyrychenko.github.io/telegramR/reference/num_bytes_for_hash.md)

Prepare bytes for hashing by padding.

#### Usage

    PasswordKdf$num_bytes_for_hash(number)

#### Arguments

- `number`:

  A raw vector representing the number in bytes.

#### Returns

A raw vector padded to SIZE_FOR_HASH bytes.

------------------------------------------------------------------------

### Method [`big_num_for_hash()`](https://romankyrychenko.github.io/telegramR/reference/big_num_for_hash.md)

Convert a big integer to bytes for hashing.

#### Usage

    PasswordKdf$big_num_for_hash(g)

#### Arguments

- `g`:

  An integer to convert.

#### Returns

A raw vector of the big-endian bytes.

------------------------------------------------------------------------

### Method [`sha256()`](https://romankyrychenko.github.io/telegramR/reference/sha256.md)

Compute SHA256 hash of concatenated inputs.

#### Usage

    PasswordKdf$sha256(...)

#### Arguments

- `...`:

  Raw vectors to hash.

#### Returns

A raw vector of the SHA256 digest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PasswordKdf$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
