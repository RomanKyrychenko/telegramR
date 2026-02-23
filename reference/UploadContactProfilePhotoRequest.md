# UploadContactProfilePhotoRequest

Telegram API type UploadContactProfilePhotoRequest

## Format

A R6 object inheriting from TLRequest.

## Details

UploadContactProfilePhotoRequest

R6 translation of the TLRequest UploadContactProfilePhotoRequest.

## Methods

\- new(user_id = NULL, suggest = NULL, save = NULL, file = NULL, video =
NULL, video_start_ts = NULL, video_emoji_markup = NULL): Create a new
UploadContactProfilePhotoRequest object. - resolve(client, utils):
Resolve references (convert a user identifier to input user via
utils). - to_list(): Return a list representation suitable for JSON /
introspection. - to_bytes(): Serialize the object to a raw vector
(little-endian packing). - from_reader(reader): Class method: read
fields from a reader and construct an instance.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UploadContactProfilePhotoRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  integer

- `SUBCLASS_OF_ID`:

  integer

- `user_id`:

  TLObject or NULL

- `suggest`:

  logical (optional)

- `save`:

  logical (optional)

- `file`:

  TLObject or NULL

- `video`:

  TLObject or NULL

- `video_start_ts`:

  numeric or NULL

- `video_emoji_markup`:

  TLObject or NULL

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`UploadContactProfilePhotoRequest$new()`](#method-UploadContactProfilePhotoRequest-new)

- [`UploadContactProfilePhotoRequest$resolve()`](#method-UploadContactProfilePhotoRequest-resolve)

- [`UploadContactProfilePhotoRequest$to_list()`](#method-UploadContactProfilePhotoRequest-to_list)

- [`UploadContactProfilePhotoRequest$to_bytes()`](#method-UploadContactProfilePhotoRequest-to_bytes)

- [`UploadContactProfilePhotoRequest$clone()`](#method-UploadContactProfilePhotoRequest-clone)

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

Initialize a new UploadContactProfilePhotoRequest

#### Usage

    UploadContactProfilePhotoRequest$new(
      user_id = NULL,
      suggest = NULL,
      save = NULL,
      file = NULL,
      video = NULL,
      video_start_ts = NULL,
      video_emoji_markup = NULL
    )

#### Arguments

- `user_id`:

  TLObject or identifier for user

- `suggest`:

  logical or NULL

- `save`:

  logical or NULL

- `file`:

  TLObject or NULL

- `video`:

  TLObject or NULL

- `video_start_ts`:

  numeric or NULL

- `video_emoji_markup`:

  TLObject or NULL

------------------------------------------------------------------------

### Method `resolve()`

Resolve references (client + utils)

Convert provided user identifier into an input user using client and
utils.

#### Usage

    UploadContactProfilePhotoRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  helper with get_input_user method

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    UploadContactProfilePhotoRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes (raw vector)

Packs constructor id, flags and present fields in little-endian order.
Relies on contained TLObject instances implementing to_bytes().

#### Usage

    UploadContactProfilePhotoRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UploadContactProfilePhotoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
