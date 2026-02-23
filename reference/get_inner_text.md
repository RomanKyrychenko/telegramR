# Get Inner Text Surrounded by Entities

Extracts the inner text that is surrounded by the given entities. For
example, if text = 'hey!' and entity has offset=2, length=2, it returns
'y!'.

## Usage

``` r
get_inner_text(text, entities)
```

## Arguments

- text:

  A character string representing the original text.

- entities:

  A list of entity objects, each with 'offset' and 'length' fields.

## Value

A list of character strings, each being the text surrounded by the
corresponding entity.
