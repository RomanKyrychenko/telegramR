# MessageActionPhoneCall

Telegram API type MessageActionPhoneCall

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionPhoneCall`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `call_id`:

  Field.

- `video`:

  Field.

- `reason`:

  Field.

- `duration`:

  Field.

## Methods

### Public methods

- [`MessageActionPhoneCall$new()`](#method-MessageActionPhoneCall-new)

- [`MessageActionPhoneCall$to_dict()`](#method-MessageActionPhoneCall-to_dict)

- [`MessageActionPhoneCall$bytes()`](#method-MessageActionPhoneCall-bytes)

- [`MessageActionPhoneCall$clone()`](#method-MessageActionPhoneCall-clone)

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

    MessageActionPhoneCall$new(
      call_id,
      video = NULL,
      reason = NULL,
      duration = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionPhoneCall$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionPhoneCall$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionPhoneCall$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
