# Retrieve full information about a user

Retrieve full information about a user

## Usage

``` r
get_full_user(client, user = "me")
```

## Arguments

- client:

  TelegramClient instance.

- user:

  User (username, id, link) or "me".

## Value

The API response (UserFull).

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

get_full_user(client, "username")
} # }
```
