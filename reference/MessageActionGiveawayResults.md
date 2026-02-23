# MessageActionGiveawayResults

Telegram API type MessageActionGiveawayResults

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MessageActionGiveawayResults`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `winners_count`:

  Field.

- `unclaimed_count`:

  Field.

- `stars`:

  Field.

## Methods

### Public methods

- [`MessageActionGiveawayResults$new()`](#method-MessageActionGiveawayResults-new)

- [`MessageActionGiveawayResults$to_dict()`](#method-MessageActionGiveawayResults-to_dict)

- [`MessageActionGiveawayResults$bytes()`](#method-MessageActionGiveawayResults-bytes)

- [`MessageActionGiveawayResults$clone()`](#method-MessageActionGiveawayResults-clone)

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

    MessageActionGiveawayResults$new(winners_count, unclaimed_count, stars = NULL)

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MessageActionGiveawayResults$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MessageActionGiveawayResults$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MessageActionGiveawayResults$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
