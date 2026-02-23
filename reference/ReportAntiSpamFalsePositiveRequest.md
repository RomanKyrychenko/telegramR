# ReportAntiSpamFalsePositiveRequest

Represents a request to report an anti-spam false positive in a channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ReportAntiSpamFalsePositiveRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `channel`:

  Field.

- `msg_id`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`ReportAntiSpamFalsePositiveRequest$new()`](#method-ReportAntiSpamFalsePositiveRequest-new)

- [`ReportAntiSpamFalsePositiveRequest$resolve()`](#method-ReportAntiSpamFalsePositiveRequest-resolve)

- [`ReportAntiSpamFalsePositiveRequest$to_dict()`](#method-ReportAntiSpamFalsePositiveRequest-to_dict)

- [`ReportAntiSpamFalsePositiveRequest$bytes()`](#method-ReportAntiSpamFalsePositiveRequest-bytes)

- [`ReportAntiSpamFalsePositiveRequest$clone()`](#method-ReportAntiSpamFalsePositiveRequest-clone)

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

------------------------------------------------------------------------

### Method `new()`

Initialize the ReportAntiSpamFalsePositiveRequest.

#### Usage

    ReportAntiSpamFalsePositiveRequest$new(channel, msg_id)

#### Arguments

- `channel`:

  The input channel.

- `msg_id`:

  The message ID.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the channel entity.

#### Usage

    ReportAntiSpamFalsePositiveRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utilities object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    ReportAntiSpamFalsePositiveRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ReportAntiSpamFalsePositiveRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReportAntiSpamFalsePositiveRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
