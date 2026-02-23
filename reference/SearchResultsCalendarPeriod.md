# SearchResultsCalendarPeriod

Telegram API type SearchResultsCalendarPeriod

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `SearchResultsCalendarPeriod`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `date`:

  Field.

- `min_msg_id`:

  Field.

- `max_msg_id`:

  Field.

- `count`:

  Field.

## Methods

### Public methods

- [`SearchResultsCalendarPeriod$new()`](#method-SearchResultsCalendarPeriod-new)

- [`SearchResultsCalendarPeriod$to_dict()`](#method-SearchResultsCalendarPeriod-to_dict)

- [`SearchResultsCalendarPeriod$bytes()`](#method-SearchResultsCalendarPeriod-bytes)

- [`SearchResultsCalendarPeriod$clone()`](#method-SearchResultsCalendarPeriod-clone)

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

    SearchResultsCalendarPeriod$new(
      date = NULL,
      min_msg_id = NULL,
      max_msg_id = NULL,
      count = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    SearchResultsCalendarPeriod$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    SearchResultsCalendarPeriod$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SearchResultsCalendarPeriod$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
