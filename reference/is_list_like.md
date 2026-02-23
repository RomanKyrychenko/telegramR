# Check if an object is list-like (list, vector, etc.)

Determines whether an object can be treated like a list or collection in
the context of MTProto requests.

## Usage

``` r
is_list_like(obj, allow_data_frames = FALSE)
```

## Arguments

- obj:

  The object to check

- allow_data_frames:

  Whether to consider data frames as list-like (default: FALSE)

## Value

TRUE if the object is list-like, FALSE otherwise
