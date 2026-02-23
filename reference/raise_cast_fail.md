# Raise Cast Fail

Raises an error indicating that the entity cannot be cast to the target
type.

## Usage

``` r
raise_cast_fail(entity, target)
```

## Arguments

- entity:

  The entity object that failed to cast.

- target:

  A character string representing the target type.

## Examples

``` r
if (FALSE) { # \dontrun{
raise_cast_fail(some_entity, "InputPeer")
} # }
```
