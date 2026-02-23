# DraftsIter

Telegram API type DraftsIter

## Details

DraftsIter class

## Super class

[`telegramR::RequestIter`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.md)
-\> `DraftsIter`

## Methods

### Public methods

- [`DraftsIter$new()`](#method-DraftsIter-new)

- [`DraftsIter$load_next_chunk()`](#method-DraftsIter-load_next_chunk)

- [`DraftsIter$get_init_future()`](#method-DraftsIter-get_init_future)

- [`DraftsIter$clone()`](#method-DraftsIter-clone)

Inherited methods

- [`telegramR::RequestIter$.next()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-.next)
- [`telegramR::RequestIter$async_init()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-async_init)
- [`telegramR::RequestIter$collect()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-collect)
- [`telegramR::RequestIter$reset()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-reset)

------------------------------------------------------------------------

### Method `new()`

Constructor for the DraftsIter class.

#### Usage

    DraftsIter$new(client, limit, entities = NULL)

#### Arguments

- `client`:

  The Telegram client.

- `limit`:

  The maximum number of drafts to retrieve.

- `entities`:

  The list of entities for which to fetch the drafts.

#### Returns

A new DraftsIter object.

------------------------------------------------------------------------

### Method `load_next_chunk()`

Loads the next chunk of drafts.

#### Usage

    DraftsIter$load_next_chunk()

#### Returns

A future that resolves to a list of drafts.

------------------------------------------------------------------------

### Method `get_init_future()`

Gets the initialization future.

#### Usage

    DraftsIter$get_init_future()

#### Returns

A future that resolves to the initialization result.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DraftsIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
