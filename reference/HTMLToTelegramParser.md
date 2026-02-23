# HTMLToTelegramParser

Walks an HTML fragment and builds a plain text string and a list of
telegram-style message entities.

## Details

Traverses the HTML node tree, tracking active tags and their metadata to
construct Telegram message entities (bold, italic, underline, strike,
blockquote, code, preformatted, links, custom emoji). Maintains
accumulated text while adjusting entity offsets and lengths, handling
special cases such as language hints in \`\<pre\>\<code\>\` blocks and
anchored URLs.

## Note

Wraps the provided fragment in a \`\<div\>\` before parsing to satisfy
\`xml2::read_html\`, and automatically finalizes open entities as tags
close.

## Public fields

- `text`:

  accumulated plain text

- `entities`:

  list of entity lists

- `building_entities`:

  named list of entities currently being built

- `open_tags`:

  stack of currently open tags

- `open_tags_meta`:

  stack of metadata associated with open tags

## Methods

### Public methods

- [`HTMLToTelegramParser$new()`](#method-HTMLToTelegramParser-new)

- [`HTMLToTelegramParser$push_tag()`](#method-HTMLToTelegramParser-push_tag)

- [`HTMLToTelegramParser$pop_tag()`](#method-HTMLToTelegramParser-pop_tag)

- [`HTMLToTelegramParser$current_tag()`](#method-HTMLToTelegramParser-current_tag)

- [`HTMLToTelegramParser$current_meta()`](#method-HTMLToTelegramParser-current_meta)

- [`HTMLToTelegramParser$start_element()`](#method-HTMLToTelegramParser-start_element)

- [`HTMLToTelegramParser$handle_text()`](#method-HTMLToTelegramParser-handle_text)

- [`HTMLToTelegramParser$end_element()`](#method-HTMLToTelegramParser-end_element)

- [`HTMLToTelegramParser$parse_node()`](#method-HTMLToTelegramParser-parse_node)

- [`HTMLToTelegramParser$feed()`](#method-HTMLToTelegramParser-feed)

- [`HTMLToTelegramParser$clone()`](#method-HTMLToTelegramParser-clone)

------------------------------------------------------------------------

### Method `new()`

Initializes the parser state.

#### Usage

    HTMLToTelegramParser$new()

#### Returns

A new instance of HTMLToTelegramParser.

------------------------------------------------------------------------

### Method `push_tag()`

Push a tag and optional metadata onto the open tags stack.

#### Usage

    HTMLToTelegramParser$push_tag(tag, meta = NULL)

#### Arguments

- `tag`:

  The tag name to push.

- `meta`:

  Optional metadata associated with the tag.

#### Returns

None.

------------------------------------------------------------------------

### Method `pop_tag()`

Pop the top tag and its metadata from the open tags stack.

#### Usage

    HTMLToTelegramParser$pop_tag()

#### Returns

A list containing the popped tag and its metadata, or NULL if the stack

------------------------------------------------------------------------

### Method `current_tag()`

Get the current top tag from the open tags stack.

#### Usage

    HTMLToTelegramParser$current_tag()

#### Returns

The top tag name, or NULL if the stack is empty.

------------------------------------------------------------------------

### Method `current_meta()`

Get the current top metadata from the open tags stack.

#### Usage

    HTMLToTelegramParser$current_meta()

#### Returns

The top metadata value, or NULL if the stack is empty.

------------------------------------------------------------------------

### Method `start_element()`

Handle the start of an HTML element, updating state and building
entities as needed.

#### Usage

    HTMLToTelegramParser$start_element(tag, attrs)

#### Arguments

- `tag`:

  The name of the HTML tag.

- `attrs`:

  A named list of attributes for the tag.

#### Returns

None.

------------------------------------------------------------------------

### Method `handle_text()`

Handle text nodes, updating accumulated text and entity lengths.

#### Usage

    HTMLToTelegramParser$handle_text(text)

#### Arguments

- `text`:

  The text content to handle.

#### Returns

None.

------------------------------------------------------------------------

### Method `end_element()`

Handle the end of an HTML element, finalizing any associated entities.

#### Usage

    HTMLToTelegramParser$end_element(tag)

#### Arguments

- `tag`:

  The name of the HTML tag.

#### Returns

None.

------------------------------------------------------------------------

### Method `parse_node()`

Recursively parse an XML node and its children.

#### Usage

    HTMLToTelegramParser$parse_node(node)

#### Arguments

- `node`:

  The XML node to parse.

#### Returns

None.

------------------------------------------------------------------------

### Method `feed()`

Parse an HTML fragment, updating the parser state with text and
entities.

#### Usage

    HTMLToTelegramParser$feed(html_fragment)

#### Arguments

- `html_fragment`:

  A character string containing the HTML fragment to parse.

#### Returns

None.

------------------------------------------------------------------------

### Method `clone()`

The objects of this class are cloneable with this method.

#### Usage

    HTMLToTelegramParser$clone(deep = FALSE)

#### Arguments

- `deep`:

  Whether to make a deep clone.
