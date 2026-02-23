# DialogsIter

Telegram API type DialogsIter

## Details

DialogsIter class

This class is used to iterate over Telegram dialogs (open
conversations/subscribed channels). The order is the same as the one
seen in official applications (first pinned, then from those with the
most recent message to those with the oldest message).

## Super class

[`telegramR::RequestIter`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.md)
-\> `DialogsIter`

## Public fields

- `request`:

  Field.

- `seen`:

  Field.

- `offset_date`:

  Field.

- `ignore_migrated`:

  Field.

- `limit`:

  Field.

- `hash`:

  Field.

## Active bindings

- `limit`:

  Field.

- `hash`:

  Field.

## Methods

### Public methods

- [`DialogsIter$new()`](#method-DialogsIter-new)

- [`DialogsIter$load_next_chunk()`](#method-DialogsIter-load_next_chunk)

- [`DialogsIter$get_init_future()`](#method-DialogsIter-get_init_future)

- [`DialogsIter$clone()`](#method-DialogsIter-clone)

Inherited methods

- [`telegramR::RequestIter$.next()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-.next)
- [`telegramR::RequestIter$async_init()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-async_init)
- [`telegramR::RequestIter$collect()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-collect)
- [`telegramR::RequestIter$reset()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-reset)

------------------------------------------------------------------------

### Method `new()`

Constructor for the DialogsIter class.

#### Usage

    DialogsIter$new(
      client,
      limit,
      offset_date = NULL,
      offset_id = 0,
      offset_peer = new("InputPeerEmpty"),
      ignore_pinned = FALSE,
      ignore_migrated = FALSE,
      folder = NULL
    )

#### Arguments

- `client`:

  The Telegram client.

- `limit`:

  The maximum number of dialogs to retrieve.

- `offset_date`:

  The offset date to be used.

- `offset_id`:

  The message ID to be used as an offset.

- `offset_peer`:

  The peer to be used as an offset.

- `ignore_pinned`:

  Whether pinned dialogs should be ignored or not.

- `ignore_migrated`:

  Whether Chat that have "migrated_to" a Channel should be included or
  not.

- `folder`:

  The folder from which the dialogs should be retrieved.

#### Returns

A new DialogsIter object.

------------------------------------------------------------------------

### Method `load_next_chunk()`

Loads the next chunk of dialogs.

#### Usage

    DialogsIter$load_next_chunk()

#### Returns

A future that resolves to a list of dialogs.

------------------------------------------------------------------------

### Method `get_init_future()`

Gets the initialization future.

#### Usage

    DialogsIter$get_init_future()

#### Returns

A future that resolves to the initialization result.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DialogsIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
