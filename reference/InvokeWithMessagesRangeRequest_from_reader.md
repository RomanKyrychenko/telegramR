# Create InvokeWithMessagesRangeRequest from a binary reader

Reads two nested Telegram-style objects from the provided \`reader\`:
first the \`range\` object, then the \`query\` object. Both are read
using the reader's \`tgread_object()\` method.

## Usage

``` r
InvokeWithMessagesRangeRequest_from_reader(reader)
```

## Arguments

- reader:

  Reader object providing \`tgread_object()\` to read nested objects.

## Value

Instance of \`InvokeWithMessagesRangeRequest\`.
