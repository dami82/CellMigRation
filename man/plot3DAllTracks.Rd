% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_functions.R
\name{plot3DAllTracks}
\alias{plot3DAllTracks}
\title{A 3D rose-plot of all cells}
\usage{
plot3DAllTracks(object, VS = 3, size = 2)
}
\arguments{
\item{object}{\code{CellMig} class object, which is a list of data frames resulted from the PreProcessing.}

\item{VS}{A numeric value of the vertical separator between cells.}

\item{size}{A numeric value of the point's size.}
}
\value{
A 3D rose-plot showing the tracks of all cells.
}
\description{
Plotting the trajectory data of all cells in 3D.
}
\details{
The 3D visualization shows centered trajectories where the starting point of each track is located at the origin of the coordinate system (X=0,Y=0).
}
\examples{
\dontrun{
data(TrajectoryDataset)
rmDF=TrajectoryDataset[1:1000,]
rmTD <- CellMig(rmDF)
rmTD <- rmPreProcessing(rmTD,FrameN=100)
plot3DAllTracks(rmTD, VS=3, size=2)
}

}
\references{
\url{https://www.data-pulse.com/dev_site/cellmigration/}
}
\author{
Salim Ghannoum \email{salim.ghannoum@medisin.uio.no}
}
