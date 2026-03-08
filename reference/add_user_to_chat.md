# Add a user to a chat or channel

Add a user to a chat or channel

## Usage

``` r
add_user_to_chat(client, chat, user, fwd_limit = 10)
```

## Arguments

- client:

  TelegramClient instance.

- chat:

  Chat/channel (username, link, or entity).

- user:

  User (username, link, or entity).

- fwd_limit:

  Forward limit for basic chats. Default is 10.

## Value

The API response.
