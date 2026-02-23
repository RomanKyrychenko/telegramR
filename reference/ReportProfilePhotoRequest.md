# ReportProfilePhotoRequest

R6 class representing a ReportProfilePhotoRequest.

## Details

This class handles reporting a profile photo with a peer, photo ID,
reason, and message.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ReportProfilePhotoRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`ReportProfilePhotoRequest$new()`](#method-ReportProfilePhotoRequest-new)

- [`ReportProfilePhotoRequest$resolve()`](#method-ReportProfilePhotoRequest-resolve)

- [`ReportProfilePhotoRequest$toDict()`](#method-ReportProfilePhotoRequest-toDict)

- [`ReportProfilePhotoRequest$bytes()`](#method-ReportProfilePhotoRequest-bytes)

- [`ReportProfilePhotoRequest$fromReader()`](#method-ReportProfilePhotoRequest-fromReader)

- [`ReportProfilePhotoRequest$clone()`](#method-ReportProfilePhotoRequest-clone)

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

------------------------------------------------------------------------

### Method `new()`

Initialize the ReportProfilePhotoRequest.

#### Usage

    ReportProfilePhotoRequest$new(peer, photoId, reason, message)

#### Arguments

- `peer`:

  The input peer.

- `photoId`:

  The input photo ID.

- `reason`:

  The report reason.

- `message`:

  The message string.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer and photo ID using client and utils.

#### Usage

    ReportProfilePhotoRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    ReportProfilePhotoRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    ReportProfilePhotoRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    ReportProfilePhotoRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of ReportProfilePhotoRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ReportProfilePhotoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
