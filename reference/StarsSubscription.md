# StarsSubscription

Telegram API type StarsSubscription

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `StarsSubscription`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`StarsSubscription$new()`](#method-StarsSubscription-new)

- [`StarsSubscription$to_dict()`](#method-StarsSubscription-to_dict)

- [`StarsSubscription$bytes()`](#method-StarsSubscription-bytes)

- [`StarsSubscription$clone()`](#method-StarsSubscription-clone)

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

    StarsSubscription$new(
      id,
      peer,
      until_date,
      pricing,
      canceled = NULL,
      can_refulfill = NULL,
      missing_balance = NULL,
      bot_canceled = NULL,
      chat_invite_hash = NULL,
      title = NULL,
      photo = NULL,
      invoice_slug = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    StarsSubscription$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    StarsSubscription$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    StarsSubscription$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
