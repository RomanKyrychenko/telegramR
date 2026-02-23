# Factorization

Telegram API type Factorization

## Details

This class implements the Pollard's Rho-Brent Integer Factorization
algorithm to efficiently factorize large integers into their prime
components.

## Methods

### Public methods

- [`Factorization$factorize()`](#method-Factorization-factorize)

- [`Factorization$gcd()`](#method-Factorization-gcd)

- [`Factorization$clone()`](#method-Factorization-clone)

------------------------------------------------------------------------

### Method `factorize()`

Factorizes the given large integer.

#### Usage

    Factorization$factorize(pq)

#### Arguments

- `pq`:

  An integer representing the product of two primes.

#### Details

Implementation based on Pollard's Rho-Brent Integer Factorization
algorithm.

#### Returns

A numeric vector containing the two factors \`p\` and \`q\`.

------------------------------------------------------------------------

### Method `gcd()`

Calculates the Greatest Common Divisor (GCD).

#### Usage

    Factorization$gcd(a, b)

#### Arguments

- `a`:

  An integer.

- `b`:

  Another integer.

#### Returns

The GCD of \`a\` and \`b\`.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    Factorization$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
