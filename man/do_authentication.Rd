% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/authentificator.R
\name{do_authentication}
\alias{do_authentication}
\title{Execute the authentication process with the Telegram servers.}
\usage{
do_authentication(sender)
}
\arguments{
\item{sender}{A connected MTProtoPlainSender-like object with a send method.}
}
\value{
A list with elements \code{auth_key} and \code{time_offset}.
}
\description{
Execute the authentication process with the Telegram servers.
}
