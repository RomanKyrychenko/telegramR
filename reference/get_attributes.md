# Get Attributes for File

This function retrieves a list of attributes for the given file and the
MIME type as a list. It determines attributes such as filename, audio,
and video based on the file's metadata and parameters.

## Usage

``` r
get_attributes(
  file,
  attributes = NULL,
  mime_type = NULL,
  force_document = FALSE,
  voice_note = FALSE,
  video_note = FALSE,
  supports_streaming = FALSE,
  thumb = NULL
)
```

## Arguments

- file:

  The file object or path. Can be a string or an object with a 'name'
  attribute.

- attributes:

  A list of user-provided attributes to override defaults. Default is
  NULL.

- mime_type:

  The MIME type of the file. If NULL, it will be guessed. Default is
  NULL.

- force_document:

  Logical, whether to force the file as a document. Default is FALSE.

- voice_note:

  Logical, whether the file is a voice note. Default is FALSE.

- video_note:

  Logical, whether the file is a video note. Default is FALSE.

- supports_streaming:

  Logical, whether the video supports streaming. Default is FALSE.

- thumb:

  The thumbnail file for video attributes. Default is NULL.

## Value

A list containing the attributes list and the MIME type.

## Examples

``` r
if (FALSE) { # \dontrun{
# Assuming types and helper functions are defined
attrs <- get_attributes("example.mp3", voice_note = TRUE)
} # }
```
