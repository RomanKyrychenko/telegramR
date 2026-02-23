# telegramR <a href="https://romankyrychenko.github.io/telegramR/"><img src="man/figures/logo.png" align="right" height="139" alt="telegramR website" /></a>

<!-- badges: start -->
[![R-CMD-check](https://github.com/RomanKyrychenko/telegramR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/RomanKyrychenko/telegramR/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/RomanKyrychenko/telegramR/graph/badge.svg)](https://app.codecov.io/gh/RomanKyrychenko/telegramR)
<!-- badges: end -->

`telegramR` is an R client for Telegram's MTProto API. It is intended as an R alternative to Python's [Telethon](https://github.com/LonamiWebs/Telethon) and focuses on full-client functionality (not the Bot API).

**Install**

From GitHub:

```r
# install.packages("remotes")
remotes::install_github("RomanKyrychenko/telegramR")
```

**Prerequisites**

You need Telegram API credentials from [my.telegram.org](https://my.telegram.org):

- `api_id`
- `api_hash`

**Quick Start (Login)**

```r
library(telegramR)

api_id   <- 123456
api_hash <- "0123456789abcdef0123456789abcdef"

# Create a client. The session file stores your auth key so you
# don't need to re-login every time.
client <- TelegramClient$new(
  session  = "my_session",
  api_id   = api_id,
  api_hash = api_hash
)

# Connect and log in interactively.
# You will be prompted for your phone number, the login code Telegram
# sends you, and (if enabled) your 2FA password.
client$start()
```

You can also supply the phone number and a code callback explicitly:

```r
client$start(
  phone         = "+15551234567",
  code_callback = function() readline("Enter the code: ")
)
```

If your account has 2FA enabled, pass `password`:

```r
client$start(
  phone    = "+15551234567",
  password = "my2FApassword"
)
```

**Step-by-step login (non-interactive)**

If you prefer full control over each step:

```r
client <- TelegramClient$new("my_session", api_id = api_id, api_hash = api_hash)
client$connect()

# Request a login code
client$send_code_request("+15551234567")

# Sign in with the code you received
client$sign_in("+15551234567", code = "12345")
```

**Fetch all posts from a channel**

Once logged in you can call any Telegram API method via `client$invoke()`.
The example below fetches messages from a public channel by username:

```r
library(telegramR)

# Resolve the channel username to an InputPeer
resolved <- client$invoke(
  ResolveUsernameRequest$new("telegram")
)
channel  <- resolved$chats[[1]]
input_peer <- InputPeerChannel$new(
  channel_id  = channel$id,
  access_hash = channel$access_hash
)

# Fetch the most recent 100 messages
history <- client$invoke(
  GetHistoryRequest$new(
    peer       = input_peer,
    offsetId   = 0L,
    offsetDate = as.integer(0),
    addOffset  = 0L,
    limit      = 100L,
    maxId      = 0L,
    minId      = 0L,
    hash       = 0L
  )
)

messages <- history$messages
cat("Fetched", length(messages), "messages\n")

# Print each message text
for (m in messages) {
  if (!is.null(m$message) && nzchar(m$message)) {
    cat(sprintf("[%s] %s\n", m$date, m$message))
  }
}
```

To page through the full history, keep calling `GetHistoryRequest` with
`offsetId` set to the ID of the last message you received until no more
messages are returned:

```r
all_messages <- list()
offset_id    <- 0L

repeat {
  history <- client$invoke(
    GetHistoryRequest$new(
      peer       = input_peer,
      offsetId   = offset_id,
      offsetDate = as.integer(0),
      addOffset  = 0L,
      limit      = 100L,
      maxId      = 0L,
      minId      = 0L,
      hash       = 0L
    )
  )

  batch <- history$messages
  if (length(batch) == 0) break

  all_messages <- c(all_messages, batch)
  offset_id    <- batch[[length(batch)]]$id

  Sys.sleep(1)   # respect rate limits
}

cat("Total messages:", length(all_messages), "\n")
```

**Download media**

```r
dir.create("downloads", showWarnings = FALSE)

for (m in messages) {
  if (!is.null(m$media)) {
    future::value(client$download_media(m, file = "downloads/"))
  }
}
```

**Notes**

- Sessions are persisted to the file you pass to `TelegramClient$new()`.
  Remove that file to force a fresh login.
- Be mindful of Telegram rate limits when downloading large histories or
  media collections. Add `Sys.sleep()` between requests.
- Most high-level methods (like `get_entity`, `download_media`) return
  [future](https://cran.r-project.org/package=future) objects. Unwrap
  them with `future::value()`.
