% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/factorization.R
\name{Factorization}
\alias{Factorization}
\title{R6 Class Representing Factorization}
\description{
Provides methods to factorize large integers quickly using Pollard's Rho algorithm.
}
\details{
This class implements the Pollard's Rho-Brent Integer Factorization algorithm
to efficiently factorize large integers into their prime components.
}
\examples{

## ------------------------------------------------
## Method `Factorization$factorize`
## ------------------------------------------------

factorizer <- Factorization$new()
factorizer$factorize(15) # Returns c(3, 5)

## ------------------------------------------------
## Method `Factorization$gcd`
## ------------------------------------------------

factorizer <- Factorization$new()
factorizer$gcd(12, 8) # Returns 4
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-Factorization-factorize}{\code{Factorization$factorize()}}
\item \href{#method-Factorization-gcd}{\code{Factorization$gcd()}}
\item \href{#method-Factorization-clone}{\code{Factorization$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Factorization-factorize"></a>}}
\if{latex}{\out{\hypertarget{method-Factorization-factorize}{}}}
\subsection{Method \code{factorize()}}{
Factorizes the given large integer.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Factorization$factorize(pq)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{pq}}{An integer representing the product of two primes.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
Implementation based on Pollard's Rho-Brent Integer Factorization algorithm.
}

\subsection{Returns}{
A numeric vector containing the two factors `p` and `q`.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{factorizer <- Factorization$new()
factorizer$factorize(15) # Returns c(3, 5)
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Factorization-gcd"></a>}}
\if{latex}{\out{\hypertarget{method-Factorization-gcd}{}}}
\subsection{Method \code{gcd()}}{
Calculates the Greatest Common Divisor (GCD).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Factorization$gcd(a, b)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{a}}{An integer.}

\item{\code{b}}{Another integer.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The GCD of `a` and `b`.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{factorizer <- Factorization$new()
factorizer$gcd(12, 8) # Returns 4
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-Factorization-clone"></a>}}
\if{latex}{\out{\hypertarget{method-Factorization-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Factorization$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
