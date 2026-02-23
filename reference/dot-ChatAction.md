# \_ChatAction R6 Class

\_ChatAction R6 Class

\_ChatAction R6 Class

## Details

A context manager-like class for representing a "chat action" in
Telegram, such as "user is typing" or uploading a file with progress.
This class handles sending the appropriate action to the chat and
optionally cancelling it when done. It is designed to be used
synchronously in R.

## Public fields

- `_str_mapping`:

  A named list mapping string action names to SendMessageAction objects.

## Active bindings

- `_str_mapping`:

  A named list mapping string action names to SendMessageAction objects.

## Methods

### Public methods

- [`.ChatAction$new()`](#method-_ChatAction-new)

- [`.ChatAction$enter()`](#method-_ChatAction-enter)

- [`.ChatAction$exit()`](#method-_ChatAction-exit)

- [`.ChatAction$progress()`](#method-_ChatAction-progress)

- [`.ChatAction$clone()`](#method-_ChatAction-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize the \_ChatAction object.

#### Usage

    .ChatAction$new(client, chat, action, delay = 4, auto_cancel = TRUE)

#### Arguments

- `client`:

  The TelegramClient instance.

- `chat`:

  The chat entity.

- `action`:

  The action to show (string or SendMessageAction object).

- `delay`:

  The delay in seconds (reserved for future async implementation).

- `auto_cancel`:

  Whether to auto-cancel on exit.

------------------------------------------------------------------------

### Method `enter()`

Enter the context (start the action). Sends the initial action request
to the chat.

#### Usage

    .ChatAction$enter()

------------------------------------------------------------------------

### Method `exit()`

Exit the context (stop the action). Cancels the action if auto_cancel is
TRUE.

#### Usage

    .ChatAction$exit(...)

#### Arguments

- `...`:

  Ignored (for compatibility with context managers).

------------------------------------------------------------------------

### Method `progress()`

Update the progress of the action (for upload actions).

#### Usage

    .ChatAction$progress(current, total)

#### Arguments

- `current`:

  The current progress value.

- `total`:

  The total progress value.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    .ChatAction$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
