# \_ParticipantsIter R6 Class

\_ParticipantsIter R6 Class

\_ParticipantsIter R6 Class

## Details

An iterator over the participants belonging to the specified chat. The
order is unspecified. Inherits from RequestIter.

## Super class

[`telegramR::RequestIter`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.md)
-\> `_ParticipantsIter`

## Public fields

- `offset`:

  Field.

- `hash`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

- `hash`:

  Field.

## Active bindings

- `offset`:

  Field.

- `hash`:

  Field.

- `offset`:

  Field.

- `limit`:

  Field.

- `hash`:

  Field.

## Methods

### Public methods

- [`.ParticipantsIter$new()`](#method-_ParticipantsIter-new)

- [`.ParticipantsIter$.load_next_chunk()`](#method-_ParticipantsIter-.load_next_chunk)

- [`.ParticipantsIter$clone()`](#method-_ParticipantsIter-clone)

Inherited methods

- [`telegramR::RequestIter$.next()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-.next)
- [`telegramR::RequestIter$async_init()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-async_init)
- [`telegramR::RequestIter$collect()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-collect)
- [`telegramR::RequestIter$load_next_chunk()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-load_next_chunk)
- [`telegramR::RequestIter$reset()`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.html#method-reset)

------------------------------------------------------------------------

### Method `new()`

Initialize the iterator.

#### Usage

    .ParticipantsIter$new(entity, filter = NULL, search = "")

#### Arguments

- `entity`:

  The entity from which to retrieve the participants list.

- `filter`:

  The filter to be used, if you want e.g. only admins. Default is NULL.

- `search`:

  Look for participants with this string in name/username. Default is ”.

------------------------------------------------------------------------

### Method `.load_next_chunk()`

Load the next chunk of participants.

#### Usage

    .ParticipantsIter$.load_next_chunk()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    .ParticipantsIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
