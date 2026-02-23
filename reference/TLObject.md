# TLObject

Telegram API type TLObject

## Details

TLObject Class

## Public fields

- `CONSTRUCTOR_ID`:

  A unique identifier for the TL object.

- `SUBCLASS_OF_ID`:

  A unique identifier for the subclass of the TL object.

- `collapse`:

  Field.

- `collapse`:

  Field.

- `collapse`:

  Field.

- `collapse`:

  Field.

## Active bindings

- `collapse`:

  Field.

- `collapse`:

  Field.

- `collapse`:

  Field.

- `collapse`:

  Field.

## Methods

### Public methods

- [`TLObject$pretty_format()`](#method-TLObject-pretty_format)

- [`TLObject$serialize_bytes()`](#method-TLObject-serialize_bytes)

- [`TLObject$serialize_datetime()`](#method-TLObject-serialize_datetime)

- [`TLObject$to_dict()`](#method-TLObject-to_dict)

- [`TLObject$to_json()`](#method-TLObject-to_json)

- [`TLObject$.bytes()`](#method-TLObject-.bytes)

- [`TLObject$from_reader()`](#method-TLObject-from_reader)

- [`TLObject$.eq()`](#method-TLObject-.eq)

- [`TLObject$.ne()`](#method-TLObject-.ne)

- [`TLObject$.str()`](#method-TLObject-.str)

- [`TLObject$stringify()`](#method-TLObject-stringify)

- [`TLObject$clone()`](#method-TLObject-clone)

------------------------------------------------------------------------

### Method [`pretty_format()`](https://romankyrychenko.github.io/telegramR/reference/pretty_format.md)

Pretty format the object for display.

#### Usage

    TLObject$pretty_format(obj, indent = NULL)

#### Arguments

- `obj`:

  The object to be formatted.

- `indent`:

  The current indentation level (used for recursive calls).

#### Returns

A character string representing the formatted object.

------------------------------------------------------------------------

### Method [`serialize_bytes()`](https://romankyrychenko.github.io/telegramR/reference/serialize_bytes.md)

Serialize data to bytes.

#### Usage

    TLObject$serialize_bytes(data)

#### Arguments

- `data`:

  The data to be serialized.

#### Returns

A raw vector representing the serialized data.

------------------------------------------------------------------------

### Method [`serialize_datetime()`](https://romankyrychenko.github.io/telegramR/reference/serialize_datetime.md)

Serialize a datetime object to bytes.

#### Usage

    TLObject$serialize_datetime(dt)

#### Arguments

- `dt`:

  The datetime object to be serialized.

#### Returns

A raw vector representing the serialized datetime.

------------------------------------------------------------------------

### Method `to_dict()`

Convert the object to a dictionary representation.

#### Usage

    TLObject$to_dict()

#### Returns

A list representing the object.

------------------------------------------------------------------------

### Method `to_json()`

Convert the object to a JSON representation.

#### Usage

    TLObject$to_json(fp = NULL, default = json_default, ...)

#### Arguments

- `fp`:

  A file path to write the JSON to (optional).

- `default`:

  A function to handle custom serialization (default: json_default).

- `...`:

  Additional arguments to pass to the JSON serialization function.

#### Returns

A character string representing the JSON representation of the object.

------------------------------------------------------------------------

### Method `.bytes()`

Convert the object to a byte array.

#### Usage

    TLObject$.bytes()

#### Returns

A raw vector representing the byte array.

------------------------------------------------------------------------

### Method `from_reader()`

Create a new object from a binary reader.

#### Usage

    TLObject$from_reader(reader)

#### Arguments

- `reader`:

  A binary reader object.

#### Returns

A new object created from the binary reader.

------------------------------------------------------------------------

### Method `.eq()`

Check if the object is equal to another object.

#### Usage

    TLObject$.eq(o)

#### Arguments

- `o`:

  The object to compare with.

#### Returns

A logical value indicating whether the objects are equal.

------------------------------------------------------------------------

### Method `.ne()`

Check if the object is not equal to another object.

#### Usage

    TLObject$.ne(o)

#### Arguments

- `o`:

  The object to compare with.

#### Returns

A logical value indicating whether the objects are not equal.

------------------------------------------------------------------------

### Method `.str()`

Convert the object to a string representation.

#### Usage

    TLObject$.str()

#### Returns

A character string representing the object.

------------------------------------------------------------------------

### Method `stringify()`

Convert the object to a JSON string representation.

#### Usage

    TLObject$stringify()

#### Returns

A character string representing the JSON representation of the object.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TLObject$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
