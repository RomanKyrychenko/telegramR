# OpaqueRequest

Telegram API type OpaqueRequest

## Details

Opaque Request Class

Wraps a serialized request into a type that can be serialized again.

## Public fields

- `data`:

  Raw vector of serialized request data

## Methods

### Public methods

- [`OpaqueRequest$new()`](#method-OpaqueRequest-new)

- [`OpaqueRequest$to_bytes()`](#method-OpaqueRequest-to_bytes)

- [`OpaqueRequest$clone()`](#method-OpaqueRequest-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize with serialized request data

#### Usage

    OpaqueRequest$new(data)

#### Arguments

- `data`:

  Raw vector of serialized request data

------------------------------------------------------------------------

### Method `to_bytes()`

Convert to bytes representation

#### Usage

    OpaqueRequest$to_bytes()

#### Returns

Raw vector of the wrapped data

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    OpaqueRequest$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
