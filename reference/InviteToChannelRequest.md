# InviteToChannelRequest

Represents a request to invite users to a channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `InviteToChannelRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `users`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`InviteToChannelRequest$new()`](#method-InviteToChannelRequest-new)

- [`InviteToChannelRequest$resolve()`](#method-InviteToChannelRequest-resolve)

- [`InviteToChannelRequest$to_dict()`](#method-InviteToChannelRequest-to_dict)

- [`InviteToChannelRequest$bytes()`](#method-InviteToChannelRequest-bytes)

- [`InviteToChannelRequest$clone()`](#method-InviteToChannelRequest-clone)

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
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize the InviteToChannelRequest.

#### Usage

    InviteToChannelRequest$new(channel, users)

#### Arguments

- `channel`:

  The input channel.

- `users`:

  The list of input users to invite.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel and users entities.

#### Usage

    InviteToChannelRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    InviteToChannelRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    InviteToChannelRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InviteToChannelRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
