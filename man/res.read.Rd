% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/res.read.R
\name{res.read}
\alias{res.read}
\title{Read in Raven ReservoirStages file}
\usage{
res.read(ff = NA)
}
\arguments{
\item{ff}{full file path to the ReservoirStages.csv file}
}
\value{
\item{res}{data frame from the file with standardized names}
}
\description{
res.read is used to read in the ReservoirStages.csv file produced by the
modelling Framework Raven.
}
\details{
This function expects a full file path to the ReservoirStages.csv file, then
reads in the file using read.csv. The main advantage of this function is
renaming the columns to nicer names and extracting the units into something
much easier to read.

This function is also built to support the res.extract function, which uses
the object created here for extracting by reference to the columns named
here, for example sub24.

ff is the full file path of the ReservoirStages.csv file. If the file is
located in the current working directory, then simply the name of the file
is sufficient.
}
\examples{

# create full file path
dir <- "C:/temp/model/output.csv")
ff <- paste0(dir,"/","run4_ReservoirStages.csv")

# read in the Reservoir file
myres <- res.read(ff)

# view contents
head(myres$res)
res$units

}
\seealso{
\code{\link{res.extract}} for extraction tools related to the
res.read output file

See also \href{http://www.civil.uwaterloo.ca/jrcraig/}{James R.
Craig's research page} for software downloads, including the
\href{http://www.civil.uwaterloo.ca/jrcraig/Raven/Main.html}{Raven page}
}
\keyword{Raven}
\keyword{read.csv}
\keyword{reservoir}
