# DirectDownloadIter class

Class for direct file downloading iteration.

## Super class

[`telegramR::RequestIter`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.md)
-\> `DirectDownloadIter`

## Public fields

- `total`:

  The total size of the file.

- `stride`:

  The stride size.

- `chunk_size`:

  The chunk size.

- `last_part`:

  The last part of the file.

- `msg_data`:

  Message data if applicable.

- `timed_out`:

  Whether the download timed out.

- `exported`:

  Whether the sender is exported.

- `sender`:

  The sender object.

- `client`:

  The TelegramClient instance.

- `cdn_redirect`:

  The CDN redirect object.

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

## Active bindings

- `type`:

  Field.

- `type`:

  Field.

- `type`:

  Field.

## Methods

### Public methods

- [`DirectDownloadIter$init()`](#method-DirectDownloadIter-init)

- [`DirectDownloadIter$load_next_chunk()`](#method-DirectDownloadIter-load_next_chunk)

- [`DirectDownloadIter$request()`](#method-DirectDownloadIter-request)

- [`DirectDownloadIter$close()`](#method-DirectDownloadIter-close)

- [`DirectDownloadIter$clone()`](#method-DirectDownloadIter-clone)

Inherited methods

- [`telegramR::RequestIter$.next()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-.next)
- [`telegramR::RequestIter$async_init()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-async_init)
- [`telegramR::RequestIter$collect()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-collect)
- [`telegramR::RequestIter$initialize()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-initialize)
- [`telegramR::RequestIter$reset()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-reset)

------------------------------------------------------------------------

### Method `init()`

Initialize the download iterator.

#### Usage

    DirectDownloadIter$init(
      file,
      dc_id,
      offset,
      stride,
      chunk_size,
      request_size,
      file_size,
      msg_data,
      cdn_redirect = NULL
    )

#### Arguments

- `file`:

  The file to download.

- `dc_id`:

  The data center ID.

- `offset`:

  The byte offset.

- `stride`:

  The stride size.

- `chunk_size`:

  The chunk size.

- `request_size`:

  The request size.

- `file_size`:

  The file size.

- `msg_data`:

  Message data if applicable.

- `cdn_redirect`:

  CDN redirect if applicable.

- `client`:

  The TelegramClient instance.

------------------------------------------------------------------------

### Method `load_next_chunk()`

Load the next chunk of data.

#### Usage

    DirectDownloadIter$load_next_chunk()

------------------------------------------------------------------------

### Method `request()`

Make a request to fetch data.

#### Usage

    DirectDownloadIter$request()

------------------------------------------------------------------------

### Method [`close()`](https://rdrr.io/r/base/connections.html)

Close the iterator and clean up resources.

#### Usage

    DirectDownloadIter$close()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    DirectDownloadIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
