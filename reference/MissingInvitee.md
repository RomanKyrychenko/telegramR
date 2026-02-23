# MissingInvitee

Telegram API type MissingInvitee

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MissingInvitee`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `user_id`:

  Field.

- `premium_would_allow_invite`:

  Field.

- `premium_required_for_pm`:

  Field.

## Methods

### Public methods

- [`MissingInvitee$new()`](#method-MissingInvitee-new)

- [`MissingInvitee$to_dict()`](#method-MissingInvitee-to_dict)

- [`MissingInvitee$bytes()`](#method-MissingInvitee-bytes)

- [`MissingInvitee$clone()`](#method-MissingInvitee-clone)

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
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)

------------------------------------------------------------------------

### Method `new()`

#### Usage

    MissingInvitee$new(
      user_id,
      premium_would_allow_invite = NULL,
      premium_required_for_pm = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MissingInvitee$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MissingInvitee$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MissingInvitee$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
