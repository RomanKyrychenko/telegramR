# UploadProfilePhotoRequest

Telegram API type UploadProfilePhotoRequest

## Format

A R6 object inheriting from TLRequest.

## Details

UploadProfilePhotoRequest

R6 translation of the TLRequest UploadProfilePhotoRequest.

## Methods

\- new(fallback = NULL, bot = NULL, file = NULL, video = NULL,
video_start_ts = NULL, video_emoji_markup = NULL): Create a new
UploadProfilePhotoRequest object. - resolve(client, utils): Resolve
references (e.g. convert a bot entity to input user via utils). -
to_list(): Return a list representation suitable for JSON /
introspection. - to_bytes(): Serialize the object to a raw vector
(little-endian packing). - from_reader(reader): Class method: read
fields from a reader and construct an instance.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `UploadProfilePhotoRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  integer

- `SUBCLASS_OF_ID`:

  integer

- `fallback`:

  logical (optional)

- `bot`:

  TLObject or NULL

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

- [`UploadProfilePhotoRequest$new()`](#method-UploadProfilePhotoRequest-new)

- [`UploadProfilePhotoRequest$resolve()`](#method-UploadProfilePhotoRequest-resolve)

- [`UploadProfilePhotoRequest$to_list()`](#method-UploadProfilePhotoRequest-to_list)

- [`UploadProfilePhotoRequest$to_bytes()`](#method-UploadProfilePhotoRequest-to_bytes)

- [`UploadProfilePhotoRequest$clone()`](#method-UploadProfilePhotoRequest-clone)

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

Initialize a new UploadProfilePhotoRequest

#### Usage

    UploadProfilePhotoRequest$new(
      fallback = NULL,
      bot = NULL,
      file = NULL,
      video = NULL,
      video_start_ts = NULL,
      video_emoji_markup = NULL
    )

#### Arguments

- `fallback`:

  logical or NULL

- `bot`:

  TLObject or identifier for bot or NULL

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

Convert provided bot identifier into an input user using client and
utils.

#### Usage

    UploadProfilePhotoRequest$resolve(client, utils)

#### Arguments

- `client`:

  client with get_input_entity method

- `utils`:

  helper with get_input_user method

------------------------------------------------------------------------

### Method `to_list()`

Convert object to a list

#### Usage

    UploadProfilePhotoRequest$to_list()

#### Returns

list representation of the request

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to bytes (raw vector)

Packs constructor id, flags and present fields in little-endian order.
Relies on contained TLObject instances implementing to_bytes().

#### Usage

    UploadProfilePhotoRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    UploadProfilePhotoRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
