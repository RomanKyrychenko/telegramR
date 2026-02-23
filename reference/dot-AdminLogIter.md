# \_AdminLogIter R6 Class

\_AdminLogIter R6 Class

\_AdminLogIter R6 Class

## Details

An iterator over the admin log for the specified channel. The default
order is from the most recent event to the oldest. Inherits from
RequestIter.

## Super class

[`telegramR::RequestIter`](https://romankyrychenko.github.io/telegramR/reference/RequestIter.md)
-\> `_AdminLogIter`

## Methods

### Public methods

- [`.AdminLogIter$.init()`](#method-_AdminLogIter-.init)

- [`.AdminLogIter$.load_next_chunk()`](#method-_AdminLogIter-.load_next_chunk)

- [`.AdminLogIter$clone()`](#method-_AdminLogIter-clone)

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

    .AdminLogIter$.init(
      entity,
      admins = NULL,
      search = NULL,
      min_id = 0,
      max_id = 0,
      join = NULL,
      leave = NULL,
      invite = NULL,
      restrict = NULL,
      unrestrict = NULL,
      ban = NULL,
      unban = NULL,
      promote = NULL,
      demote = NULL,
      info = NULL,
      settings = NULL,
      pinned = NULL,
      edit = NULL,
      delete = NULL,
      group_call = NULL
    )

#### Arguments

- `entity`:

  The channel entity from which to get its admin log.

- `admins`:

  If present, filter by these admins. Default is NULL.

- `search`:

  The string to be used as a search query. Default is NULL.

- `min_id`:

  All events with a lower (older) ID or equal to this will be excluded.
  Default is 0.

- `max_id`:

  All events with a higher (newer) ID or equal to this will be excluded.
  Default is 0.

- `join`:

  If TRUE, events for when a user joined will be returned. Default is
  NULL.

- `leave`:

  If TRUE, events for when a user leaves will be returned. Default is
  NULL.

- `invite`:

  If TRUE, events for when a user joins through an invite link will be
  returned. Default is NULL.

- `restrict`:

  If TRUE, events with partial restrictions will be returned. Default is
  NULL.

- `unrestrict`:

  If TRUE, events removing restrictions will be returned. Default is
  NULL.

- `ban`:

  If TRUE, events applying or removing all restrictions will be
  returned. Default is NULL.

- `unban`:

  If TRUE, events removing all restrictions will be returned. Default is
  NULL.

- `promote`:

  If TRUE, events with admin promotions will be returned. Default is
  NULL.

- `demote`:

  If TRUE, events with admin demotions will be returned. Default is
  NULL.

- `info`:

  If TRUE, events changing the group info will be returned. Default is
  NULL.

- `settings`:

  If TRUE, events changing the group settings will be returned. Default
  is NULL.

- `pinned`:

  If TRUE, events of new pinned messages will be returned. Default is
  NULL.

- `edit`:

  If TRUE, events of message edits will be returned. Default is NULL.

- `delete`:

  If TRUE, events of message deletions will be returned. Default is
  NULL.

- `group_call`:

  If TRUE, events related to group calls will be returned. Default is
  NULL.

------------------------------------------------------------------------

### Method `.load_next_chunk()`

Load the next chunk of admin log events.

#### Usage

    .AdminLogIter$.load_next_chunk()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    .AdminLogIter$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
