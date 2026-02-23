# PageTableCell

Telegram API type PageTableCell

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `PageTableCell`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `header`:

  Field.

- `align_center`:

  Field.

- `align_right`:

  Field.

- `valign_middle`:

  Field.

- `valign_bottom`:

  Field.

- `text`:

  Field.

- `colspan`:

  Field.

- `rowspan`:

  Field.

## Methods

### Public methods

- [`PageTableCell$new()`](#method-PageTableCell-new)

- [`PageTableCell$to_dict()`](#method-PageTableCell-to_dict)

- [`PageTableCell$bytes()`](#method-PageTableCell-bytes)

- [`PageTableCell$clone()`](#method-PageTableCell-clone)

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

    PageTableCell$new(
      header = NULL,
      align_center = NULL,
      align_right = NULL,
      valign_middle = NULL,
      valign_bottom = NULL,
      text = NULL,
      colspan = NULL,
      rowspan = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    PageTableCell$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    PageTableCell$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    PageTableCell$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
