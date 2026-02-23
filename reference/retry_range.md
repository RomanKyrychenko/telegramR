# Generate a sequence for retry attempts

Creates a sequence from 1 to n for retry attempts with optional forcing
of at least one retry

## Usage

``` r
retry_range(n, force_retry = FALSE)
```

## Arguments

- n:

  Number of retries to perform

- force_retry:

  Whether to force at least one retry attempt even if n is 0 (default:
  FALSE)

## Value

An integer sequence to iterate over for retry attempts
