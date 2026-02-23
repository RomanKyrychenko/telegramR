# SaveAutoSaveSettingsRequest

R6 class representing a SaveAutoSaveSettingsRequest.

## Details

This class handles saving auto-save settings with optional flags for
users, chats, broadcasts, and a peer.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SaveAutoSaveSettingsRequest`

## Methods

### Public methods

- [`SaveAutoSaveSettingsRequest$new()`](#method-SaveAutoSaveSettingsRequest-new)

- [`SaveAutoSaveSettingsRequest$resolve()`](#method-SaveAutoSaveSettingsRequest-resolve)

- [`SaveAutoSaveSettingsRequest$toDict()`](#method-SaveAutoSaveSettingsRequest-toDict)

- [`SaveAutoSaveSettingsRequest$bytes()`](#method-SaveAutoSaveSettingsRequest-bytes)

- [`SaveAutoSaveSettingsRequest$fromReader()`](#method-SaveAutoSaveSettingsRequest-fromReader)

- [`SaveAutoSaveSettingsRequest$clone()`](#method-SaveAutoSaveSettingsRequest-clone)

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

Initialize the SaveAutoSaveSettingsRequest.

#### Usage

    SaveAutoSaveSettingsRequest$new(
      settings,
      users = NULL,
      chats = NULL,
      broadcasts = NULL,
      peer = NULL
    )

#### Arguments

- `settings`:

  The auto-save settings.

- `users`:

  Optional boolean indicating if for users.

- `chats`:

  Optional boolean indicating if for chats.

- `broadcasts`:

  Optional boolean indicating if for broadcasts.

- `peer`:

  Optional input peer.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the peer using client and utils.

#### Usage

    SaveAutoSaveSettingsRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert to dictionary.

#### Usage

    SaveAutoSaveSettingsRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize to bytes.

#### Usage

    SaveAutoSaveSettingsRequest$bytes()

#### Returns

Raw bytes.

------------------------------------------------------------------------

### Method `fromReader()`

Create from reader.

#### Usage

    SaveAutoSaveSettingsRequest$fromReader(reader)

#### Arguments

- `reader`:

  The reader object.

#### Returns

An instance of SaveAutoSaveSettingsRequest.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveAutoSaveSettingsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
