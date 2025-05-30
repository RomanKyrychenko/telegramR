% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tcpintermediate.R
\name{IntermediatePacketCodec}
\alias{IntermediatePacketCodec}
\title{IntermediatePacketCodec}
\value{
A raw vector that starts with a 4-byte little-endian length prefix followed by the data.

A raw vector representing the packet data.
}
\description{
A codec for intermediate TCP packets.
}
\details{
Encodes packets by prepending a 4-byte little-endian length prefix.
}
\section{Super class}{
\code{\link[telegramR:PacketCodec]{telegramR::PacketCodec}} -> \code{IntermediatePacketCodec}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{tag}}{A raw vector representing the tag for the codec.}

\item{\code{obfuscate_tag}}{A raw vector used for obfuscation.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-IntermediatePacketCodec-encode_packet}{\code{IntermediatePacketCodec$encode_packet()}}
\item \href{#method-IntermediatePacketCodec-read_packet}{\code{IntermediatePacketCodec$read_packet()}}
\item \href{#method-IntermediatePacketCodec-clone}{\code{IntermediatePacketCodec$clone()}}
}
}
\if{html}{\out{
<details open><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="telegramR" data-topic="PacketCodec" data-id="initialize"><a href='../../telegramR/html/PacketCodec.html#method-PacketCodec-initialize'><code>telegramR::PacketCodec$initialize()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IntermediatePacketCodec-encode_packet"></a>}}
\if{latex}{\out{\hypertarget{method-IntermediatePacketCodec-encode_packet}{}}}
\subsection{Method \code{encode_packet()}}{
Encodes the packet.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IntermediatePacketCodec$encode_packet(data)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{A raw vector containing the packet data.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A raw vector that starts with a 4-byte little-endian length prefix followed by the data.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IntermediatePacketCodec-read_packet"></a>}}
\if{latex}{\out{\hypertarget{method-IntermediatePacketCodec-read_packet}{}}}
\subsection{Method \code{read_packet()}}{
Reads and decodes a packet from a reader.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IntermediatePacketCodec$read_packet(reader)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{reader}}{An object with a `readexactly` method.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A raw vector representing the packet data.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-IntermediatePacketCodec-clone"></a>}}
\if{latex}{\out{\hypertarget{method-IntermediatePacketCodec-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{IntermediatePacketCodec$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
