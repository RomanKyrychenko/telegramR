# CreateBusinessChatLinkRequest

R6 class representing a CreateBusinessChatLinkRequest.

## Details

This class handles creating a business chat link.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `CreateBusinessChatLinkRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`CreateBusinessChatLinkRequest$new()`](#method-CreateBusinessChatLinkRequest-new)

- [`CreateBusinessChatLinkRequest$toDict()`](#method-CreateBusinessChatLinkRequest-toDict)

- [`CreateBusinessChatLinkRequest$bytes()`](#method-CreateBusinessChatLinkRequest-bytes)

- [`CreateBusinessChatLinkRequest$fromReader()`](#method-CreateBusinessChatLinkRequest-fromReader)

- [`CreateBusinessChatLinkRequest$clone()`](#method-CreateBusinessChatLinkRequest-clone)

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
- [`telegramR::TLObject$to_dict()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_dict)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the CreateBusinessChatLinkRequest.

#### Usage

    CreateBusinessChatLinkRequest$new(link)

#### Arguments

- `link`:

  The input business chat link.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    CreateBusinessChatLinkRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    CreateBusinessChatLinkRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    CreateBusinessChatLinkRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of CreateBusinessChatLinkRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateBusinessChatLinkRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
