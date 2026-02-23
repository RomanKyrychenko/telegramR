# Simple markdown parser which does not support nesting.

This file provides lightweight parsing and unparsing utilities for a
subset of markdown-like delimiters. It is intended primarily for use
within the package and attempts to handle Unicode surrogate pairs (e.g.
emojis) correctly via helper functions: `add_surrogate`,
`del_surrogate`, `within_surrogate`, and `strip_text`.

## Usage

``` r
DEFAULT_DELIMITERS
```

## Format

An object of class `list` of length 5.

## Details

The parser recognizes a small set of delimiters and converts them into
TL-style message entities. It also supports inline URLs of the form
`[text](url)` producing `MessageEntityTextUrl` entries.

Note: This parser deliberately does not support nested formatting.
Default mapping of delimiter strings to entity types.

Keys are the literal delimiter sequences as they appear in text and
values are the corresponding entity class names used by the system.

## Examples

``` r
if (FALSE) { # \dontrun{
DEFAULT_DELIMITERS[["**"]]
} # }
```
