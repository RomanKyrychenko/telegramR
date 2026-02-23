# AutoSaveException

Telegram API type AutoSaveException

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AutoSaveException`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `settings`:

  Field.

## Methods

### Public methods

- [`AutoSaveException$new()`](#method-AutoSaveException-new)

- [`AutoSaveException$to_dict()`](#method-AutoSaveException-to_dict)

- [`AutoSaveException$bytes()`](#method-AutoSaveException-bytes)

- [`AutoSaveException$clone()`](#method-AutoSaveException-clone)

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

Initializes the AutoSaveException with the given parameters.

#### Usage

    AutoSaveException$new(peer, settings)

#### Arguments

- `peer`:

  A TypePeer object representing the peer.

- `settings`:

  A TypeAutoSaveSettings object representing the settings.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AutoSaveException object to a list (dictionary).

#### Usage

    AutoSaveException$to_dict()

#### Returns

A list representation of the AutoSaveException object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AutoSaveException object to bytes.

#### Usage

    AutoSaveException$bytes()

#### Returns

A raw vector representing the serialized bytes of the AutoSaveException
object. Reads an AutoSaveException object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AutoSaveException$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
