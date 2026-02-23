# Create InvokeWithLayerRequest from a binary reader

Reads an integer \`layer\` and a nested \`query\` object from \`reader\`
and constructs an \`InvokeWithLayerRequest\` instance.

## Usage

``` r
InvokeWithLayerRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing \`read_int()\` and \`tgread_object()\`.

## Value

Instance of \`InvokeWithLayerRequest\`.
