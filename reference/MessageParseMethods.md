# MessageParseMethods

Telegram API type MessageParseMethods

## Details

MessageParseMethods R6 class

Lightweight helpers for parsing messages and handling response mapping.

## Public fields

- `parse_mode`:

  Field.

- `type`:

  Field.

## Active bindings

- `type`:

  Field.

## Methods

### Public methods

- [`MessageParseMethods$new()`](#method-MessageParseMethods-new)

- [`MessageParseMethods$sanitize_parse_mode()`](#method-MessageParseMethods-sanitize_parse_mode)

- [`MessageParseMethods$set_parse_mode()`](#method-MessageParseMethods-set_parse_mode)

- [`MessageParseMethods$get_parse_mode()`](#method-MessageParseMethods-get_parse_mode)

- [`MessageParseMethods$parse_message_text()`](#method-MessageParseMethods-parse_message_text)

- [`MessageParseMethods$replace_with_mention()`](#method-MessageParseMethods-replace_with_mention)

- [`MessageParseMethods$get_response_message()`](#method-MessageParseMethods-get_response_message)

- [`MessageParseMethods$clone()`](#method-MessageParseMethods-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize with an optional parse mode.

#### Usage

    MessageParseMethods$new(mode = NULL)

#### Arguments

- `mode`:

  Parse mode (e.g., "md", "markdown", "html", "htm") or NULL.

------------------------------------------------------------------------

### Method [`sanitize_parse_mode()`](https://romankyrychenko.github.io/telegramR/reference/sanitize_parse_mode.md)

Sanitize the parse mode input.

#### Usage

    MessageParseMethods$sanitize_parse_mode(mode)

#### Arguments

- `mode`:

  The parse mode to sanitize.

------------------------------------------------------------------------

### Method `set_parse_mode()`

Set the default parse mode.

#### Usage

    MessageParseMethods$set_parse_mode(mode)

#### Arguments

- `mode`:

  The parse mode to set.

------------------------------------------------------------------------

### Method `get_parse_mode()`

Get the current parse mode.

#### Usage

    MessageParseMethods$get_parse_mode()

------------------------------------------------------------------------

### Method `parse_message_text()`

Parse a message text based on the parse mode.

#### Usage

    MessageParseMethods$parse_message_text(message, parse_mode = NULL)

#### Arguments

- `message`:

  The message text to parse.

- `parse_mode`:

  Optional override parse mode.

------------------------------------------------------------------------

### Method `replace_with_mention()`

Replace an entity with a mention of a user.

#### Usage

    MessageParseMethods$replace_with_mention(entities, i, user)

#### Arguments

- `entities`:

  The list of entities.

- `i`:

  The index of the entity to replace.

- `user`:

  The user to mention.

------------------------------------------------------------------------

### Method `get_response_message()`

Extract the response message based on the request and result.

#### Usage

    MessageParseMethods$get_response_message(request, result, input_chat)

#### Arguments

- `request`:

  The original request.

- `result`:

  The result from the API.

- `input_chat`:

  The input chat entity (unused but kept for signature compatibility).

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageParseMethods$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
