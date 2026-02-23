# Check Prime and Generator

Checks if the prime bytes match a known good prime and validates the
generator, or performs detailed checks if not matching.

Checks if the prime bytes and generator are good.

## Usage

``` r
check_prime_and_good(prime_bytes, g)

check_prime_and_good(prime_bytes, g)
```

## Arguments

- prime_bytes:

  A raw vector representing the prime bytes.

- g:

  An integer representing the generator.

## Value

Raises an error if validation fails, otherwise returns nothing.
