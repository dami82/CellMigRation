% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_functions.R
\name{EstimateDiameterRange}
\alias{EstimateDiameterRange}
\title{Detect Paricle Diameters in a Numeric matrix}
\usage{
EstimateDiameterRange(x, px.margin = 2, min.px.diam = 5, quantile.val = 0.99, plot = TRUE)
}
\arguments{
\item{x}{numeric matrix corresponding to a digital image}

\item{px.margin}{integer, number of pixels used as margin while searching/filtering for neighboring particles}

\item{min.px.diam}{integer, minimum diameter of a particle (cell). Particles with a diameter smaller than min.px.diam are discarded}

\item{quantile.val}{numeric, must be bigger than 0 and smaller than 1.
Quantile for discriminating signal and background; only pixels with intensity higher than the corresponding
quantile will count as signal while estimating particle diameters}

\item{plot}{logial, shall a histogram of the distribution of diameters be shown}
}
\value{
list including summary stats and data about the particles found in the image
}
\description{
Estimates the diameters of particles in a numeric matrix
}
\examples{
a <- cbind(c(1, 1, 1, 0, 0, 0, 0, 0, 1, 1),
           c(1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
           c(1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
           c(0, 0, 0, 0, 1, 1, 0, 0, 0, 0),
           c(0, 0, 0, 1, 1, 1, 0, 0, 0, 0))
graphics::image(a)
b <- EstimateDiameterRange(a, min.px.diam = 2)
print(b$estim.cell.num)
print(b$raw)

}
\references{
\url{https://www.data-pulse.com/dev_site/cellmigration/}
}
\author{
Damiano Fantini, \email{damiano.fantini@gmail.com}
}
