# Synchronously resolve a promise by pumping the later event loop.

R promises schedule their callbacks via \`later::later()\`. When running
inside a tight synchronous loop (no Shiny / httpuv reactor) those
callbacks never fire unless we explicitly call \`later::run_now()\`.
This helper does exactly that: it installs fulfillment/rejection
handlers and then pumps \`later::run_now()\` in a busy-wait until the
promise settles.

## Usage

``` r
await_promise(p, timeout = 30)
```

## Arguments

- p:

  A promise (or plain value).

- timeout:

  Maximum seconds to wait before raising an error.

## Value

The fulfilled value, or stops with the rejection reason.

## Details

If the input is NOT a promise it is returned as-is, so this is safe to
call on any value.
