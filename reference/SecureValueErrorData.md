# SecureValueErrorData

Telegram API type SecureValueErrorData

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `SecureValueErrorData`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `type`:

  Field.

- `data_hash`:

  Field.

- `field`:

  Field.

- `text`:

  Field.

## Methods

### Public methods

- [`SecureValueErrorData$new()`](#method-SecureValueErrorData-new)

- [`SecureValueErrorData$to_dict()`](#method-SecureValueErrorData-to_dict)

- [`SecureValueErrorData$bytes()`](#method-SecureValueErrorData-bytes)

- [`SecureValueErrorData$clone()`](#method-SecureValueErrorData-clone)

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

    SecureValueErrorData$new(
      type = NULL,
      data_hash = NULL,
      field = NULL,
      text = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    SecureValueErrorData$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    SecureValueErrorData$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SecureValueErrorData$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
