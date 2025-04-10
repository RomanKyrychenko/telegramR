% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aesctr.R
\name{AESModeCTR}
\alias{AESModeCTR}
\title{R6 Class Representing AES CTR Mode}
\description{
A wrapper around AES CTR mode with custom IV using the `pyaes` library.
}
\details{
This class provides methods to encrypt and decrypt data using AES CTR mode.
It initializes with a key and a 16-byte initialization vector (IV).
}
\examples{

## ------------------------------------------------
## Method `AESModeCTR$new`
## ------------------------------------------------

key <- as.raw(rep(0x01, 16))
iv <- as.raw(rep(0x02, 16))
aes_ctr <- AESModeCTR$new(key, iv)

## ------------------------------------------------
## Method `AESModeCTR$encrypt`
## ------------------------------------------------

key <- as.raw(rep(0x01, 16))
iv <- as.raw(rep(0x02, 16))
aes_ctr <- AESModeCTR$new(key, iv)
plain_text <- as.raw(c(0x00, 0x01, 0x02, 0x03))
cipher_text <- aes_ctr$encrypt(plain_text)

## ------------------------------------------------
## Method `AESModeCTR$decrypt`
## ------------------------------------------------

key <- as.raw(rep(0x01, 16))
iv <- as.raw(rep(0x02, 16))
aes_ctr <- AESModeCTR$new(key, iv)
cipher_text <- as.raw(c(0x8d, 0x6c, 0x63, 0x7c))
plain_text <- aes_ctr$decrypt(cipher_text)
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{._aes}}{An instance of the AESModeOfOperationCTR from the `pyaes` library.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-AESModeCTR-new}{\code{AESModeCTR$new()}}
\item \href{#method-AESModeCTR-encrypt}{\code{AESModeCTR$encrypt()}}
\item \href{#method-AESModeCTR-decrypt}{\code{AESModeCTR$decrypt()}}
\item \href{#method-AESModeCTR-clone}{\code{AESModeCTR$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AESModeCTR-new"></a>}}
\if{latex}{\out{\hypertarget{method-AESModeCTR-new}{}}}
\subsection{Method \code{new()}}{
Initialize the AES CTR mode with the given key and IV.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AESModeCTR$new(key, iv)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{key}}{A raw vector representing the encryption key.}

\item{\code{iv}}{A raw vector representing the initialization vector (16 bytes).}
}
\if{html}{\out{</div>}}
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{key <- as.raw(rep(0x01, 16))
iv <- as.raw(rep(0x02, 16))
aes_ctr <- AESModeCTR$new(key, iv)
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AESModeCTR-encrypt"></a>}}
\if{latex}{\out{\hypertarget{method-AESModeCTR-encrypt}{}}}
\subsection{Method \code{encrypt()}}{
Encrypt the given plain text using AES CTR mode.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AESModeCTR$encrypt(data)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{A raw vector representing the plain text to encrypt.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A raw vector representing the encrypted cipher text.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{key <- as.raw(rep(0x01, 16))
iv <- as.raw(rep(0x02, 16))
aes_ctr <- AESModeCTR$new(key, iv)
plain_text <- as.raw(c(0x00, 0x01, 0x02, 0x03))
cipher_text <- aes_ctr$encrypt(plain_text)
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AESModeCTR-decrypt"></a>}}
\if{latex}{\out{\hypertarget{method-AESModeCTR-decrypt}{}}}
\subsection{Method \code{decrypt()}}{
Decrypt the given cipher text using AES CTR mode.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AESModeCTR$decrypt(data)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{A raw vector representing the cipher text to decrypt.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A raw vector representing the decrypted plain text.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{key <- as.raw(rep(0x01, 16))
iv <- as.raw(rep(0x02, 16))
aes_ctr <- AESModeCTR$new(key, iv)
cipher_text <- as.raw(c(0x8d, 0x6c, 0x63, 0x7c))
plain_text <- aes_ctr$decrypt(cipher_text)
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-AESModeCTR-clone"></a>}}
\if{latex}{\out{\hypertarget{method-AESModeCTR-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{AESModeCTR$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
