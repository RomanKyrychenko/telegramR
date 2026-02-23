# InitTakeoutSessionRequest

R6 class representing an InitTakeoutSessionRequest.

## Details

This class handles initializing a takeout session with various options.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `InitTakeoutSessionRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID for the request.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`InitTakeoutSessionRequest$new()`](#method-InitTakeoutSessionRequest-new)

- [`InitTakeoutSessionRequest$toDict()`](#method-InitTakeoutSessionRequest-toDict)

- [`InitTakeoutSessionRequest$bytes()`](#method-InitTakeoutSessionRequest-bytes)

- [`InitTakeoutSessionRequest$fromReader()`](#method-InitTakeoutSessionRequest-fromReader)

- [`InitTakeoutSessionRequest$clone()`](#method-InitTakeoutSessionRequest-clone)

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

Initialize the InitTakeoutSessionRequest.

#### Usage

    InitTakeoutSessionRequest$new(
      contacts = NULL,
      messageUsers = NULL,
      messageChats = NULL,
      messageMegagroups = NULL,
      messageChannels = NULL,
      files = NULL,
      fileMaxSize = NULL
    )

#### Arguments

- `contacts`:

  Optional boolean indicating if contacts are included.

- `messageUsers`:

  Optional boolean indicating if message users are included.

- `messageChats`:

  Optional boolean indicating if message chats are included.

- `messageMegagroups`:

  Optional boolean indicating if message megagroups are included.

- `messageChannels`:

  Optional boolean indicating if message channels are included.

- `files`:

  Optional boolean indicating if files are included.

- `fileMaxSize`:

  Optional maximum file size.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    InitTakeoutSessionRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    InitTakeoutSessionRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    InitTakeoutSessionRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of InitTakeoutSessionRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    InitTakeoutSessionRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
