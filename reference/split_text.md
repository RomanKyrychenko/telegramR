# Split Text and Entities into Multiple Messages

This function splits a message text and its associated entities into
multiple messages, each respecting the specified length and entity
limits while preserving formatting. It is useful for sending large
messages as multiple parts without breaking entity formatting.

## Usage

``` r
split_text(
  text,
  entities,
  limit = 4096L,
  max_entities = 100L,
  split_at = c("\\n", "\\s", ".")
)
```

## Arguments

- text:

  A character string representing the message text.

- entities:

  A list of entity objects (e.g., lists with 'offset' and 'length'
  fields) representing the formatting entities in the text.

- limit:

  An integer specifying the maximum length of each individual message.
  Default is 4096.

- max_entities:

  An integer specifying the maximum number of entities allowed in each
  individual message. Default is 100.

- split_at:

  A character vector of regular expressions that determine where to
  split the text. By default, it splits at newlines, spaces, or any
  character. The last expression should match a character to ensure
  splitting.

## Value

A list of lists, where each sublist contains a pair of (split_text,
split_entities). Each pair represents a portion of the original text and
its corresponding entities.
