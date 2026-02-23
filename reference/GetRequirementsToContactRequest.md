# GetRequirementsToContactRequest

R6 request class to obtain a vector of RequirementToContact objects for
multiple users. It serializes the request to Telegram TL bytes and can
deserialize from a TL reader. The request resolves plain user references
into TLInputUser objects before serialization.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `GetRequirementsToContactRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `id`:

  Field.

## Methods

### Public methods

- [`GetRequirementsToContactRequest$new()`](#method-GetRequirementsToContactRequest-new)

- [`GetRequirementsToContactRequest$resolve()`](#method-GetRequirementsToContactRequest-resolve)

- [`GetRequirementsToContactRequest$to_dict()`](#method-GetRequirementsToContactRequest-to_dict)

- [`GetRequirementsToContactRequest$bytes()`](#method-GetRequirementsToContactRequest-bytes)

- [`GetRequirementsToContactRequest$from_reader()`](#method-GetRequirementsToContactRequest-from_reader)

- [`GetRequirementsToContactRequest$clone()`](#method-GetRequirementsToContactRequest-clone)

Inherited methods

- [`telegramR::TLObject$.bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.bytes)
- [`telegramR::TLObject$.eq()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.eq)
- [`telegramR::TLObject$.ne()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.ne)
- [`telegramR::TLObject$.str()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-.str)
- [`telegramR::TLObject$pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-pretty_format)
- [`telegramR::TLObject$serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_bytes)
- [`telegramR::TLObject$serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-serialize_datetime)
- [`telegramR::TLObject$stringify()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-stringify)
- [`telegramR::TLObject$to_json()`](https://romankyrychenko.github.io/telegramR/reference/TLObject.html#method-to_json)
- [`telegramR::TLRequest$read_result()`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.html#method-read_result)

------------------------------------------------------------------------

### Method `new()`

Initialize a new GetRequirementsToContactRequest.

#### Usage

    GetRequirementsToContactRequest$new(id = NULL)

#### Arguments

- `id`:

  list\|NULL List of user references (usernames, ids, TL objects) to be
  resolved to TLInputUser; NULL for an empty list.

#### Returns

A new GetRequirementsToContactRequest object.

------------------------------------------------------------------------

### Method `resolve()`

Resolve plain user references in id to TLInputUser objects using the
provided client/utilities.

#### Usage

    GetRequirementsToContactRequest$resolve(client, utils)

#### Arguments

- `client`:

  An object exposing get_input_entity for resolving user references.

- `utils`:

  Auxiliary utilities object (not directly used but kept for parity with
  other requests).

#### Returns

NULL (modifies the object in place).

------------------------------------------------------------------------

### Method `to_dict()`

Convert the request to a plain list (dictionary style) suitable for
JSON/logging.

#### Usage

    GetRequirementsToContactRequest$to_dict()

#### Returns

list Representation with \`\_\` discriminator and serialized id list.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the request into a raw vector of TL-encoded bytes.

#### Usage

    GetRequirementsToContactRequest$bytes()

#### Returns

raw Raw vector containing the TL serialization.

------------------------------------------------------------------------

### Method `from_reader()`

Deserialize a GetRequirementsToContactRequest from a TL reader.

#### Usage

    GetRequirementsToContactRequest$from_reader(reader)

#### Arguments

- `reader`:

  A TL reader object providing tgread_object(), read_int().

#### Returns

GetRequirementsToContactRequest A newly constructed request object
populated from the reader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    GetRequirementsToContactRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
