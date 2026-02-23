# SuggestShortNameRequest

Telegram API type SuggestShortNameRequest

## Details

SuggestShortNameRequest R6 class

Represents a request to suggest a short name for a sticker set.

## Methods

\- initialize(title): create instance. - to_list(): returns a list
representation suitable for JSON/inspection. - to_bytes(): returns a raw
vector representing serialized bytes (TL-like). - from_reader(reader):
reads a request from a reader object and returns a new instance.

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `title`:

  Field.

## Methods

### Public methods

- [`SuggestShortNameRequest$new()`](#method-SuggestShortNameRequest-new)

- [`SuggestShortNameRequest$to_list()`](#method-SuggestShortNameRequest-to_list)

- [`SuggestShortNameRequest$to_bytes()`](#method-SuggestShortNameRequest-to_bytes)

- [`SuggestShortNameRequest$from_reader()`](#method-SuggestShortNameRequest-from_reader)

- [`SuggestShortNameRequest$clone()`](#method-SuggestShortNameRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a SuggestShortNameRequest

#### Usage

    SuggestShortNameRequest$new(title)

#### Arguments

- `title`:

  character Title string

------------------------------------------------------------------------

### Method `to_list()`

Convert to an R list (dictionary-like)

#### Usage

    SuggestShortNameRequest$to_list()

#### Returns

list representation

------------------------------------------------------------------------

### Method `to_bytes()`

Serialize to raw bytes (simple TL-like approximation)

#### Usage

    SuggestShortNameRequest$to_bytes()

#### Returns

raw vector

------------------------------------------------------------------------

### Method `from_reader()`

#### Usage

    SuggestShortNameRequest$from_reader(reader)

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    SuggestShortNameRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
