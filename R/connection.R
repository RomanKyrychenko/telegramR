#' Cancel a future
#'
#' Attempts to safely cancel a running future task.
#' @param future The future object to cancel
#' @return Invisible NULL
#' @export
cancel <- function(future) {
  if (requireNamespace("future", quietly = TRUE)) {
    # Try to halt the future if it's still running
    if (!future::resolved(future)) {
      tryCatch({
        # Kill the process if possible
        if (inherits(future, "MulticoreFuture")) {
          tools::pskill(future$worker$pid, tools::SIGTERM)
          return(invisible(NULL))
        }

        # For other future types, try a general approach
        reg.finalizer(environment(future), function(e) NULL, onexit = TRUE)

        # Try to interrupt if available
        if (inherits(future, "ClusterFuture") && !is.null(future$workers)) {
          parallel::stopCluster(future$workers)
        }
      }, error = function(e) {
        warning(paste("Failed to cancel future:", e$message))
      })
    }
  }
  invisible(NULL)
}

#' Connection Module
#'
#' This module provides connection handling for Telegram API communications.
#' It relies on the future package for asynchronous operations and R6 for
#' object-oriented programming.
#' @import R6
#' @import future
#' @import promises
#' @import stringr
#' @import later
#' @title Connection Class
#' @description
#' The Connection class wraps asynchronous socket connections.
#' Subclasses implement different transport modes by exposing a simple
#' interface for sending and receiving complete data payloads.
#'
#' The only error raised from send and receive methods is ConnectionError,
#' thrown when attempting to send on a disconnected client.
#'
#' @export
Connection <- R6Class(
  "Connection",
  public = list(
    #' @field packet_codec The packet codec class to use for this connection.
    packet_codec = NULL,

    #' @description
    #' Initialize a new Connection instance.
    #' @param ip A character string with the IP address.
    #' @param port A numeric port number.
    #' @param dc_id A numeric data center ID.
    #' @param loggers A list of logger objects.
    #' @param proxy Optional proxy configuration.
    #' @param local_addr Optional local address as character or vector.
    initialize = function(ip, port, dc_id, proxy = NULL, local_addr = NULL) {
      private$._ip <- ip
      private$._port <- port
      private$._dc_id <- dc_id
      private$._proxy <- proxy
      private$._local_addr <- local_addr
      private$._reader <- NULL
      private$._writer <- NULL
      private$._connected <- FALSE
      private$._send_task <- NULL
      private$._recv_task <- NULL
      private$._codec <- NULL
      private$._obfuscation <- NULL
      private$._send_queue <- AsyncQueue$new(1)
      private$._recv_queue <- AsyncQueue$new(1)
    },

    #' @description
    #' Connect to the server.
    #' @param timeout Connection timeout in seconds.
    #' @param ssl SSL configuration.
    #' @return A promise resolving when connected.
    connect = function(timeout = NULL, ssl = NULL) {
      promise_resolve(private$._connect(timeout = timeout, ssl = ssl)) %...>% (function(result) {
        private$._connected <<- TRUE
        private$._send_task <<- future({ private$._send_loop() })
        private$._recv_task <<- future({ private$._recv_loop() })
        result
      })
    },

    #' @description
    #' Disconnect from the server and clear pending messages.
    #' @return A promise resolving when disconnected.
    disconnect = function() {
      if (!private$._connected) return(promise_resolve(NULL))
      private$._connected <<- FALSE
      if (!is.null(private$._send_task)) cancel(private$._send_task)
      if (!is.null(private$._recv_task)) cancel(private$._recv_task)

      if (!is.null(private$._writer)) {
        close_writer <- function() {
          tryCatch({
            private$._writer$close()
          }, error = function(e) {
            private$._log$info(sprintf("Error during disconnect: %s", e$message))
          })
        }
        promise_resolve(close_writer())
      } else {
        promise_resolve(NULL)
      }
    },

    #' @description
    #' Send data through the connection.
    #' @param data The data to be sent.
    #' @return A promise that resolves when data is queued.
    send = function(data) {
      if (!private$._connected) stop("ConnectionError: Not connected")
      private$._send_queue$put(data)
    },

    #' @description
    #' Receive data from the connection.
    #' @return A promise resolving with the received data.
    recv = function() {
      promise(function(resolve, reject) {
        if (!private$._connected) {
          reject("ConnectionError: Not connected")
          return()
        }
        private$._recv_queue$get() %...>% (function(item) {
          res <- item[[1]]
          err <- item[[2]]
          if (!is.null(err)) reject(err)
          else if (!is.null(res)) resolve(res)
        })
      })
    }
  ),

  private = list(
    ._ip = NULL,
    ._port = NULL,
    ._dc_id = NULL,
    ._log = NULL,
    ._proxy = NULL,
    ._local_addr = NULL,
    ._reader = NULL,
    ._writer = NULL,
    ._connected = FALSE,
    ._send_task = NULL,
    ._recv_task = NULL,
    ._codec = NULL,
    ._obfuscation = NULL,
    ._send_queue = NULL,
    ._recv_queue = NULL,

    ._wrap_socket_ssl = function(sock) {
      if (!requireNamespace("openssl", quietly = TRUE)) {
        stop("Cannot use proxy that requires SSL without the openssl package")
      }
      openssl::ssl_wrap_socket(sock,
                                do_handshake_on_connect = TRUE,
                                ssl_version = "SSLv23",
                                ciphers = "ADH-AES256-SHA")
    },

    ._parse_proxy = function(proxy_type, addr, port, rdns = TRUE, username = NULL, password = NULL) {
      if (is.character(proxy_type)) proxy_type <- tolower(proxy_type)
      SOCKS5 <- 2; SOCKS4 <- 1; HTTP <- 3
      if (proxy_type == SOCKS5 || proxy_type == "socks5") protocol <- SOCKS5
      else if (proxy_type == SOCKS4 || proxy_type == "socks4") protocol <- SOCKS4
      else if (proxy_type == HTTP || proxy_type == "http") protocol <- HTTP
      else stop(sprintf("Unknown proxy protocol type: %s", proxy_type))
      list(protocol = protocol, addr = addr, port = port,
           rdns = rdns, username = username, password = password)
    },

    ._proxy_connect = function(timeout = NULL, local_addr = NULL) {
      promise(function(resolve, reject) {
        tryCatch({
          if (is.list(private$._proxy) || is.vector(private$._proxy)) {
            parsed <- if (is.vector(private$._proxy)) {
              do.call(private$._parse_proxy, as.list(private$._proxy))
            } else {
              do.call(private$._parse_proxy, private$._proxy)
            }
          } else stop(sprintf("Proxy of unknown format: %s", class(private$._proxy)[1]))

          sock <- create_socket_connection(host = private$._ip,
                                             port = private$._port,
                                             proxy = parsed,
                                             local_addr = local_addr,
                                             timeout = timeout)
          resolve(sock)
        }, error = function(e) { reject(e) })
      })
    },

    ._connect = function(timeout = NULL, ssl = NULL) {
      promise(function(resolve, reject) {
        local_addr <- NULL
        if (!is.null(private$._local_addr)) {
          if (is.vector(private$._local_addr) && length(private$._local_addr) == 2) {
            local_addr <- private$._local_addr
          } else if (is.character(private$._local_addr)) {
            local_addr <- c(private$._local_addr, 0)
          } else stop(sprintf("Unknown local address format: %s", private$._local_addr))
        }
        open_connection <- function() {
          if (is.null(private$._proxy)) {
            connection <- async_open_connection(host = private$._ip,
                                                  port = private$._port,
                                                  ssl = ssl,
                                                  local_addr = local_addr,
                                                  timeout = timeout)
            connection %...>% (function(conn) {
              private$._reader <<- conn$reader
              private$._writer <<- conn$writer
              private$._codec <<- self$packet_codec$new(self)
              private$._init_conn()
              resolve(TRUE)
            })
          } else {
            private$._proxy_connect(timeout = timeout, local_addr = local_addr) %...>% (function(sock) {
              if (!is.null(ssl)) sock <- private$._wrap_socket_ssl(sock)
              connection <- async_open_connection(sock = sock)
              connection %...>% (function(conn) {
                private$._reader <<- conn$reader
                private$._writer <<- conn$writer
                private$._codec <<- self$packet_codec$new(self)
                private$._init_conn()
                resolve(TRUE)
              })
            })
          }
        }
        tryCatch(open_connection(), error = function(e) { reject(e) })
      })
    },

    ._init_conn = function() {
      if (!is.null(private$._codec$tag)) {
        private$._writer$write(private$._codec$tag)
      }
    },

    ._send = function(data) {
      private$._writer$write(private$._codec$encode_packet(data))
    },

    ._recv = function() {
      private$._codec$read_packet(private$._reader)
    },

    ._send_loop = function() {
      while (private$._connected) {
        tryCatch({
          data <- private$._send_queue$get()$value()
          private$._send(data)
          private$._writer$drain()
        }, error = function(e) {
          if (inherits(e, "IOError"))
            private$._log$info("Server closed connection during sending")
          else
            private$._log$exception("Unexpected exception in send loop")
          private$._connected <<- FALSE
          break
        })
      }
    },

    ._recv_loop = function() {
      while (private$._connected) {
        tryCatch({
          data <- private$._recv()$value()
          private$._recv_queue$put(list(data, NULL))
        }, error = function(e) {
          if (inherits(e, "IOError") || inherits(e, "IncompleteReadError")) {
            private$._log$warning(sprintf("Server closed connection: %s", e$message))
            private$._recv_queue$put(list(NULL, e))
            private$._connected <<- FALSE
          } else {
            private$._log$exception("Unexpected exception in receive loop")
            private$._recv_queue$put(list(NULL, e))
            private$._connected <<- FALSE
          }
        })
      }
    }
  )
)

#' ObfuscatedConnection Class
#'
#' @description
#' Base class for obfuscated connections (e.g., obfuscated2, mtproto proxy).
#' @export
ObfuscatedConnection <- R6Class(
  "ObfuscatedConnection",
  inherit = Connection,
  public = list(
    #' @field obfuscated_io The obfuscation class to use.
    obfuscated_io = NULL
  ),
  private = list(
    ._init_conn = function() {
      private$._obfuscation <- self$obfuscated_io$new(self)
      private$._writer$write(private$._obfuscation$header)
    },

    ._send = function(data) {
      private$._obfuscation$write(private$._codec$encode_packet(data))
    },

    ._recv = function() {
      private$._codec$read_packet(private$._obfuscation)
    }
  )
)

#' PacketCodec Class
#'
#' @description
#' Abstract base class for packet codecs.
#' @export
PacketCodec <- R6Class(
  "PacketCodec",
  public = list(
    #' @field tag Optional initial bytes to send upon connection.
    tag = NULL,

    #' @description
    #' Initialize a PacketCodec instance.
    #' @param connection The associated Connection object.
    initialize = function(connection) {
      private$._conn <- connection
    },

    #' @description
    #' Encode a packet.
    #' @param data The data to encode.
    #' @return Encoded bytes.
    encode_packet = function(data) {
      serialized <- serialize(data, NULL)
      packet_length <- length(serialized)
      length_bytes <- writeBin(as.integer(packet_length), raw(), size = 4, endian = "big")
      c(length_bytes, serialized)
    },

    #' @description
    #' Read a packet.
    #' @param reader An object with a readexactly method.
    #' @return A promise resolving with the packet.
    read_packet = function(reader) {
      promise(function(resolve, reject) {
        reader$readexactly(4)$then(function(length_bytes) {
          packet_length <- readBin(length_bytes, "integer", size = 4, endian = "big")
          reader$readexactly(packet_length)$then(function(payload) {
            result <- unserialize(payload)
            resolve(result)
          }, reject)
        }, reject)
      })
    }
  ),
  private = list(
    ._conn = NULL
  )
)

#' AsyncQueue Class
#'
#' @description
#' Implements an asynchronous queue.
#' @export
AsyncQueue <- R6Class(
  "AsyncQueue",
  public = list(
    #' @description
    #' Create a new AsyncQueue.
    #' @param maxsize Maximum size of the queue.
    initialize = function(maxsize = NULL) {
      private$.queue <- list()
      private$.maxsize <- maxsize
    },

    #' @description
    #' Add an item to the queue.
    #' @param item The item to add.
    #' @return A promise that resolves when the item is added.
    put = function(item) {
      if (!is.null(private$.maxsize) && length(private$.queue) >= private$.maxsize) {
        promise(function(resolve) {
          waitUntilSpace <- function() {
            if (length(private$.queue) < private$.maxsize) {
              private$.queue[[length(private$.queue) + 1]] <<- item
              resolve(TRUE)
            } else {
              later(waitUntilSpace, delay = 0.05)
            }
          }
          waitUntilSpace()
        })
      } else {
        private$.queue[[length(private$.queue) + 1]] <<- item
        promise_resolve(TRUE)
      }
    },

    #' @description
    #' Retrieve an item from the queue.
    #' @return A promise that resolves with the item.
    get = function() {
      promise(function(resolve) {
        waitForItem <- function() {
          if (length(private$.queue) > 0) {
            item <- private$.queue[[1]]
            private$.queue <<- private$.queue[-1]
            resolve(item)
          } else {
            later(waitForItem, delay = 0.05)
          }
        }
        waitForItem()
      })
    }
  ),
  private = list(
    .queue = NULL,
    .maxsize = NULL
  )
)

#' Helper function for asynchronous open connection.
#'
#' @param host Hostname.
#' @param port Port number.
#' @param ssl Optional SSL configuration.
#' @param local_addr Optional local address.
#' @param sock Optional socket.
#' @param timeout Optional timeout.
#' @return A promise resolving with a list containing reader and writer.
async_open_connection <- function(host = NULL, port = NULL, ssl = NULL, local_addr = NULL, sock = NULL, timeout = NULL) {
  promise(function(resolve, reject) {
    tryCatch({
      # Use existing socket or create a new one
      conn <- if (!is.null(sock)) {
        sock
      } else if (!is.null(host) && !is.null(port)) {
        create_socket_connection(host = host, port = port, local_addr = local_addr, timeout = timeout)
      } else {
        stop("Either a socket or host and port must be provided")
      }

      # Apply SSL if needed
      if (!is.null(ssl)) {
        if (!requireNamespace("openssl", quietly = TRUE)) {
          stop("SSL connections require the openssl package")
        }
        conn <- openssl::ssl_wrap_socket(
          conn,
          do_handshake_on_connect = TRUE,
          ssl_version = if(is.character(ssl)) ssl else "SSLv23",
          ciphers = "HIGH:!aNULL:!MD5"
        )
      }

      # Create reader and writer objects
      reader <- Reader$new()
      reader$socket <- conn

      writer <- Writer$new()
      writer$socket <- conn

      resolve(list(reader = reader, writer = writer))
    }, error = function(e) {
      reject(sprintf("Failed to open connection: %s", e$message))
    })
  })
}

#' Reader Class
#'
#' @description
#' Implements a simple reader.
#' @export
Reader <- R6Class(
  "Reader",
  public = list(
    #' @description
    #' Read a fixed number of bytes.
    #' @param n Number of bytes to read.
    #' @return A promise resolving with raw data.
    readexactly = function(n) {
      promise_resolve(raw(n))
    }
  )
)

#' Writer Class
#'
#' @description
#' Implements a simple writer.
#' @export
Writer <- R6Class(
  "Writer",
  public = list(
    #' @description
    #' Write data.
    #' @param data Data to write.
    write = function(data) {
      # Store the data in a buffer for writing
      if (is.null(private$.buffer)) private$.buffer <- list()
      private$.buffer <- c(private$.buffer, list(data))

      # If we have a socket connection, try to write immediately
      if (!is.null(self$socket) && isOpen(self$socket)) {
        tryCatch({
          self$.write_to_socket()
        }, error = function(e) {
          warning(sprintf("Error writing to socket: %s", e$message))
        })
      }
    },

    #' @description
    #' Drain the write buffer.
    #' @return A promise that resolves when drained.
    drain = function() {
      promise_resolve(NULL)
    },

    #' @description
    #' Close the writer.
    close = function() {
      if (!is.null(self$socket) && isOpen(self$socket)) {
        close(self$socket)
      }
      invisible(NULL)
    }
  )
)

#' Create a socket connection.
#'
#' @description
#' Placeholder function. In practice, use proper R networking packages.
#' @param host Hostname.
#' @param port Port number.
#' @param proxy Parsed proxy settings.
#' @param local_addr Local address.
#' @param timeout Connection timeout.
#' @return A socket object.
create_socket_connection <- function(host, port, proxy = NULL, local_addr = NULL, timeout = NULL) {
  if (!is.null(proxy)) {
    if (proxy$protocol == 3) {  # HTTP proxy
      # Connect to the proxy server.
      con <- socketConnection(host = proxy$addr, port = proxy$port, blocking = TRUE, open = "r+", timeout = timeout)
      # Construct the CONNECT request.
      request <- sprintf("CONNECT %s:%s HTTP/1.1\r\nHost: %s:%s\r\n", host, port, host, port)
      if (!is.null(proxy$username) && !is.null(proxy$password)) {
        credentials <- base64enc::base64encode(paste0(proxy$username, ":", proxy$password))
        request <- paste0(request, "Proxy-Authorization: Basic ", credentials, "\r\n")
      }
      request <- paste0(request, "\r\n")
      writeLines(request, con)
      # Read the first line of the proxy response.
      response <- readLines(con, n = 1)
      if (!grepl("200", response)) {
        close(con)
        stop("HTTP proxy connection failed: ", response)
      }
      return(con)
    } else {
      stop("Only HTTP proxy is implemented.")
    }
  }
  socketConnection(host = host, port = port, blocking = FALSE, open = "r+", timeout = timeout)
}
