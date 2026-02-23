# Get Entity Pair

Returns a list of `(entity, input_entity)` for the given entity ID.

## Usage

``` r
get_entity_pair(entity_id, entities, cache, get_input_peer = get_input_peer)
```

## Arguments

- entity_id:

  The entity ID.

- entities:

  A list or environment of entities.

- cache:

  A cache object.

- get_input_peer:

  A function to get input peer, defaults to `get_input_peer`.

## Value

A list containing entity and input_entity, or NULLs if not found.
