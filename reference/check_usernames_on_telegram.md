# Check several usernames in one call

Convenience wrapper around \[check_username_on_telegram()\].

## Usage

``` r
check_usernames_on_telegram(
  client,
  usernames,
  download_profile_photo = FALSE,
  photo_dir = NULL
)
```

## Arguments

- client:

  An authenticated \[TelegramClient\] instance.

- usernames:

  Character vector of usernames, or a single comma-separated string.
  Leading \`@\` is optional and stripped.

- download_profile_photo, photo_dir:

  See \[check_phone_on_telegram()\].

## Value

A tibble with one row per unique username.

## See also

\[check_username_on_telegram()\] for the single-username variant.
