# Finds and loads the system's SSL library.

This function attempts to locate the system's SSL library and load it
using R's \`dyn.load\` function. On macOS, it handles versioning issues
for compatibility.

## Usage

``` r
find_ssl_lib()
```

## Value

A reference (path) to the loaded SSL library.
