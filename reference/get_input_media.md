# Get Input Media

Similar to `get_input_peer`, but for media.

## Usage

``` r
get_input_media(
  media,
  is_photo = FALSE,
  attributes = NULL,
  force_document = FALSE,
  voice_note = FALSE,
  video_note = FALSE,
  supports_streaming = FALSE,
  ttl = NULL,
  file_size = NULL,
  progress_callback = NULL
)
```

## Arguments

- media:

  The media object to convert.

- is_photo:

  Logical, whether the media is a photo. Default is `FALSE`.

- attributes:

  A list of attributes for the media. Default is `NULL`.

- force_document:

  Logical, whether to force the media as a document. Default is `FALSE`.

- voice_note:

  Logical, whether the media is a voice note. Default is `FALSE`.

- video_note:

  Logical, whether the media is a video note. Default is `FALSE`.

- supports_streaming:

  Logical, whether the video supports streaming. Default is `FALSE`.

- ttl:

  The time-to-live in seconds. Default is `NULL`.

- file_size:

  Optional file size hint (unused, for compatibility).

- progress_callback:

  Optional progress callback (unused, for compatibility).

## Value

An InputMedia object.

## Details

If the media is `InputFile` and `is_photo` is known to be `TRUE`, it
will be treated as an `InputMediaUploadedPhoto`. Else, the rest of
parameters will indicate how to treat it.
