# AccessPointRule

Telegram API type AccessPointRule

## Super class

[`telegramR::TLObject`](https://romankyrychenko.github.io/telegramR/reference/TLObject.md)
-\> `AccessPointRule`

## Public fields

- `CONSTRUCTOR_ID`:

  Constructor identifier for this TL object.

- `SUBCLASS_OF_ID`:

  Subclass identifier for this TL object.

- `phone_prefix_rules`:

  A string representing phone prefix rules.

- `dc_id`:

  An integer representing the data center ID.

- `ips`:

  A list of TypeIpPort objects representing IPs.

## Methods

### Public methods

- [`AccessPointRule$new()`](#method-AccessPointRule-new)

- [`AccessPointRule$to_dict()`](#method-AccessPointRule-to_dict)

- [`AccessPointRule$bytes()`](#method-AccessPointRule-bytes)

- [`AccessPointRule$clone()`](#method-AccessPointRule-clone)

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

Initializes the AccessPointRule with the given parameters.

#### Usage

    AccessPointRule$new(phone_prefix_rules, dc_id, ips)

#### Arguments

- `phone_prefix_rules`:

  A string representing phone prefix rules.

- `dc_id`:

  An integer representing the data center ID.

- `ips`:

  A list of TypeIpPort objects representing IPs.

------------------------------------------------------------------------

### Method `to_dict()`

Converts the AccessPointRule object to a list (dictionary).

#### Usage

    AccessPointRule$to_dict()

#### Returns

A list representation of the AccessPointRule object.

------------------------------------------------------------------------

### Method `bytes()`

Serializes the AccessPointRule object to bytes.

#### Usage

    AccessPointRule$bytes()

#### Returns

A raw vector representing the serialized bytes of the AccessPointRule
object. Reads an AccessPointRule object from a BinaryReader.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    AccessPointRule$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
