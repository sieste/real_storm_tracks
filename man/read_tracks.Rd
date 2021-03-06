% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storm_tracks.R
\name{read_tracks}
\alias{read_tracks}
\title{Read storm tracks into a data.table}
\usage{
read_tracks(filename = NULL, var_names = NULL)
}
\arguments{
\item{filename}{Input file name}

\item{var_names}{Vector of variable names to construct column names of the data table.}
}
\value{
A data.table with columns id, date, lat, lon, var, and possibly further variables measured along the track (mslp, precip, ...)
}
\description{
Create a data.table of storm tracks from a file.
}
\examples{
storms_file = system.file('extdata', 'storms.txt', package='realstorms')
## or during testing: storms_file = '../inst/extdata/storms.txt'
trx = read_tracks(storms_file, var_names=c('vor850', 'mslp', 'speed', 'precip', 'omega'))

}
