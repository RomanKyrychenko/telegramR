# GenericDownloadIter class

Class for generic file downloading iteration.

## Super classes

[`telegramR::RequestIter`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.md)
-\>
[`telegramR::DirectDownloadIter`](https://romankyrychenko.github.io/telegramR/reference/DirectDownloadIter.md)
-\> `GenericDownloadIter`

## Methods

### Public methods

- [`GenericDownloadIter$load_next_chunk()`](#method-GenericDownloadIter-load_next_chunk)

- [`GenericDownloadIter$clone()`](#method-GenericDownloadIter-clone)

Inherited methods

- [`telegramR::RequestIter$.next()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-.next)
- [`telegramR::RequestIter$async_init()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-async_init)
- [`telegramR::RequestIter$collect()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-collect)
- [`telegramR::RequestIter$initialize()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-initialize)
- [`telegramR::RequestIter$reset()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-reset)
- [`telegramR::DirectDownloadIter$close()`](https://romankyrychenko.github.io/telegramR/reference/DirectDownloadIter.html#method-close)
- [`telegramR::DirectDownloadIter$init()`](https://romankyrychenko.github.io/telegramR/reference/DirectDownloadIter.html#method-init)
- [`telegramR::DirectDownloadIter$request()`](https://romankyrychenko.github.io/telegramR/reference/DirectDownloadIter.html#method-request)

------------------------------------------------------------------------

### Method `load_next_chunk()`

Load the next chunk for generic download.

#### Usage

    GenericDownloadIter$load_next_chunk()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GenericDownloadIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
