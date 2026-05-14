# Update your username

Update your username

## Usage

``` r
update_username(client, username)
```

## Arguments

- client:

  TelegramClient instance.

- username:

  New username (without @).

## Value

The API response.

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

update_username(client, "new_username")
} # }
```
