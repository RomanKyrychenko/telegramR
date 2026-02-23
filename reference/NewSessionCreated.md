# NewSessionCreated

Telegram API type NewSessionCreated

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `NewSessionCreated`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `first_msg_id`:

  Field.

- `unique_id`:

  Field.

- `server_salt`:

  Field.

## Methods

### Public methods

- [`NewSessionCreated$new()`](#method-NewSessionCreated-new)

- [`NewSessionCreated$to_dict()`](#method-NewSessionCreated-to_dict)

- [`NewSessionCreated$bytes()`](#method-NewSessionCreated-bytes)

- [`NewSessionCreated$clone()`](#method-NewSessionCreated-clone)

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

    NewSessionCreated$new(
      first_msg_id = NULL,
      unique_id = NULL,
      server_salt = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    NewSessionCreated$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    NewSessionCreated$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    NewSessionCreated$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
