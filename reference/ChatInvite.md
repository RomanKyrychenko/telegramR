# ChatInvite

Telegram API type ChatInvite

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `ChatInvite`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `title`:

  Field.

- `photo`:

  Field.

- `participants_count`:

  Field.

- `color`:

  Field.

- `channel`:

  Field.

- `broadcast`:

  Field.

- `public`:

  Field.

- `megagroup`:

  Field.

- `request_needed`:

  Field.

- `verified`:

  Field.

- `scam`:

  Field.

- `fake`:

  Field.

- `can_refulfill_subscription`:

  Field.

- `about`:

  Field.

- `participants`:

  Field.

- `subscription_pricing`:

  Field.

- `subscription_form_id`:

  Field.

- `bot_verification`:

  Field.

## Methods

### Public methods

- [`ChatInvite$new()`](#method-ChatInvite-new)

- [`ChatInvite$to_dict()`](#method-ChatInvite-to_dict)

- [`ChatInvite$clone()`](#method-ChatInvite-clone)

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

    ChatInvite$new(
      title,
      photo,
      participants_count,
      color,
      channel = NULL,
      broadcast = NULL,
      public = NULL,
      megagroup = NULL,
      request_needed = NULL,
      verified = NULL,
      scam = NULL,
      fake = NULL,
      can_refulfill_subscription = NULL,
      about = NULL,
      participants = NULL,
      subscription_pricing = NULL,
      subscription_form_id = NULL,
      bot_verification = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    ChatInvite$to_dict()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ChatInvite$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
