# ActivateStealthModeRequest

Telegram API type ActivateStealthModeRequest

## Details

ActivateStealthModeRequest R6 class

Request to activate stealth mode with optional past/future flags.
Returns Updates.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ActivateStealthModeRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `past`:

  Field.

- `future`:

  Field.

## Methods

### Public methods

- [`ActivateStealthModeRequest$new()`](#method-ActivateStealthModeRequest-new)

- [`ActivateStealthModeRequest$to_list()`](#method-ActivateStealthModeRequest-to_list)

- [`ActivateStealthModeRequest$to_bytes()`](#method-ActivateStealthModeRequest-to_bytes)

- [`ActivateStealthModeRequest$clone()`](#method-ActivateStealthModeRequest-clone)

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

Initialize ActivateStealthModeRequest

#### Usage

    ActivateStealthModeRequest$new(past = NULL, future = NULL)

#### Arguments

- `past`:

  logical or NULL

- `future`:

  logical or NULL

#### Returns

invisible self

------------------------------------------------------------------------

### Method `to_list()`

Convert to list

#### Usage

    ActivateStealthModeRequest$to_list()

#### Returns

list

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw TL bytes

#### Usage

    ActivateStealthModeRequest$to_bytes()

#### Returns

raw

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ActivateStealthModeRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
