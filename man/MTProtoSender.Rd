% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mtprotosender.R
\name{MTProtoSender}
\alias{MTProtoSender}
\title{MTProto Mobile Protocol sender}
\description{
MTProto Mobile Protocol sender

MTProto Mobile Protocol sender
}
\details{
This class is responsible for wrapping requests into TLMessage objects,
sending them over the network and receiving them in a safe manner.
Automatic reconnection due to temporary network issues is handled by this class,
including retry of messages that could not be sent successfully.
A new authorization key will be generated on connection if no other key exists yet.
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{auth_key}}{Authentication key}

\item{\code{time_offset}}{Time offset with server}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-MTProtoSender-new}{\code{MTProtoSender$new()}}
\item \href{#method-MTProtoSender-connect}{\code{MTProtoSender$connect()}}
\item \href{#method-MTProtoSender-is_connected}{\code{MTProtoSender$is_connected()}}
\item \href{#method-MTProtoSender-transport_connected}{\code{MTProtoSender$transport_connected()}}
\item \href{#method-MTProtoSender-disconnect}{\code{MTProtoSender$disconnect()}}
\item \href{#method-MTProtoSender-send}{\code{MTProtoSender$send()}}
\item \href{#method-MTProtoSender-disconnected}{\code{MTProtoSender$disconnected()}}
\item \href{#method-MTProtoSender-get_new_msg_id}{\code{MTProtoSender$get_new_msg_id()}}
\item \href{#method-MTProtoSender-update_time_offset}{\code{MTProtoSender$update_time_offset()}}
\item \href{#method-MTProtoSender-clone}{\code{MTProtoSender$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-new"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-new}{}}}
\subsection{Method \code{new()}}{
Initialize a new MTProtoSender
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$new(
  auth_key = NULL,
  loggers = NULL,
  retries = 5,
  delay = 1,
  auto_reconnect = TRUE,
  connect_timeout = NULL,
  auth_key_callback = NULL,
  updates_queue = NULL,
  auto_reconnect_callback = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{auth_key}}{Authentication key}

\item{\code{loggers}}{Logger instances}

\item{\code{retries}}{Number of retries for failed operations}

\item{\code{delay}}{Delay between retries in seconds}

\item{\code{auto_reconnect}}{Whether to automatically reconnect}

\item{\code{connect_timeout}}{Connection timeout in seconds}

\item{\code{auth_key_callback}}{Callback for auth key updates}

\item{\code{updates_queue}}{Queue for updates}

\item{\code{auto_reconnect_callback}}{Callback after reconnection}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-connect"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-connect}{}}}
\subsection{Method \code{connect()}}{
Connects to the specified given connection using the given auth key.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$connect(connection)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{connection}}{Connection object to use}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
TRUE if connected successfully, FALSE otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-is_connected"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-is_connected}{}}}
\subsection{Method \code{is_connected()}}{
Check if user is connected
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$is_connected()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
TRUE if connected, FALSE otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-transport_connected"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-transport_connected}{}}}
\subsection{Method \code{transport_connected()}}{
Check if transport layer is connected
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$transport_connected()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
TRUE if transport connected, FALSE otherwise
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-disconnect"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-disconnect}{}}}
\subsection{Method \code{disconnect()}}{
Cleanly disconnects the instance from the network, cancels
all pending requests, and closes the send and receive loops.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$disconnect()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-send"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-send}{}}}
\subsection{Method \code{send()}}{
Enqueues the given request to be sent. Its send state will
be saved until a response arrives, and a future that will be
resolved when the response arrives will be returned.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$send(request, ordered = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{request}}{Request or list of requests to send}

\item{\code{ordered}}{Whether requests should be executed in order}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Future or list of futures that will resolve with the response
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-disconnected"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-disconnected}{}}}
\subsection{Method \code{disconnected()}}{
Get future that resolves when connection to Telegram ends
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$disconnected()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Future that resolves on disconnection
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-get_new_msg_id"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-get_new_msg_id}{}}}
\subsection{Method \code{get_new_msg_id()}}{
Generate a new unique message ID
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$get_new_msg_id()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
New message ID
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-update_time_offset"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-update_time_offset}{}}}
\subsection{Method \code{update_time_offset()}}{
Update time offset based on a correct message ID
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$update_time_offset(correct_msg_id)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{correct_msg_id}}{Known valid message ID}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Updated time offset
Internal method to perform connection
Try to establish connection
Try to generate authentication key
Disconnect from server
Reconnect to server
Start reconnection process in background
Send a keep-alive ping
Send loop - encrypts and sends messages
Receive loop - reads and processes incoming data
Process received message
Find states matching a message ID
Handle RPC results
Handle message containers
Handle gzipped data
Handle updates
Store updates originating from our own requests
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MTProtoSender-clone"></a>}}
\if{latex}{\out{\hypertarget{method-MTProtoSender-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MTProtoSender$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
