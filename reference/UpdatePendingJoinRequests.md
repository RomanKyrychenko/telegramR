# UpdatePendingJoinRequests

Telegram API type UpdatePendingJoinRequests

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdatePendingJoinRequests`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdatePendingJoinRequests$new()`](#method-UpdatePendingJoinRequests-new)

- [`UpdatePendingJoinRequests$to_dict()`](#method-UpdatePendingJoinRequests-to_dict)

- [`UpdatePendingJoinRequests$bytes()`](#method-UpdatePendingJoinRequests-bytes)

- [`UpdatePendingJoinRequests$clone()`](#method-UpdatePendingJoinRequests-clone)

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

    UpdatePendingJoinRequests$new(peer, requests_pending, recent_requesters)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdatePendingJoinRequests$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdatePendingJoinRequests$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdatePendingJoinRequests$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
