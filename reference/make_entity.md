# Construct a formatted entity descriptor for Telegram messages.

Each entity is a list with at least `offset` (0-based) and `length`.
Additional named fields may be provided via ....

## Usage

``` r
make_entity(type, offset, length, ...)

make_entity(type, offset, length, ...)
```

## Arguments

- type:

  Character scalar; class name to assign to the entity.

- offset:

  Integer; 0-based offset of the entity in text.

- length:

  Integer; length of the entity in characters.

- ...:

  Additional named fields to include in the returned list.

## Value

A named list containing the entity metadata, including any extra fields
supplied.

A list representing the entity, with class set to `type`.
