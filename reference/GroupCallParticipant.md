# GroupCallParticipant

Telegram API type GroupCallParticipant

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `GroupCallParticipant`

## Public fields

- `peer`:

  Field.

- `date`:

  Field.

- `source`:

  Field.

- `muted`:

  Field.

- `left`:

  Field.

- `can_self_unmute`:

  Field.

- `just_joined`:

  Field.

- `versioned`:

  Field.

- `min`:

  Field.

- `muted_by_you`:

  Field.

- `volume_by_admin`:

  Field.

- `is_self`:

  Field.

- `video_joined`:

  Field.

- `active_date`:

  Field.

- `volume`:

  Field.

- `about`:

  Field.

- `raise_hand_rating`:

  Field.

- `video`:

  Field.

- `presentation`:

  Field.

## Methods

### Public methods

- [`GroupCallParticipant$new()`](#method-GroupCallParticipant-new)

- [`GroupCallParticipant$to_list()`](#method-GroupCallParticipant-to_list)

- [`GroupCallParticipant$clone()`](#method-GroupCallParticipant-clone)

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

    GroupCallParticipant$new(
      peer,
      date = NULL,
      source,
      muted = NULL,
      left = NULL,
      can_self_unmute = NULL,
      just_joined = NULL,
      versioned = NULL,
      min = NULL,
      muted_by_you = NULL,
      volume_by_admin = NULL,
      is_self = NULL,
      video_joined = NULL,
      active_date = NULL,
      volume = NULL,
      about = NULL,
      raise_hand_rating = NULL,
      video = NULL,
      presentation = NULL
    )

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    GroupCallParticipant$to_list()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GroupCallParticipant$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
