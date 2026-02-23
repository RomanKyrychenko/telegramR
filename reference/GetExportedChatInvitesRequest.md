# GetExportedChatInvitesRequest

Represents a request to get exported chat invites. This class inherits
from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetExportedChatInvitesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`GetExportedChatInvitesRequest$new()`](#method-GetExportedChatInvitesRequest-new)

- [`GetExportedChatInvitesRequest$resolve()`](#method-GetExportedChatInvitesRequest-resolve)

- [`GetExportedChatInvitesRequest$toDict()`](#method-GetExportedChatInvitesRequest-toDict)

- [`GetExportedChatInvitesRequest$bytes()`](#method-GetExportedChatInvitesRequest-bytes)

- [`GetExportedChatInvitesRequest$clone()`](#method-GetExportedChatInvitesRequest-clone)

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

Initialize the GetExportedChatInvitesRequest object.

#### Usage

    GetExportedChatInvitesRequest$new(
      peer,
      adminId,
      limit,
      revoked = NULL,
      offsetDate = NULL,
      offsetLink = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `adminId`:

  The input admin user.

- `limit`:

  The limit value.

- `revoked`:

  Whether revoked.

- `offsetDate`:

  The offset date.

- `offsetLink`:

  The offset link.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    GetExportedChatInvitesRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `toDict()`

Convert the object to a dictionary.

#### Usage

    GetExportedChatInvitesRequest$toDict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    GetExportedChatInvitesRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetExportedChatInvitesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
