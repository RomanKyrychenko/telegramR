# SendMultiMediaRequest

Represents a request to send multi media. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SendMultiMediaRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SendMultiMediaRequest$new()`](#method-SendMultiMediaRequest-new)

- [`SendMultiMediaRequest$resolve()`](#method-SendMultiMediaRequest-resolve)

- [`SendMultiMediaRequest$to_dict()`](#method-SendMultiMediaRequest-to_dict)

- [`SendMultiMediaRequest$bytes()`](#method-SendMultiMediaRequest-bytes)

- [`SendMultiMediaRequest$clone()`](#method-SendMultiMediaRequest-clone)

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

Initialize the SendMultiMediaRequest object.

#### Usage

    SendMultiMediaRequest$new(
      peer,
      multi_media,
      silent = NULL,
      background = NULL,
      clear_draft = NULL,
      noforwards = NULL,
      update_stickersets_order = NULL,
      invert_media = NULL,
      allow_paid_floodskip = NULL,
      reply_to = NULL,
      schedule_date = NULL,
      send_as = NULL,
      quick_reply_shortcut = NULL,
      effect = NULL,
      allow_paid_stars = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `multi_media`:

  List of input single media.

- `silent`:

  Optional silent flag.

- `background`:

  Optional background flag.

- `clear_draft`:

  Optional clear draft flag.

- `noforwards`:

  Optional no forwards flag.

- `update_stickersets_order`:

  Optional update stickersets order flag.

- `invert_media`:

  Optional invert media flag.

- `allow_paid_floodskip`:

  Optional allow paid floodskip flag.

- `reply_to`:

  Optional input reply to.

- `schedule_date`:

  Optional schedule date.

- `send_as`:

  Optional input peer to send as.

- `quick_reply_shortcut`:

  Optional input quick reply shortcut.

- `effect`:

  Optional effect ID.

- `allow_paid_stars`:

  Optional allow paid stars count.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    SendMultiMediaRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SendMultiMediaRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SendMultiMediaRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SendMultiMediaRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
