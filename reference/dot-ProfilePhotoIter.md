# \_ProfilePhotoIter R6 Class

\_ProfilePhotoIter R6 Class

\_ProfilePhotoIter R6 Class

## Details

An iterator over a user's profile photos or a chat's photos. The order
is from the most recent photo to the oldest. Inherits from RequestIter.

## Super class

[`telegramR::RequestIter`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.md)
-\> `_ProfilePhotoIter`

## Public fields

- `limit`:

  Field.

- `min_date`:

  Field.

- `max_date`:

  Field.

- `offset_id`:

  Field.

- `limit`:

  Field.

- `min_id`:

  Field.

- `hash`:

  Field.

## Active bindings

- `limit`:

  Field.

- `min_date`:

  Field.

- `max_date`:

  Field.

- `offset_id`:

  Field.

- `limit`:

  Field.

- `min_id`:

  Field.

- `hash`:

  Field.

## Methods

### Public methods

- [`.ProfilePhotoIter$.init()`](#method-_ProfilePhotoIter-.init)

- [`.ProfilePhotoIter$.load_next_chunk()`](#method-_ProfilePhotoIter-.load_next_chunk)

- [`.ProfilePhotoIter$clone()`](#method-_ProfilePhotoIter-clone)

Inherited methods

- [`telegramR::RequestIter$.next()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-.next)
- [`telegramR::RequestIter$async_init()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-async_init)
- [`telegramR::RequestIter$collect()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-collect)
- [`telegramR::RequestIter$initialize()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-initialize)
- [`telegramR::RequestIter$load_next_chunk()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-load_next_chunk)
- [`telegramR::RequestIter$reset()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-reset)

------------------------------------------------------------------------

### Method `.init()`

Initialize the iterator.

#### Usage

    .ProfilePhotoIter$.init(entity, offset, max_id)

#### Arguments

- `entity`:

  The entity from which to get the profile or chat photos.

- `offset`:

  How many photos should be skipped before returning the first one.

- `max_id`:

  The maximum ID allowed when fetching photos.

------------------------------------------------------------------------

### Method `.load_next_chunk()`

Load the next chunk of photos.

#### Usage

    .ProfilePhotoIter$.load_next_chunk()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    .ProfilePhotoIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
