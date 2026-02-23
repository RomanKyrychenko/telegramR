# SaveDraftRequest

Represents a request to save a draft message. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SaveDraftRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SaveDraftRequest$new()`](#method-SaveDraftRequest-new)

- [`SaveDraftRequest$resolve()`](#method-SaveDraftRequest-resolve)

- [`SaveDraftRequest$to_dict()`](#method-SaveDraftRequest-to_dict)

- [`SaveDraftRequest$bytes()`](#method-SaveDraftRequest-bytes)

- [`SaveDraftRequest$clone()`](#method-SaveDraftRequest-clone)

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

Initialize the SaveDraftRequest object.

#### Usage

    SaveDraftRequest$new(
      peer,
      message,
      no_webpage = NULL,
      invert_media = NULL,
      reply_to = NULL,
      entities = NULL,
      media = NULL,
      effect = NULL,
      suggested_post = NULL
    )

#### Arguments

- `peer`:

  The input peer.

- `message`:

  The message string.

- `no_webpage`:

  Optional no webpage flag.

- `invert_media`:

  Optional invert media flag.

- `reply_to`:

  Optional input reply to.

- `entities`:

  Optional list of message entities.

- `media`:

  Optional input media.

- `effect`:

  Optional effect ID.

- `suggested_post`:

  Optional suggested post.

------------------------------------------------------------------------

### Method `resolve()`

Resolve the request using client and utils.

#### Usage

    SaveDraftRequest$resolve(client, utils)

#### Arguments

- `client`:

  The client object.

- `utils`:

  The utils object.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SaveDraftRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SaveDraftRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SaveDraftRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
