# ChatInviteExported

Telegram API type ChatInviteExported

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatInviteExported`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `link`:

  Field.

- `admin_id`:

  Field.

- `date`:

  Field.

- `revoked`:

  Field.

- `permanent`:

  Field.

- `request_needed`:

  Field.

- `start_date`:

  Field.

- `expire_date`:

  Field.

- `usage_limit`:

  Field.

- `usage`:

  Field.

- `requested`:

  Field.

- `subscription_expired`:

  Field.

- `title`:

  Field.

- `subscription_pricing`:

  Field.

## Methods

### Public methods

- [`ChatInviteExported$new()`](#method-ChatInviteExported-new)

- [`ChatInviteExported$to_dict()`](#method-ChatInviteExported-to_dict)

- [`ChatInviteExported$clone()`](#method-ChatInviteExported-clone)

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

    ChatInviteExported$new(
      link,
      admin_id,
      date,
      revoked = NULL,
      permanent = NULL,
      request_needed = NULL,
      start_date = NULL,
      expire_date = NULL,
      usage_limit = NULL,
      usage = NULL,
      requested = NULL,
      subscription_expired = NULL,
      title = NULL,
      subscription_pricing = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChatInviteExported$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatInviteExported$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
