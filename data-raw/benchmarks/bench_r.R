suppressMessages({library(telegramR); library(bench)}); ns <- asNamespace("telegramR")
fx <- commandArgs(TRUE)[1]; res <- list()
bm <- function(name, expr) {
  f <- eval(call("function", NULL, substitute(expr)), parent.frame())
  b <- bench::mark(f(), min_iterations = 5, max_iterations = 2000, min_time = 2, check = FALSE, filter_gc = FALSE)
  res[[name]] <<- as.numeric(b$median)
  cat(sprintf("%-40s %12.2f us  (n=%d)\n", name, as.numeric(b$median)*1e6, b$n_itr))
}
rd <- function(f) readBin(file.path(fx, f), "raw", 1e8)
for (n in c(1, 10, 100)) { b <- rd(sprintf("channel_messages_%d.bin", n)); bm(sprintf("decode ChannelMessages n=%d", n), ns$BinaryReader$new(b)$tgread_object()) }
obj <- ns$BinaryReader$new(rd("channel_messages_100.bin"))$tgread_object()
enc_msgs <- function() do.call(c, lapply(obj$messages, function(m) m$to_bytes()))
rt <- tryCatch(enc_msgs(), error = function(e) {cat("ENCODE ERROR:", conditionMessage(e), "\n"); NULL})
cat("roundtrip messages identical to Telethon bytes:", identical(rt, rd("msgs100_each.bin")), " lens", length(rt), length(rd("msgs100_each.bin")), "\n")
ru <- tryCatch(do.call(c, lapply(obj$users, function(u) u$to_bytes())), error=function(e) {cat("USER ENCODE ERROR:", conditionMessage(e), "\n"); NULL})
cat("roundtrip users identical:", identical(ru, rd("users10_each.bin")), "\n")
if (!is.null(rt)) bm("encode 100 messages (to_bytes)", enc_msgs())
req <- ns$GetHistoryRequest$new(peer = ns$InputPeerChannel$new(1234567890, 987654321), offsetId = 0, offsetDate = NULL, addOffset = 0, limit = 100, maxId = 0, minId = 0, hash = 0)
bm("encode GetHistoryRequest", req$bytes())
aes <- ns$AES$new(); key <- as.raw(sample(0:255, 32, TRUE)); iv <- as.raw(sample(0:255, 32, TRUE))
for (sz in c(1024, 131072, 1048576)) {
  d <- as.raw(sample(0:255, sz, TRUE))
  bm(sprintf("AES-IGE encrypt %dKB", sz/1024), aes$encrypt_ige(d, key, iv))
  cdat <- aes$encrypt_ige(d, key, iv)
  stopifnot(identical(aes$decrypt_ige(cdat, key, iv), d))
  bm(sprintf("AES-IGE decrypt %dKB", sz/1024), aes$decrypt_ige(cdat, key, iv))
}
st <- ns$MTProtoState$new(ns$AuthKey$new(as.raw(sample(0:255, 256, TRUE))), NULL)
for (sz in c(1024, 131072)) { d <- as.raw(sample(0:255, sz, TRUE)); bm(sprintf("MTProto encrypt_message_data %dKB", sz/1024), st$encrypt_message_data(d)) }
fz <- ns$Factorization$new(); print(fz$factorize("1724114033281923457"))
bm("factorize pq (64-bit)", fz$factorize("1724114033281923457"))
# telegramR-only: message -> tibble rows (the data-collection path)
bm("100 msgs -> rows (.telegramR_message_to_row_fast)", lapply(obj$messages, ns$.telegramR_message_to_row_fast, channel = "testchan"))
jsonlite::write_json(res, commandArgs(TRUE)[2], auto_unbox = TRUE, digits = NA)
