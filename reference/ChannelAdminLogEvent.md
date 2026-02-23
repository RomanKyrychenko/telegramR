# ChannelAdminLogEvent

Telegram API type ChannelAdminLogEvent

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChannelAdminLogEvent`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

- `date`:

  Field.

- `user_id`:

  Field.

- `action`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`ChannelAdminLogEvent$new()`](#method-ChannelAdminLogEvent-new)

- [`ChannelAdminLogEvent$to_dict()`](#method-ChannelAdminLogEvent-to_dict)

- [`ChannelAdminLogEvent$bytes()`](#method-ChannelAdminLogEvent-bytes)

- [`ChannelAdminLogEvent$clone()`](#method-ChannelAdminLogEvent-clone)

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

    ChannelAdminLogEvent$new(id, date, user_id, action)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChannelAdminLogEvent$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChannelAdminLogEvent$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChannelAdminLogEvent$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
