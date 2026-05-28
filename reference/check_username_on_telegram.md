# Check whether a single username belongs to a Telegram user

Looks up the username via \`client\$get_entity()\`. Channels and group
chats produce an \`error\` row — this helper is for user accounts only.

## Usage

``` r
check_username_on_telegram(
  client,
  username,
  download_profile_photo = FALSE,
  photo_dir = NULL
)
```

## Arguments

- client:

  An authenticated \[TelegramClient\] instance.

- username:

  Username, with or without a leading \`@\`.

- download_profile_photo, photo_dir:

  See \[check_phone_on_telegram()\].

## Value

A named list with the user's public fields, or a list with an \`error\`
field.

## See also

\[check_usernames_on_telegram()\] for batch lookups.
