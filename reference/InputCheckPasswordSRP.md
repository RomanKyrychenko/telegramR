# InputCheckPasswordSRP

Telegram API type InputCheckPasswordSRP

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputCheckPasswordSRP`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `srp_id`:

  Field.

- `A`:

  Field.

- `M1`:

  Field.

## Methods

### Public methods

- [`InputCheckPasswordSRP$new()`](#method-InputCheckPasswordSRP-new)

- [`InputCheckPasswordSRP$to_dict()`](#method-InputCheckPasswordSRP-to_dict)

- [`InputCheckPasswordSRP$bytes()`](#method-InputCheckPasswordSRP-bytes)

- [`InputCheckPasswordSRP$clone()`](#method-InputCheckPasswordSRP-clone)

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

    InputCheckPasswordSRP$new(srp_id, A, M1)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputCheckPasswordSRP$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputCheckPasswordSRP$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputCheckPasswordSRP$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
