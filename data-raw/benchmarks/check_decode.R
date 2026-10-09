suppressMessages(library(telegramR)); ns <- asNamespace("telegramR")
fx <- commandArgs(TRUE)[1]
truth <- jsonlite::fromJSON(file.path(fx, "truth.json"), simplifyVector = FALSE)
for (n in c("1","10","100")) {
  b <- readBin(file.path(fx, sprintf("channel_messages_%s.bin", n)), "raw", 1e7)
  r <- ns$BinaryReader$new(b)$tgread_object()
  msgs <- r$messages; tr <- truth[[n]]
  cat(sprintf("n=%s class=%s decoded=%d/%d users=%d chats=%d consumed=%d/%d\n", n, paste(class(r)[1]), length(msgs), length(tr),
      length(r$users), length(r$chats), NA, length(b)))
  bad <- list()
  for (i in seq_along(tr)) {
    m <- if (i <= length(msgs)) msgs[[i]] else NULL; t <- tr[[i]]
    if (is.null(m)) { bad[["missing"]] <- c(bad[["missing"]], i); next }
    chk <- function(nm, got, exp) if (!isTRUE(all.equal(got, exp))) bad[[nm]] <<- c(bad[[nm]], i)
    chk("id", m$id, t$id); chk("message", m$message, t$message); chk("views", m$views, t$views)
    chk("forwards", m$forwards, t$forwards); chk("date", as.numeric(m$date), t$date)
    chk("replies", m$replies$replies, t$replies)
    rs <- tryCatch(sum(vapply(m$reactions$results, function(x) as.numeric(x$count), 1)), error=function(e) NA)
    chk("reactions", rs, t$reactions)
    chk("photo", !is.null(m$media) && !inherits(m$media, "MessageMediaEmpty"), t$has_photo)
    chk("post_author", if (is.null(m$post_author)) NULL else m$post_author, t$post_author)
  }
  if (length(bad)) for (k in names(bad)) cat("  MISMATCH", k, ":", length(bad[[k]]), "msgs e.g.", head(bad[[k]],3), "\n") else cat("  all fields match\n")
}
m <- r$messages[[1]]; cat("first msg class:", class(m)[1], " date:", format(m$date), "\n"); str(m$media$photo$sizes[[1]], max.level=1)
