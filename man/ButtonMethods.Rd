% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/buttons.R
\name{ButtonMethods}
\alias{ButtonMethods}
\title{ButtonMethods}
\description{
A class that provides methods for building reply markups for buttons.
}
\details{
This class contains methods to create reply markups for buttons in Telegram.
It can handle both inline and normal buttons, and it can convert a variety of button formats into the appropriate markup.
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-ButtonMethods-build_reply_markup}{\code{ButtonMethods$build_reply_markup()}}
\item \href{#method-ButtonMethods-clone}{\code{ButtonMethods$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ButtonMethods-build_reply_markup"></a>}}
\if{latex}{\out{\hypertarget{method-ButtonMethods-build_reply_markup}{}}}
\subsection{Method \code{build_reply_markup()}}{
Builds a ReplyInlineMarkup or ReplyKeyboardMarkup for the given buttons.

Does nothing if either no buttons are provided or the provided
argument is already a reply markup.

This method is not asynchronous.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ButtonMethods$build_reply_markup(buttons = NULL, inline_only = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{buttons}}{The button, list of buttons, array of buttons or markup
to convert into a markup.}

\item{\code{inline_only}}{Whether the buttons must be inline buttons only or not.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A ReplyInlineMarkup or ReplyKeyboardMarkup object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-ButtonMethods-clone"></a>}}
\if{latex}{\out{\hypertarget{method-ButtonMethods-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ButtonMethods$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
