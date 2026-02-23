# Account Methods

This file contains the \`AccountMethods\` class and the
\`TakeoutClient\` class, which are used to manage account-related
operations in the Telegram API.

## Details

The \`AccountMethods\` class provides methods for managing
account-related operations, including takeout sessions. The
\`TakeoutClient\` class is used to handle the takeout session and its
associated requests.

## Public fields

- `client`:

  The client instance backing these methods.

## Methods

### Public methods

- [`AccountMethods$new()`](#method-AccountMethods-new)

- [`AccountMethods$clone()`](#method-AccountMethods-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new AccountMethods wrapper.

#### Usage

    AccountMethods$new(client)

#### Arguments

- `client`:

  The TelegramClient instance.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AccountMethods$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
