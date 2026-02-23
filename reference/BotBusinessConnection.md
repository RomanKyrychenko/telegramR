# BotBusinessConnection

Telegram API type BotBusinessConnection

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `BotBusinessConnection`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `connection_id`:

  Field.

- `user_id`:

  Field.

- `dc_id`:

  Field.

- `date`:

  Field.

- `disabled`:

  Field.

- `rights`:

  Field.

## Methods

### Public methods

- [`BotBusinessConnection$new()`](#method-BotBusinessConnection-new)

- [`BotBusinessConnection$to_dict()`](#method-BotBusinessConnection-to_dict)

- [`BotBusinessConnection$bytes()`](#method-BotBusinessConnection-bytes)

- [`BotBusinessConnection$clone()`](#method-BotBusinessConnection-clone)

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

Initializes the BotBusinessConnection with the given parameters.

#### Usage

    BotBusinessConnection$new(
      connection_id,
      user_id,
      dc_id,
      date = NULL,
      disabled = NULL,
      rights = NULL
    )

#### Arguments

- `connection_id`:

  A string representing the connection ID.

- `user_id`:

  An integer representing the user ID.

- `dc_id`:

  An integer representing the data center ID.

- `date`:

  A datetime object representing the date. Optional.

- `disabled`:

  A boolean indicating if disabled. Optional.

- `rights`:

  A TLObject representing the rights. Optional.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the BotBusinessConnection object to a list (dictionary).

#### Usage

    BotBusinessConnection$to_dict()

#### Returns

A list representation of the BotBusinessConnection object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the BotBusinessConnection object to bytes.

#### Usage

    BotBusinessConnection$bytes()

#### Returns

A raw vector representing the serialized bytes of the
BotBusinessConnection object. Reads a BotBusinessConnection object from
a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BotBusinessConnection$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
