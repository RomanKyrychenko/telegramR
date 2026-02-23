# Parse a text string into plain message text and entities.

The parser scans the input `message` and converts recognized delimiters
(bold, italic, code, strike, pre) and inline links into a list of entity
objects while removing delimiter characters from the returned text.
Processing is surrogate-aware to avoid splitting multi-codepoint
graphemes (e.g. emojis).

## Usage

``` r
parse(message, delimiters = NULL, url_re = NULL)
```

## Arguments

- message:

  Character scalar; the input text to parse.

- delimiters:

  Optional named list mapping delimiter strings to entity type names. If
  `NULL`, `DEFAULT_DELIMITERS` is used.

- url_re:

  Optional regular expression used to detect inline URLs. If `NULL`,
  `DEFAULT_URL_RE` is used. Can be a string or any object coercible to
  character.

## Value

A list with elements:

- message:

  The processed plain text with delimiter characters removed.

- entities:

  A list of entity objects produced by `make_entity`.

## Details

Limitations: - Nested formatting is not supported. - Only the supplied
set of `delimiters` are recognized.
