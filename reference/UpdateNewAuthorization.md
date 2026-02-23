# UpdateNewAuthorization

Telegram API type UpdateNewAuthorization

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `UpdateNewAuthorization`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

## Methods

### Public methods

- [`UpdateNewAuthorization$new()`](#method-UpdateNewAuthorization-new)

- [`UpdateNewAuthorization$to_dict()`](#method-UpdateNewAuthorization-to_dict)

- [`UpdateNewAuthorization$bytes()`](#method-UpdateNewAuthorization-bytes)

- [`UpdateNewAuthorization$clone()`](#method-UpdateNewAuthorization-clone)

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

    UpdateNewAuthorization$new(
      hash,
      unconfirmed = NULL,
      date = NULL,
      device = NULL,
      location = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    UpdateNewAuthorization$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    UpdateNewAuthorization$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UpdateNewAuthorization$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
