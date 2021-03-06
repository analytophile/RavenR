% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/watershedmeb.read.R
\name{watershedmeb.read}
\alias{watershedmeb.read}
\title{Read in Raven WatershedMassEnergyBalance file}
\usage{
watershedmeb.read(ff = NA)
}
\arguments{
\item{ff}{full file path to the WatershedMassEnergyBalance.csv file}
}
\value{
\item{watershedmeb}{data frame from the file with standardized
names} \item{units}{vector corresponding to units of each column}
\item{from}{vector of the 'from' compartments in file} \item{to}{vector of
the 'to' compartments in file}
}
\description{
watershedmeb.read is used to read in the WatershedMassEnergyBalance.csv file
produced by the modelling Framework Raven.
}
\details{
This function expects a full file path to the WatershedMassEnergyBalance.csv
file, then reads in the file using read.csv. The main advantage of this
functon is renaming the columns to nicer names and extracting the units into
something much easier to read. The from and to rows are also properly
handled, which is not as straightforward as some of the other Raven files.

ff is the full file path of the WatershedMassEnergyBalance.csv file. If the
file is located in the current working directory, then simply the name of
the file is sufficient.
}
\examples{

# set working directory to file location
dir <- "C:/Users/rchlumsk/Documents/Raven/Madawaska model/output"
setwd(dir)

# create full file path
ff <- paste0(dir,"/","run4_WatershedMassEnergyBalance.csv")

mywshdmeb <- watershedmeb.read(ff)

}
\seealso{
\code{\link{watershed.read}} for reading in the
WatershedStorage.csv file

See also \href{http://www.civil.uwaterloo.ca/jrcraig/}{James R.
Craig's research page} for software downloads, including the
\href{http://www.civil.uwaterloo.ca/jrcraig/Raven/Main.html}{Raven page}
}
\keyword{Raven}
\keyword{balance}
\keyword{energy}
\keyword{mass}
\keyword{read.csv}
\keyword{watershed}
