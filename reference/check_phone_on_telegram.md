# Check whether a single phone number is registered on Telegram

Adds the phone number to the authenticated account's contacts via
\`ImportContactsRequest\`, captures any matching user, then removes the
contact via \`DeleteContactsRequest\`. The contact addition is transient
— Telegram users are not notified.

## Usage

``` r
check_phone_on_telegram(
  client,
  phone,
  download_profile_photo = FALSE,
  photo_dir = NULL
)
```

## Arguments

- client:

  An authenticated \[TelegramClient\] instance.

- phone:

  Phone number string in international format (e.g. \`"+15551234567"\`).

- download_profile_photo:

  If \`TRUE\`, attempt to download the matched user's profile photo into
  \`photo_dir\` (default: working directory). Failures are reported as
  warnings.

- photo_dir:

  Directory to save downloaded profile photos; created if it doesn't
  exist. Ignored when \`download_profile_photo\` is \`FALSE\`.

## Value

A named list with the user's public fields, or a list with an \`error\`
field describing why the lookup failed (no match, multiple matches, RPC
error, ...).

## See also

\[check_phones_on_telegram()\] for batch lookups.
