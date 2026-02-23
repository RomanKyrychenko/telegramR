# Convert a datetime object to a timestamp.

This function converts a datetime object to a timestamp in seconds since
the epoch. It handles both UTC and local timezones.

## Usage

``` r
datetime_to_timestamp(dt)
```

## Arguments

- dt:

  A datetime object to be converted.

## Value

A numeric value representing the timestamp in seconds since the epoch.

## Examples

``` r
if (FALSE) { # \dontrun{
datetime_to_timestamp(as.POSIXct("2023-01-01 12:00:00", tz = "UTC"))
datetime_to_timestamp(as.POSIXct("2023-01-01 12:00:00"))
} # }
```
