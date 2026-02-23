# Convert text and entities back to a delimited markdown-like string.

Given a plain `text` and a list of entity objects (as produced by
`parse` or by other code), this function reinserts delimiter sequences
and inline URL markup to produce a string resembling the original
markdown. The routine is surrogate-aware and attempts to place
delimiters outside surrogate pairs.

## Usage

``` r
unparse(text, entities, delimiters = NULL, url_fmt = NULL)
```

## Arguments

- text:

  Character scalar; plain text without delimiters.

- entities:

  List of entity objects. Each object should have `offset` (0-based) and
  `length` fields and a class name identifying its type.

- delimiters:

  Optional named list mapping delimiter strings to entity type names
  (same shape as `DEFAULT_DELIMITERS`). If `NULL`, `DEFAULT_DELIMITERS`
  is used.

- url_fmt:

  Deprecated; present for historical compatibility.

## Value

A character scalar with delimiters and URL markup reinserted.
