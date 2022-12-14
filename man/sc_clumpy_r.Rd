% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/robustscags.R
\name{sc_clumpy_r}
\alias{sc_clumpy_r}
\alias{sc_clumpy_r.default}
\alias{sc_clumpy_r.scree}
\alias{sc_clumpy_r.igraph}
\title{Compute robust clumpy scagnostic measure using MST}
\usage{
sc_clumpy_r(x, y)

\method{sc_clumpy_r}{default}(x, y)

\method{sc_clumpy_r}{scree}(x, y = NULL)

\method{sc_clumpy_r}{igraph}(x, y)
}
\arguments{
\item{x}{numeric vector of x values}

\item{y}{numeric vector of y values}
}
\value{
A "numeric" object that gives the plot's robust clumpy score.
}
\description{
Compute robust clumpy scagnostic measure using MST
}
\examples{
  require(ggplot2)
  require(dplyr)
  ggplot(features, aes(x=x, y=y)) +
     geom_point() +
     facet_wrap(~feature, ncol = 5, scales = "free")
  features \%>\% group_by(feature) \%>\% summarise(clumpy = sc_clumpy_r(x,y))
  sc_clumpy_r(datasaurus_dozen_wide$away_x, datasaurus_dozen_wide$away_y)

}
