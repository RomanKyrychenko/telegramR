# TakeoutClient

Telegram API type TakeoutClient

## Public fields

- `finalize`:

  A logical indicating whether to finalize the takeout session.

- `client`:

  An instance of the client to use for the takeout session.

- `request`:

  An optional request object for the takeout session.

- `success`:

  A logical indicating whether the takeout session was successful.

## Methods

### Public methods

- [`TakeoutClient$new()`](#method-TakeoutClient-new)

- [`TakeoutClient$get_success()`](#method-TakeoutClient-get_success)

- [`TakeoutClient$set_success()`](#method-TakeoutClient-set_success)

- [`TakeoutClient$aenter()`](#method-TakeoutClient-aenter)

- [`TakeoutClient$aexit()`](#method-TakeoutClient-aexit)

- [`TakeoutClient$call()`](#method-TakeoutClient-call)

- [`TakeoutClient$get_attribute()`](#method-TakeoutClient-get_attribute)

- [`TakeoutClient$get_attr()`](#method-TakeoutClient-get_attr)

- [`TakeoutClient$set_attr()`](#method-TakeoutClient-set_attr)

- [`TakeoutClient$clone()`](#method-TakeoutClient-clone)

------------------------------------------------------------------------

### Method `new()`

Initialize a new \`TakeoutClient\` object.

#### Usage

    TakeoutClient$new(finalize, client, request)

#### Arguments

- `finalize`:

  A logical indicating whether to finalize the takeout session.

- `client`:

  An instance of the client to use for the takeout session.

- `request`:

  An optional request object for the takeout session.

#### Returns

A new \`TakeoutClient\` object.

------------------------------------------------------------------------

### Method `get_success()`

Get the success status of the takeout session.

#### Usage

    TakeoutClient$get_success()

#### Returns

A logical indicating whether the takeout session was successful.

------------------------------------------------------------------------

### Method `set_success()`

Set the success status of the takeout session.

#### Usage

    TakeoutClient$set_success(value)

#### Arguments

- `value`:

  A logical indicating whether the takeout session was successful.

#### Returns

None.

------------------------------------------------------------------------

### Method `aenter()`

Enter the takeout session context.

#### Usage

    TakeoutClient$aenter()

#### Returns

The current instance of the \`TakeoutClient\`.

------------------------------------------------------------------------

### Method `aexit()`

Exit the takeout session context.

#### Usage

    TakeoutClient$aexit(exc_type, exc_value, traceback)

#### Arguments

- `exc_type`:

  The type of exception raised, if any.

- `exc_value`:

  The value of the exception raised, if any.

- `traceback`:

  The traceback of the exception raised, if any.

#### Returns

None.

------------------------------------------------------------------------

### Method [`call()`](https://rdrr.io/r/base/call.html)

Make a request to the Telegram API using the takeout session.

#### Usage

    TakeoutClient$call(request, ordered = FALSE)

#### Arguments

- `request`:

  The request object to send.

- `ordered`:

  A logical indicating whether the request should be ordered.

#### Returns

The result of the request.

------------------------------------------------------------------------

### Method `get_attribute()`

Get the result of the request.

#### Usage

    TakeoutClient$get_attribute(name)

#### Arguments

- `name`:

  The name of the attribute to get.

#### Returns

The result of the request.

------------------------------------------------------------------------

### Method `get_attr()`

Get the attribute of the request.

#### Usage

    TakeoutClient$get_attr(name)

#### Arguments

- `name`:

  The name of the attribute to get.

#### Returns

The value of the attribute.

------------------------------------------------------------------------

### Method `set_attr()`

Set the attribute of the request.

#### Usage

    TakeoutClient$set_attr(name, value)

#### Arguments

- `name`:

  The name of the attribute to set.

- `value`:

  The value to set for the attribute.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    TakeoutClient$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
