# ClearSavedInfoRequest

Telegram API type ClearSavedInfoRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ClearSavedInfoRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `credentials`:

  Field.

- `info`:

  Field.

## Methods

### Public methods

- [`ClearSavedInfoRequest$new()`](#method-ClearSavedInfoRequest-new)

- [`ClearSavedInfoRequest$to_dict()`](#method-ClearSavedInfoRequest-to_dict)

- [`ClearSavedInfoRequest$bytes()`](#method-ClearSavedInfoRequest-bytes)

- [`ClearSavedInfoRequest$from_reader()`](#method-ClearSavedInfoRequest-from_reader)

- [`ClearSavedInfoRequest$clone()`](#method-ClearSavedInfoRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the ClearSavedInfoRequest object.

#### Usage

    ClearSavedInfoRequest$new(credentials = NULL, info = NULL)

#### Arguments

- `credentials`:

  Optional boolean flag to clear credentials.

- `info`:

  Optional boolean flag to clear info.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary-like list.

#### Usage

    ClearSavedInfoRequest$to_dict()

#### Returns

A list representing the object in dictionary form.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ClearSavedInfoRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize from a reader.

#### Usage

    ClearSavedInfoRequest$from_reader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ClearSavedInfoRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ClearSavedInfoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
