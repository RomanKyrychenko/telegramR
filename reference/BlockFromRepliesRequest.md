# BlockFromRepliesRequest

Methods: - initialize(msg_id, delete_message = NULL, delete_history =
NULL, report_spam = NULL): create new request - to_list(): return a list
representation - to_bytes(): return raw vector of bytes for the TL
request

## Details

R6 representation of the TL request: BlockFromRepliesRequest

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `BlockFromRepliesRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `msg_id`:

  Field.

- `delete_message`:

  Field.

- `delete_history`:

  Field.

- `report_spam`:

  Field.

## Methods

### Public methods

- [`BlockFromRepliesRequest$new()`](#method-BlockFromRepliesRequest-new)

- [`BlockFromRepliesRequest$to_list()`](#method-BlockFromRepliesRequest-to_list)

- [`BlockFromRepliesRequest$to_bytes()`](#method-BlockFromRepliesRequest-to_bytes)

- [`BlockFromRepliesRequest$clone()`](#method-BlockFromRepliesRequest-clone)

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

Initialize BlockFromRepliesRequest

#### Usage

    BlockFromRepliesRequest$new(
      msg_id,
      delete_message = NULL,
      delete_history = NULL,
      report_spam = NULL
    )

#### Arguments

- `msg_id`:

  integer message id

- `delete_message`:

  logical or NULL

- `delete_history`:

  logical or NULL

- `report_spam`:

  logical or NULL Convert to list

------------------------------------------------------------------------

### Method `to_list()`

#### Usage

    BlockFromRepliesRequest$to_list()

#### Returns

list Serialize to bytes (raw vector)

Packs flags (uint32 little-endian) and msg_id as int32 little-endian.

------------------------------------------------------------------------

### Method `to_bytes()`

#### Usage

    BlockFromRepliesRequest$to_bytes()

#### Returns

raw Convert integer to little-endian raw vector of given size (bytes)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    BlockFromRepliesRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
