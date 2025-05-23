% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updates.R
\name{UpdateMethods}
\alias{UpdateMethods}
\title{UpdateMethods class}
\description{
Handles updates and events for the Telegram client.
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-UpdateMethods-new}{\code{UpdateMethods$new()}}
\item \href{#method-UpdateMethods-run_until_disconnected}{\code{UpdateMethods$run_until_disconnected()}}
\item \href{#method-UpdateMethods-set_receive_updates}{\code{UpdateMethods$set_receive_updates()}}
\item \href{#method-UpdateMethods-on}{\code{UpdateMethods$on()}}
\item \href{#method-UpdateMethods-add_event_handler}{\code{UpdateMethods$add_event_handler()}}
\item \href{#method-UpdateMethods-remove_event_handler}{\code{UpdateMethods$remove_event_handler()}}
\item \href{#method-UpdateMethods-list_event_handlers}{\code{UpdateMethods$list_event_handlers()}}
\item \href{#method-UpdateMethods-catch_up}{\code{UpdateMethods$catch_up()}}
\item \href{#method-UpdateMethods-update_loop}{\code{UpdateMethods$update_loop()}}
\item \href{#method-UpdateMethods-preprocess_updates}{\code{UpdateMethods$preprocess_updates()}}
\item \href{#method-UpdateMethods-keepalive_loop}{\code{UpdateMethods$keepalive_loop()}}
\item \href{#method-UpdateMethods-dispatch_update}{\code{UpdateMethods$dispatch_update()}}
\item \href{#method-UpdateMethods-handle_auto_reconnect}{\code{UpdateMethods$handle_auto_reconnect()}}
\item \href{#method-UpdateMethods-clone}{\code{UpdateMethods$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-new"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-new}{}}}
\subsection{Method \code{new()}}{
Initializes the UpdateMethods with the given client.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$new(client)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{client}}{The Telegram client instance.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
None.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-run_until_disconnected"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-run_until_disconnected}{}}}
\subsection{Method \code{run_until_disconnected()}}{
Runs the update loop until disconnected.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$run_until_disconnected()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A promise that resolves when disconnected.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-set_receive_updates"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-set_receive_updates}{}}}
\subsection{Method \code{set_receive_updates()}}{
Sets whether to receive updates.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$set_receive_updates(receive_updates)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{receive_updates}}{A logical value indicating whether to receive updates.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A promise that resolves when the updates are set.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-on"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-on}{}}}
\subsection{Method \code{on()}}{
Adds an event handler for a specific event.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$on(event)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{event}}{The event type to handle.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A decorator function that wraps the event handler.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-add_event_handler"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-add_event_handler}{}}}
\subsection{Method \code{add_event_handler()}}{
Adds an event handler for a specific event.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$add_event_handler(callback, event = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{callback}}{The callback function to handle the event.}

\item{\code{event}}{The event type to handle.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
NULL or an error if the event is not found.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-remove_event_handler"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-remove_event_handler}{}}}
\subsection{Method \code{remove_event_handler()}}{
Removes an event handler for a specific event.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$remove_event_handler(callback, event = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{callback}}{The callback function to remove.}

\item{\code{event}}{The event type to remove.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The number of handlers removed.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-list_event_handlers"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-list_event_handlers}{}}}
\subsection{Method \code{list_event_handlers()}}{
Lists all event handlers.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$list_event_handlers()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list of event handlers with their callbacks and events.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-catch_up"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-catch_up}{}}}
\subsection{Method \code{catch_up()}}{
Catches up on updates.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$catch_up()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A promise that resolves when caught up.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-update_loop"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-update_loop}{}}}
\subsection{Method \code{update_loop()}}{
Handles the update loop.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$update_loop()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A promise that resolves when the loop is finished.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-preprocess_updates"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-preprocess_updates}{}}}
\subsection{Method \code{preprocess_updates()}}{
Preprocesses updates before dispatching.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$preprocess_updates(updates, users, chats)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{updates}}{A list of updates to preprocess.}

\item{\code{users}}{A list of user entities.}

\item{\code{chats}}{A list of chat entities.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A list of preprocessed updates.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-keepalive_loop"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-keepalive_loop}{}}}
\subsection{Method \code{keepalive_loop()}}{
Sends a keepalive ping to the server.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$keepalive_loop()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A promise that resolves when the ping is sent.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-dispatch_update"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-dispatch_update}{}}}
\subsection{Method \code{dispatch_update()}}{
Dispatches an update to the appropriate event handlers.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$dispatch_update(update)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{update}}{The update to dispatch.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A promise that resolves when the update is dispatched.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-handle_auto_reconnect"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-handle_auto_reconnect}{}}}
\subsection{Method \code{handle_auto_reconnect()}}{
Handles auto-reconnect after a disconnection.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$handle_auto_reconnect()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A promise that resolves when the auto-reconnect is handled.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UpdateMethods-clone"></a>}}
\if{latex}{\out{\hypertarget{method-UpdateMethods-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UpdateMethods$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
