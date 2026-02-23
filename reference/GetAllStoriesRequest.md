# GetAllStoriesRequest

Telegram API type GetAllStoriesRequest

## Details

GetAllStoriesRequest R6 class

Request to get all stories with optional pagination/visibility/state.
Returns stories.AllStories (or AllStoriesNotModified).

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetAllStoriesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `hidden`:

  Field.

- `state`:

  Field.

## Methods

### Public methods

- [`GetAllStoriesRequest$new()`](#method-GetAllStoriesRequest-new)

- [`GetAllStoriesRequest$to_list()`](#method-GetAllStoriesRequest-to_list)

- [`GetAllStoriesRequest$to_bytes()`](#method-GetAllStoriesRequest-to_bytes)

- [`GetAllStoriesRequest$clone()`](#method-GetAllStoriesRequest-clone)

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

Initialize GetAllStoriesRequest

#### Usage

    GetAllStoriesRequest$new(.next = NULL, hidden = NULL, state = NULL)

#### Arguments

- `hidden`:

  logical or NULL

- `state`:

  character or NULL

- [`next`](https://rdrr.io/r/base/Control.html):

  logical or NULL

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    GetAllStoriesRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    GetAllStoriesRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetAllStoriesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
