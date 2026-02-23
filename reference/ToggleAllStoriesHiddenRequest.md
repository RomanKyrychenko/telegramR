# ToggleAllStoriesHiddenRequest R6 class

ToggleAllStoriesHiddenRequest R6 class

ToggleAllStoriesHiddenRequest R6 class

## Details

Represents a TL request to toggle the "all stories hidden" flag.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleAllStoriesHiddenRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `hidden`:

  Field.

## Methods

### Public methods

- [`ToggleAllStoriesHiddenRequest$new()`](#method-ToggleAllStoriesHiddenRequest-new)

- [`ToggleAllStoriesHiddenRequest$to_list()`](#method-ToggleAllStoriesHiddenRequest-to_list)

- [`ToggleAllStoriesHiddenRequest$to_bytes()`](#method-ToggleAllStoriesHiddenRequest-to_bytes)

- [`ToggleAllStoriesHiddenRequest$clone()`](#method-ToggleAllStoriesHiddenRequest-clone)

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

Initialize ToggleAllStoriesHiddenRequest

#### Usage

    ToggleAllStoriesHiddenRequest$new(hidden)

#### Arguments

- `hidden`:

  logical

------------------------------------------------------------------------

### Method `to_list()`

Convert to list (similar to to_dict)

#### Usage

    ToggleAllStoriesHiddenRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes

Produces a raw vector matching TL binary layout for this request.

#### Usage

    ToggleAllStoriesHiddenRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleAllStoriesHiddenRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
