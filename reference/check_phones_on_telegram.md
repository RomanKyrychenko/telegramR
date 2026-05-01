# Check several phone numbers in one call

Convenience wrapper around \[check_phone_on_telegram()\] that accepts
either a character vector or a single comma-separated string (matching
the upstream Python CLI). Duplicates are silently de-duplicated.

## Usage

``` r
check_phones_on_telegram(
  client,
  phones,
  download_profile_photo = FALSE,
  photo_dir = NULL
)
```

## Arguments

- client:

  An authenticated \[TelegramClient\] instance.

- phones:

  Character vector of phone numbers, or a single comma-separated string.

- download_profile_photo, photo_dir:

  See \[check_phone_on_telegram()\].

## Value

A tibble with one row per unique phone number. Successful lookups expose
the user's public fields; failures expose an \`error\` column.

## See also

\[check_phone_on_telegram()\] for the single-phone variant.
