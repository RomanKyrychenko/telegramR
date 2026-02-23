# SecureValue

Telegram API type SecureValue

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `SecureValue`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `type`:

  Field.

- `hash`:

  Field.

- `data`:

  Field.

- `front_side`:

  Field.

- `reverse_side`:

  Field.

- `selfie`:

  Field.

- `translation`:

  Field.

- `files`:

  Field.

- `plaindata`:

  Field.

## Methods

### Public methods

- [`SecureValue$new()`](#method-SecureValue-new)

- [`SecureValue$to_dict()`](#method-SecureValue-to_dict)

- [`SecureValue$bytes()`](#method-SecureValue-bytes)

- [`SecureValue$clone()`](#method-SecureValue-clone)

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

    SecureValue$new(
      type = NULL,
      hash = NULL,
      data = NULL,
      front_side = NULL,
      reverse_side = NULL,
      selfie = NULL,
      translation = NULL,
      files = NULL,
      plaindata = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    SecureValue$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    SecureValue$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SecureValue$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
