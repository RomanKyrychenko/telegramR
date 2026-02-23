# InputPeerPhotoFileLocation

Telegram API type InputPeerPhotoFileLocation

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `InputPeerPhotoFileLocation`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `peer`:

  Field.

- `photo_id`:

  Field.

- `big`:

  Field.

## Methods

### Public methods

- [`InputPeerPhotoFileLocation$new()`](#method-InputPeerPhotoFileLocation-new)

- [`InputPeerPhotoFileLocation$to_dict()`](#method-InputPeerPhotoFileLocation-to_dict)

- [`InputPeerPhotoFileLocation$bytes()`](#method-InputPeerPhotoFileLocation-bytes)

- [`InputPeerPhotoFileLocation$clone()`](#method-InputPeerPhotoFileLocation-clone)

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

    InputPeerPhotoFileLocation$new(peer, photo_id, big = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    InputPeerPhotoFileLocation$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    InputPeerPhotoFileLocation$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InputPeerPhotoFileLocation$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
