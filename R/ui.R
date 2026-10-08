# Console output helpers.
#
# All user-facing status output goes through these so it looks the same
# everywhere (cli's ℹ / ✔ / ! / ✖ bullets, progress bars with rate and ETA)
# and can be controlled in one place, the telegramR.verbose option: TRUE
# (default) shows status, summaries and progress, FALSE is silent, and "debug"
# adds low-level connection details.
#
# Everything is emitted as R messages, so suppressMessages() works too.
# Messages are cli templates: interpolate values with {var} from the calling
# environment rather than pasting them into the template, so braces in channel
# titles or error text are never interpreted.

.tg_verbosity <- function() {
  v <- getOption("telegramR.verbose", TRUE)
  if (identical(v, "debug")) return(2L)
  if (isFALSE(v) || identical(v, "quiet")) return(0L)
  1L
}

.tg_info <- function(msg, .envir = parent.frame()) {
  if (.tg_verbosity() >= 1L) cli::cli_alert_info(msg, .envir = .envir)
  invisible(NULL)
}

.tg_success <- function(msg, .envir = parent.frame()) {
  if (.tg_verbosity() >= 1L) cli::cli_alert_success(msg, .envir = .envir)
  invisible(NULL)
}

.tg_warn <- function(msg, .envir = parent.frame()) {
  if (.tg_verbosity() >= 1L) cli::cli_alert_warning(msg, .envir = .envir)
  invisible(NULL)
}

.tg_danger <- function(msg, .envir = parent.frame()) {
  if (.tg_verbosity() >= 1L) cli::cli_alert_danger(msg, .envir = .envir)
  invisible(NULL)
}

.tg_debug <- function(msg, .envir = parent.frame()) {
  if (.tg_verbosity() >= 2L) {
    text <- cli::format_inline(msg, .envir = .envir)
    cli::cli_text(cli::col_grey(paste0("[debug] ", text)))
  }
  invisible(NULL)
}

# Thousands separators, e.g. 12345 becomes "12,345".
.tg_num <- function(n) format(as.numeric(n), big.mark = ",", scientific = FALSE, trim = TRUE)

# Count with a singular or plural noun, e.g. "1 message", "1,234 messages".
.tg_plural <- function(n, noun, plural = paste0(noun, "s")) {
  paste(.tg_num(n), if (isTRUE(as.numeric(n) == 1)) noun else plural)
}

# Elapsed seconds as text, e.g. "4.2s", "3m 07s", "1h 05m".
.tg_duration <- function(secs) {
  secs <- as.numeric(secs)
  if (!is.finite(secs)) return("?")
  if (secs < 60) return(sprintf("%.1fs", secs))
  if (secs < 3600) return(sprintf("%dm %02ds", as.integer(secs %/% 60), as.integer(round(secs %% 60))))
  sprintf("%dh %02dm", as.integer(secs %/% 3600), as.integer((secs %% 3600) %/% 60))
}

# How a channel is named in messages: "@username", else its title, else its id.
.tg_channel_label <- function(entity = NULL, fallback = NULL) {
  uname <- tryCatch(entity$username, error = function(e) NULL)
  if (is.character(uname) && length(uname) == 1 && !is.na(uname) && nzchar(uname)) {
    return(paste0("@", uname))
  }
  title <- tryCatch(entity$title, error = function(e) NULL)
  if (is.character(title) && length(title) == 1 && !is.na(title) && nzchar(title)) return(title)
  if (is.character(fallback) && length(fallback) == 1 && nzchar(fallback)) {
    return(if (grepl("^[A-Za-z][A-Za-z0-9_]{3,}$", fallback)) paste0("@", fallback) else fallback)
  }
  id <- tryCatch(entity$id, error = function(e) NULL)
  if (!is.null(id)) return(paste("channel", format(id, scientific = FALSE)))
  "channel"
}

# Date range of a set of POSIXct values as "2024-01-03 -> 2024-06-01" (an arrow
# symbol where the console supports it).
.tg_date_range <- function(from, to) {
  if (is.null(from) || is.null(to) || !is.finite(from) || !is.finite(to)) return(NULL)
  f <- format(as.POSIXct(from, origin = "1970-01-01", tz = "UTC"), "%Y-%m-%d")
  t <- format(as.POSIXct(to, origin = "1970-01-01", tz = "UTC"), "%Y-%m-%d")
  if (identical(f, t)) f else paste(f, cli::symbol$arrow_right, t)
}

# ---- progress bars ---------------------------------------------------------
# A bar with count, rate and ETA when the total is known, otherwise a spinner
# with a running count. Only shown in interactive sessions; scripts and logs
# get the start/summary lines instead. `what` is a fixed noun ("messages").

.tg_progress_start <- function(show, total, what, label = NULL, .envir = parent.frame()) {
  if (!isTRUE(show) || .tg_verbosity() < 1L || !interactive()) return(NULL)
  known <- length(total) == 1 && is.finite(total) && total > 0
  fmt <- if (known) {
    paste0("{cli::pb_bar} {cli::pb_percent} | {cli::pb_current}/{cli::pb_total} ", what,
           " | {cli::pb_rate} | ETA {cli::pb_eta}")
  } else {
    paste0("{cli::pb_spin} {cli::pb_current} ", what, " | {cli::pb_rate} | {cli::pb_elapsed}")
  }
  cli::cli_progress_bar(
    name = label, total = if (known) total else NA, format = fmt,
    clear = TRUE, .envir = .envir
  )
}

.tg_progress_update <- function(id, n, total = NULL, .envir = parent.frame()) {
  if (is.null(id)) return(invisible(NULL))
  if (!is.null(total) && is.finite(total) && n > total) total <- n
  if (!is.null(total) && is.finite(total)) {
    cli::cli_progress_update(id = id, set = n, total = total, .envir = .envir)
  } else {
    cli::cli_progress_update(id = id, set = n, .envir = .envir)
  }
  invisible(NULL)
}

.tg_progress_done <- function(id, .envir = parent.frame()) {
  if (!is.null(id)) cli::cli_progress_done(id = id, .envir = .envir)
  invisible(NULL)
}
