# UpdateDeleteChannelMessages

Telegram API type UpdateDeleteChannelMessages

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdateDeleteChannelMessages`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdateDeleteChannelMessages$new()`](#method-UpdateDeleteChannelMessages-new)

- [`UpdateDeleteChannelMessages$to_dict()`](#method-UpdateDeleteChannelMessages-to_dict)

- [`UpdateDeleteChannelMessages$bytes()`](#method-UpdateDeleteChannelMessages-bytes)

- [`UpdateDeleteChannelMessages$clone()`](#method-UpdateDeleteChannelMessages-clone)

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

    UpdateDeleteChannelMessages$new(channel_id, messages, pts, pts_count)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateDeleteChannelMessages$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateDeleteChannelMessages$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateDeleteChannelMessages$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
