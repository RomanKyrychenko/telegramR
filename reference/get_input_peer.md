# Get Input Peer

Gets the input peer for the given "entity" (user, chat or channel).

## Usage

``` r
get_input_peer(entity, allow_self = TRUE, check_hash = TRUE)
```

## Arguments

- entity:

  The entity object to convert.

- allow_self:

  Logical, whether to allow self as input. Default is \`TRUE\`.

- check_hash:

  Logical, whether to check for valid access hashes. Default is
  \`TRUE\`.

## Value

An InputPeer object.

## Details

A \`TypeError\` is raised if the given entity isn't a supported type or
if \`check_hash\` is \`TRUE\` but the entity's \`access_hash\` is
\`NULL\` \*or\* the entity contains \`min\` information. In this case,
the hash cannot be used for general purposes, and thus is not returned
to avoid any issues which can derive from invalid access hashes.

Note that \`check_hash\` \*\*is ignored\*\* if an input peer is already
passed since in that case we assume the user knows what they're doing.
This is key to getting entities by explicitly passing \`hash = 0\`.

## Examples

``` r
if (FALSE) { # \dontrun{
# Assuming entity is a User object
input_peer <- get_input_peer(entity)
} # }
```
