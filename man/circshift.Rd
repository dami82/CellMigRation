% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_functions.R
\name{circshift}
\alias{circshift}
\title{Shift Array Circularly}
\usage{
circshift(x, n = 1)
}
\arguments{
\item{x}{a character, numeric, or logical vector with at least n + 1 elements}

\item{n}{an integer corresponding to the number of positions for the shift}
}
\value{
a vector corresponding to x (same size, same class), whose elements have been shifted
}
\description{
Circularly shift the elements in an array by a user-defined number of positions.
This emulates the behavior of the corresponding Matlab Circhsift function.
}
\examples{
CellMigRation:::circshift(1:10, -2)

}
\references{
\url{https://www.data-pulse.com/dev_site/cellmigration/}
}
\author{
Damiano Fantini, \email{damiano.fantini@gmail.com}
}
\keyword{internal}
