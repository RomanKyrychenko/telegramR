# MediaAreaSuggestedReaction

Telegram API type MediaAreaSuggestedReaction

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `MediaAreaSuggestedReaction`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `coordinates`:

  Field.

- `reaction`:

  Field.

- `dark`:

  Field.

- `flipped`:

  Field.

## Methods

### Public methods

- [`MediaAreaSuggestedReaction$new()`](#method-MediaAreaSuggestedReaction-new)

- [`MediaAreaSuggestedReaction$to_dict()`](#method-MediaAreaSuggestedReaction-to_dict)

- [`MediaAreaSuggestedReaction$bytes()`](#method-MediaAreaSuggestedReaction-bytes)

- [`MediaAreaSuggestedReaction$clone()`](#method-MediaAreaSuggestedReaction-clone)

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

    MediaAreaSuggestedReaction$new(
      coordinates,
      reaction,
      dark = NULL,
      flipped = NULL
    )

------------------------------------------------------------------------

### Method `to_dict()`

#### Usage

    MediaAreaSuggestedReaction$to_dict()

------------------------------------------------------------------------

### Method `bytes()`

#### Usage

    MediaAreaSuggestedReaction$bytes()

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    MediaAreaSuggestedReaction$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
