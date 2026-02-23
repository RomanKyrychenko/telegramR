# SetInlineBotResultsRequest

Represents a request to set inline bot results. This class inherits from
TLRequest.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `SetInlineBotResultsRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  The constructor ID.

- `SUBCLASS_OF_ID`:

  The subclass ID.

## Methods

### Public methods

- [`SetInlineBotResultsRequest$new()`](#method-SetInlineBotResultsRequest-new)

- [`SetInlineBotResultsRequest$to_dict()`](#method-SetInlineBotResultsRequest-to_dict)

- [`SetInlineBotResultsRequest$bytes()`](#method-SetInlineBotResultsRequest-bytes)

- [`SetInlineBotResultsRequest$clone()`](#method-SetInlineBotResultsRequest-clone)

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
- [`telegramR::TLRequest$resolve()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-resolve)

------------------------------------------------------------------------

### Method `new()`

Initialize the SetInlineBotResultsRequest object.

#### Usage

    SetInlineBotResultsRequest$new(
      query_id,
      results,
      cache_time,
      gallery = NULL,
      private = NULL,
      next_offset = NULL,
      switch_pm = NULL,
      switch_webview = NULL
    )

#### Arguments

- `query_id`:

  The query ID.

- `results`:

  The list of results.

- `cache_time`:

  The cache time.

- `gallery`:

  Optional gallery flag.

- `private`:

  Optional private flag.

- `next_offset`:

  Optional next offset.

- `switch_pm`:

  Optional switch PM.

- `switch_webview`:

  Optional switch webview.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    SetInlineBotResultsRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    SetInlineBotResultsRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SetInlineBotResultsRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
