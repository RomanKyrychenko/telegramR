# Update your profile photo

Update your profile photo

## Usage

``` r
update_profile_photo(client, file, progress_callback = NULL)
```

## Arguments

- client:

  TelegramClient instance.

- file:

  Path to image file.

- progress_callback:

  Optional callback (pos, total).

## Value

The API response.

## Examples

``` r
if (FALSE) { # \dontrun{
client <- TelegramClient$new("my_session", api_id = 123, api_hash = "abc")
client$connect()

update_profile_photo(client, "photo.jpg")
} # }
```
