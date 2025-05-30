% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/users.R
\name{UserMethods}
\alias{UserMethods}
\title{UserMethods}
\description{
UserMethods class for handling user-related methods in Telethon.
}
\details{
This class provides methods to interact with Telegram's API, including user authorization,
getting user information, and handling input entities.
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-UserMethods-new}{\code{UserMethods$new()}}
\item \href{#method-UserMethods-call}{\code{UserMethods$call()}}
\item \href{#method-UserMethods-call_internal}{\code{UserMethods$call_internal()}}
\item \href{#method-UserMethods-get_me}{\code{UserMethods$get_me()}}
\item \href{#method-UserMethods-self_id}{\code{UserMethods$self_id()}}
\item \href{#method-UserMethods-is_bot}{\code{UserMethods$is_bot()}}
\item \href{#method-UserMethods-is_user_authorized}{\code{UserMethods$is_user_authorized()}}
\item \href{#method-UserMethods-get_entity}{\code{UserMethods$get_entity()}}
\item \href{#method-UserMethods-get_input_entity}{\code{UserMethods$get_input_entity()}}
\item \href{#method-UserMethods-get_peer}{\code{UserMethods$get_peer()}}
\item \href{#method-UserMethods-get_peer_id}{\code{UserMethods$get_peer_id()}}
\item \href{#method-UserMethods-get_entity_from_string}{\code{UserMethods$get_entity_from_string()}}
\item \href{#method-UserMethods-get_input_dialog}{\code{UserMethods$get_input_dialog()}}
\item \href{#method-UserMethods-get_input_notify}{\code{UserMethods$get_input_notify()}}
\item \href{#method-UserMethods-clone}{\code{UserMethods$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-new"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-new}{}}}
\subsection{Method \code{new()}}{
Initialize the UserMethods class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$new(client)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{client}}{The client object.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
None.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-call"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-call}{}}}
\subsection{Method \code{call()}}{
Make a call to the Telegram API.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$call(request, ordered = FALSE, flood_sleep_threshold = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{request}}{The request object.}

\item{\code{ordered}}{Boolean indicating if the call is ordered.}

\item{\code{flood_sleep_threshold}}{The threshold for flood sleep.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the result of the API call.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-call_internal"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-call_internal}{}}}
\subsection{Method \code{call_internal()}}{
Make an internal call to the Telegram API.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$call_internal(
  sender,
  request,
  ordered = FALSE,
  flood_sleep_threshold = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{sender}}{The sender object.}

\item{\code{request}}{The request object.}

\item{\code{ordered}}{Boolean indicating if the call is ordered.}

\item{\code{flood_sleep_threshold}}{The threshold for flood sleep.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The result of the API call.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_me"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_me}{}}}
\subsection{Method \code{get_me()}}{
Get the current user.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_me(input_peer = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{input_peer}}{Boolean indicating if the result should be an InputPeer.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the current user.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-self_id"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-self_id}{}}}
\subsection{Method \code{self_id()}}{
Get the ID of the current user.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$self_id()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
The ID of the current user.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-is_bot"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-is_bot}{}}}
\subsection{Method \code{is_bot()}}{
Check if the current user is a bot.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$is_bot()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A future object indicating if the user is a bot.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-is_user_authorized"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-is_user_authorized}{}}}
\subsection{Method \code{is_user_authorized()}}{
Check if the current user is authorized.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$is_user_authorized()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A future object indicating if the user is authorized.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_entity"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_entity}{}}}
\subsection{Method \code{get_entity()}}{
Get an entity from a given input.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_entity(entity)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{entity}}{The input entity (user, chat, or channel).}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the entity.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_input_entity"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_input_entity}{}}}
\subsection{Method \code{get_input_entity()}}{
Get the input entity for a given peer.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_input_entity(peer)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{peer}}{The peer to get the input entity for.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the input entity.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_peer"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_peer}{}}}
\subsection{Method \code{get_peer()}}{
Get the peer for a given input entity.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_peer(peer)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{peer}}{The input entity to get the peer for.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the peer.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_peer_id"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_peer_id}{}}}
\subsection{Method \code{get_peer_id()}}{
Get the ID of a given peer.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_peer_id(peer, add_mark = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{peer}}{The input entity to get the ID for.}

\item{\code{add_mark}}{Boolean indicating if the ID should be marked.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The ID of the peer.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_entity_from_string"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_entity_from_string}{}}}
\subsection{Method \code{get_entity_from_string()}}{
Get an entity from a string.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_entity_from_string(string)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{string}}{The string to get the entity from.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the entity.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_input_dialog"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_input_dialog}{}}}
\subsection{Method \code{get_input_dialog()}}{
Get the input dialog for a given dialog.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_input_dialog(dialog)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dialog}}{The dialog to get the input dialog for.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the input dialog.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-get_input_notify"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-get_input_notify}{}}}
\subsection{Method \code{get_input_notify()}}{
Get the input notify for a given notify.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$get_input_notify(notify)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{notify}}{The notify to get the input notify for.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A future object representing the input notify.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-UserMethods-clone"></a>}}
\if{latex}{\out{\hypertarget{method-UserMethods-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{UserMethods$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
