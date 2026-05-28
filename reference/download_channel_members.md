# Download Channel Members By Channel

Fetches channel members (participants) by username or numeric id.

## Usage

``` r
download_channel_members(
  client,
  channel,
  limit = Inf,
  search = "",
  filter = NULL,
  include_channel = TRUE,
  show_progress = TRUE
)
```

## Arguments

- client:

  TelegramClient instance.

- channel:

  character or numeric. Channel username (with or without "@") or
  numeric id.

- limit:

  integer or Inf. Maximum number of members to fetch.

- search:

  character. Search query for participant names/usernames.

- filter:

  A participants filter, e.g. ChannelParticipantsAdmins.

- include_channel:

  logical. If TRUE, include channel fields on every row.

- show_progress:

  logical. If TRUE, display a progress bar.

## Value

A tibble.
