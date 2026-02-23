# GroupCall

Telegram API type GroupCall

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `GroupCall`

## Public fields

- `id`:

  Field.

- `access_hash`:

  Field.

- `participants_count`:

  Field.

- `unmuted_video_limit`:

  Field.

- `version`:

  Field.

- `join_muted`:

  Field.

- `can_change_join_muted`:

  Field.

- `join_date_asc`:

  Field.

- `schedule_start_subscribed`:

  Field.

- `can_start_video`:

  Field.

- `record_video_active`:

  Field.

- `rtmp_stream`:

  Field.

- `listeners_hidden`:

  Field.

- `conference`:

  Field.

- `creator`:

  Field.

- `title`:

  Field.

- `stream_dc_id`:

  Field.

- `record_start_date`:

  Field.

- `schedule_date`:

  Field.

- `unmuted_video_count`:

  Field.

- `invite_link`:

  Field.

## Methods

### Public methods

- [`GroupCall$new()`](#method-GroupCall-new)

- [`GroupCall$to_list()`](#method-GroupCall-to_list)

- [`GroupCall$clone()`](#method-GroupCall-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$from_reader()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-from_reader)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    GroupCall$new(
      id,
      access_hash,
      participants_count,
      unmuted_video_limit,
      version,
      join_muted = NULL,
      can_change_join_muted = NULL,
      join_date_asc = NULL,
      schedule_start_subscribed = NULL,
      can_start_video = NULL,
      record_video_active = NULL,
      rtmp_stream = NULL,
      listeners_hidden = NULL,
      conference = NULL,
      creator = NULL,
      title = NULL,
      stream_dc_id = NULL,
      record_start_date = NULL,
      schedule_date = NULL,
      unmuted_video_count = NULL,
      invite_link = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GroupCall$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GroupCall$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
