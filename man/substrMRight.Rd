% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/substrMRight.R
\name{substrMRight}
\alias{substrMRight}
\title{substring minus characters from the Right}
\usage{
substrMRight(x, n)
}
\arguments{
\item{x}{a string to manipulate}

\item{n}{number of characters to remove from the right side of the string}
}
\description{
substrMRight returns a string x with n characters removed from the right
side of the string.
}
\examples{

substrRLeft("hello world",3)
# returns "hello wo"

}
\seealso{
\code{\link{substrRight}} for using n characters from the right
side of string,

\code{\link{substrLeft}} for using n characters from the left side of
string,

\code{\link{substrMLeft}} for removing n characters from the left side of a
string,
}
\keyword{minus}
\keyword{right}
\keyword{string}
