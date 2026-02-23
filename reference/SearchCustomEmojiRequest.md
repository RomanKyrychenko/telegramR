# SearchCustomEmojiRequest

Represents a request to search custom emoji. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SearchCustomEmojiRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SearchCustomEmojiRequest$new()`](#method-SearchCustomEmojiRequest-new)

- [`SearchCustomEmojiRequest$to_dict()`](#method-SearchCustomEmojiRequest-to_dict)

- [`SearchCustomEmojiRequest$bytes()`](#method-SearchCustomEmojiRequest-bytes)

- [`SearchCustomEmojiRequest$clone()`](#method-SearchCustomEmojiRequest-clone)

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
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the SearchCustomEmojiRequest object.

#### Usage

    SearchCustomEmojiRequest$new(emoticon, hash)

#### Arguments

- `emoticon`:

  The emoticon string.

- `hash`:

  The hash for caching.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SearchCustomEmojiRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SearchCustomEmojiRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SearchCustomEmojiRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
