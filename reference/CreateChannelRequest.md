# CreateChannelRequest

Represents a request to create a new channel.

## Super classes

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\>
[`telegramR::TLRequest`](https://romankyrychenko.github.io/telegramR/reference/TLRequest.md)
-\> `CreateChannelRequest`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `title`:

  Field.

- `about`:

  Field.

- `broadcast`:

  Field.

- `megagroup`:

  Field.

- `for_import`:

  Field.

- `forum`:

  Field.

- `geo_point`:

  Field.

- `address`:

  Field.

- `ttl_period`:

  Field.

- `class`:

  Field.

## Active bindings

- `class`:

  Field.

## Methods

### Public methods

- [`CreateChannelRequest$new()`](#method-CreateChannelRequest-new)

- [`CreateChannelRequest$to_dict()`](#method-CreateChannelRequest-to_dict)

- [`CreateChannelRequest$bytes()`](#method-CreateChannelRequest-bytes)

- [`CreateChannelRequest$clone()`](#method-CreateChannelRequest-clone)

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

Initialize the CreateChannelRequest.

#### Usage

    CreateChannelRequest$new(
      title,
      about,
      broadcast = NULL,
      megagroup = NULL,
      for_import = NULL,
      forum = NULL,
      geo_point = NULL,
      address = NULL,
      ttl_period = NULL
    )

#### Arguments

- `title`:

  The title of the channel.

- `about`:

  The description of the channel.

- `broadcast`:

  Whether the channel is a broadcast channel.

- `megagroup`:

  Whether the channel is a megagroup.

- `for_import`:

  Whether the channel is for import.

- `forum`:

  Whether the channel is a forum.

- `geo_point`:

  The geo point for the channel.

- `address`:

  The address for the channel.

- `ttl_period`:

  The TTL period for the channel.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary.

#### Usage

    CreateChannelRequest$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `bytes()`

Serialize the object to bytes.

#### Usage

    CreateChannelRequest$bytes()

#### Returns

A raw vector of bytes.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    CreateChannelRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
