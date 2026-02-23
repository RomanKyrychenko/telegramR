# Encode Waveform

Encodes the input raw vector into a 5-bit byte-string to be used as a
voice note's waveform. See \`decode_waveform\` for the reverse
operation.

## Usage

``` r
encode_waveform(waveform)
```

## Arguments

- waveform:

  A raw vector representing the waveform bytes.

## Value

A raw vector containing the encoded waveform.

## Examples

``` r
if (FALSE) { # \dontrun{
# Send 'my.ogg' with an ascending-triangle waveform
waveform <- as.raw(0:31) # 2^5 values for 5-bit
encoded <- encode_waveform(waveform)
# Use encoded in attributes

# Send 'my.ogg' with a square waveform
waveform <- rep(as.raw(c(31, 31, 15, 15, 15, 15, 31, 31)), 4)
encoded <- encode_waveform(waveform)
} # }
```
