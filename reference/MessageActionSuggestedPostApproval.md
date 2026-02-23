# MessageActionSuggestedPostApproval

Telegram API type MessageActionSuggestedPostApproval

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionSuggestedPostApproval`

## Public fields

- `rejected`:

  Field.

- `balance_too_low`:

  Field.

- `reject_comment`:

  Field.

- `schedule_date`:

  Field.

- `price`:

  Field.

## Methods

### Public methods

- [`MessageActionSuggestedPostApproval$new()`](#method-MessageActionSuggestedPostApproval-new)

- [`MessageActionSuggestedPostApproval$to_dict()`](#method-MessageActionSuggestedPostApproval-to_dict)

- [`MessageActionSuggestedPostApproval$bytes()`](#method-MessageActionSuggestedPostApproval-bytes)

- [`MessageActionSuggestedPostApproval$clone()`](#method-MessageActionSuggestedPostApproval-clone)

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

------------------------------------------------------------------------

### Method `new()`

#### Usage

    MessageActionSuggestedPostApproval$new(
      rejected = NULL,
      balance_too_low = NULL,
      reject_comment = NULL,
      schedule_date = NULL,
      price = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionSuggestedPostApproval$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionSuggestedPostApproval$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionSuggestedPostApproval$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
