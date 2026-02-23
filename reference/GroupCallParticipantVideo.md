# GroupCallParticipantVideo

Telegram API type GroupCallParticipantVideo

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `GroupCallParticipantVideo`

## Public fields

- `endpoint`:

  Field.

- `source_groups`:

  Field.

- `paused`:

  Field.

- `audio_source`:

  Field.

## Methods

### Public methods

- [`GroupCallParticipantVideo$new()`](#method-GroupCallParticipantVideo-new)

- [`GroupCallParticipantVideo$to_list()`](#method-GroupCallParticipantVideo-to_list)

- [`GroupCallParticipantVideo$bytes()`](#method-GroupCallParticipantVideo-bytes)

- [`GroupCallParticipantVideo$clone()`](#method-GroupCallParticipantVideo-clone)

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

    GroupCallParticipantVideo$new(
      endpoint,
      source_groups,
      paused = NULL,
      audio_source = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GroupCallParticipantVideo$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    GroupCallParticipantVideo$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GroupCallParticipantVideo$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
