# Decode Waveform

Inverse operation of \`encode_waveform\`. Decodes a byte array into a
5-bit byte-string representing a voice note's waveform.

## Usage

``` r
decode_waveform(waveform)
```

## Arguments

- waveform:

  A raw vector representing the encoded waveform bytes.

## Value

A raw vector containing the decoded 5-bit values.

## Examples

``` r
if (FALSE) { # \dontrun{
# Example usage (assuming encoded waveform)
encoded <- as.raw(c(0x00, 0x00)) # Placeholder
decoded <- decode_waveform(encoded)
} # }
```
