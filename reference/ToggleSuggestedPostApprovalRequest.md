# ToggleSuggestedPostApprovalRequest

Represents a request to toggle suggested post approval. This class
inherits from TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `ToggleSuggestedPostApprovalRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`ToggleSuggestedPostApprovalRequest$new()`](#method-ToggleSuggestedPostApprovalRequest-new)

- [`ToggleSuggestedPostApprovalRequest$resolve()`](#method-ToggleSuggestedPostApprovalRequest-resolve)

- [`ToggleSuggestedPostApprovalRequest$to_dict()`](#method-ToggleSuggestedPostApprovalRequest-to_dict)

- [`ToggleSuggestedPostApprovalRequest$bytes()`](#method-ToggleSuggestedPostApprovalRequest-bytes)

- [`ToggleSuggestedPostApprovalRequest$clone()`](#method-ToggleSuggestedPostApprovalRequest-clone)

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

Initialize the ToggleSuggestedPostApprovalRequest object.

#### Usage

    ToggleSuggestedPostApprovalRequest$new(
      peer,
      msg_id,
      reject = NULL,
      schedule_date = NULL,
      reject_comment = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `msg_id`:

  The message ID.

- `reject`:

  Optional reject flag.

- `schedule_date`:

  Optional schedule date.

- `reject_comment`:

  Optional reject comment.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    ToggleSuggestedPostApprovalRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    ToggleSuggestedPostApprovalRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    ToggleSuggestedPostApprovalRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    ToggleSuggestedPostApprovalRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
