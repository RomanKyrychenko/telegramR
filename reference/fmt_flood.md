# fmt_flood

ftm_flood - Format flood wait message

## Usage

``` r
fmt_flood(delay, request, early = FALSE, td = as.difftime)
```

## Arguments

- delay:

  Delay time in seconds

- request:

  The request object

- early:

  Boolean indicating if the message is for an early flood wait

- td:

  Function to convert delay to time difference

## Value

Formatted flood wait message
