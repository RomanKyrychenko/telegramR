# Compare telegramR's compiled lite decoder with its R lite decoder on a corpus
# from make_fuzz_corpus.py. usage: Rscript check_fuzz.R <corpus dir> [clean|corrupt]
# 'corrupt' truncates or flips bytes in each record first; results (including
# errors) must still be identical.

suppressMessages(library(telegramR)); ns <- asNamespace("telegramR")
dir <- commandArgs(TRUE)[1]
raw <- readBin(file.path(dir, "fuzz.bin"), "raw", 1e9)
meta <- read.delim(file.path(dir, "fuzz.tsv"), header = FALSE, col.names = c("name", "cid"))
recs <- list(); p <- 1L
while (p <= length(raw)) {
  n <- sum(as.integer(raw[p:(p + 3)]) * 256^(0:3)); recs[[length(recs) + 1]] <- raw[(p + 4):(p + 3 + n)]; p <- p + 4 + n
}
ptr <- ns$.telegramR_tl_fast_ptr()
decode <- function(b, fast) {
  r <- ns$BinaryReader$new(b); r$set_lite(TRUE)
  options(telegramR.fast_decode = fast)
  obj <- withCallingHandlers(tryCatch(if (fast) r$tgread_object_lite() else r$tgread_object(), error = function(e) structure(list(msg = conditionMessage(e)), class = "decode_error")),
                             warning = function(w) invokeRestart("muffleWarning"))
  list(obj = obj, pos = as.numeric(r$tell_position()))
}
direct_cpp <- function(b) {  # did C++ handle it without falling back entirely?
  r <- ns$BinaryReader$new(b); r$set_lite(TRUE)
  !is.null(tryCatch(ns$tl_decode_object_cpp(ptr, b, 0, function(pos) { r$set_position(pos); o <- suppressWarnings(r$tgread_object()); list(o, r$tell_position()) }), error = function(e) NULL))
}
norm <- function(x) {
  if (inherits(x, "R6")) {
    nms <- sort(setdiff(ls(x), ".__enclos_env__"))
    vals <- lapply(nms, function(n) { v <- x[[n]]; if (is.function(v)) NULL else norm(v) })
    return(list(r6 = class(x), fields = stats::setNames(vals, nms)))
  }
  if (is.list(x)) { a <- attributes(x); x <- lapply(x, norm); attributes(x) <- a; return(x) }
  x
}
same <- diff <- cpp_used <- full <- 0; bad <- character(0)
set.seed(1)
mode <- if (length(commandArgs(TRUE)) > 1) commandArgs(TRUE)[2] else "clean"
for (i in seq_along(recs)) {
  b <- recs[[i]]
  if (mode == "corrupt" && length(b) > 4) {
    if (runif(1) < 0.5) b <- b[seq_len(sample.int(length(b) - 1, 1))]
    else { k <- sample(5:length(b), min(3, length(b) - 4)); b[k] <- as.raw(sample(0:255, length(k), TRUE)) }
  }
  a <- decode(b, FALSE); c <- decode(b, TRUE)
  if (inherits(a$obj, "decode_error") || inherits(c$obj, "decode_error")) cat(sprintf("rec %d (%s): R=%s | C++=%s\n", i, meta$name[i], if (inherits(a$obj, "decode_error")) a$obj$msg else "ok", if (inherits(c$obj, "decode_error")) c$obj$msg else "ok"))
  if (identical(norm(a), norm(c))) same <- same + 1 else { diff <- diff + 1; bad <- c(bad, meta$name[i]) }
  if (direct_cpp(b)) cpp_used <- cpp_used + 1
  if (a$pos == length(b)) full <- full + 1
}
cat(sprintf("records=%d identical=%d different=%d  handled_in_cpp=%d  R_consumed_all_bytes=%d\n", length(recs), same, diff, cpp_used, full))
if (length(bad)) print(head(table(bad)[order(-table(bad))], 20))
