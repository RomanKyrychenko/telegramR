# Serialize a datetime object to bytes.

This function serializes a datetime object to a byte array. It handles
various datetime formats, including POSIXct, Date, numeric, and
difftime.

## Usage

``` r
serialize_datetime(dt)
```

## Arguments

- dt:

  The datetime object to be serialized.

## Value

A raw vector representing the serialized datetime.

## Examples

``` r
if (FALSE) { # \dontrun{
serialize_datetime(as.POSIXct("2023-01-01 12:00:00", tz = "UTC"))
serialize_datetime(as.Date("2023-01-01"))
serialize_datetime(as.numeric(1234567890))
serialize_datetime(as.difftime(3600, units = "secs"))
} # }
```
