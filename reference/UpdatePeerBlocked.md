# UpdatePeerBlocked

Telegram API type UpdatePeerBlocked

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdatePeerBlocked`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdatePeerBlocked$new()`](#method-UpdatePeerBlocked-new)

- [`UpdatePeerBlocked$to_dict()`](#method-UpdatePeerBlocked-to_dict)

- [`UpdatePeerBlocked$bytes()`](#method-UpdatePeerBlocked-bytes)

- [`UpdatePeerBlocked$clone()`](#method-UpdatePeerBlocked-clone)

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

    UpdatePeerBlocked$new(peer_id, blocked = NULL, blocked_my_stories_from = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdatePeerBlocked$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdatePeerBlocked$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdatePeerBlocked$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
