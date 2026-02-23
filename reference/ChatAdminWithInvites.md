# ChatAdminWithInvites

Telegram API type ChatAdminWithInvites

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatAdminWithInvites`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `admin_id`:

  Field.

- `invites_count`:

  Field.

- `revoked_invites_count`:

  Field.

## Methods

### Public methods

- [`ChatAdminWithInvites$new()`](#method-ChatAdminWithInvites-new)

- [`ChatAdminWithInvites$to_list()`](#method-ChatAdminWithInvites-to_list)

- [`ChatAdminWithInvites$bytes()`](#method-ChatAdminWithInvites-bytes)

- [`ChatAdminWithInvites$clone()`](#method-ChatAdminWithInvites-clone)

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

    ChatAdminWithInvites$new(admin_id, invites_count, revoked_invites_count)

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    ChatAdminWithInvites$to_list()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    ChatAdminWithInvites$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatAdminWithInvites$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
