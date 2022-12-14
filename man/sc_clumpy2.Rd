% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adjusted.R
\name{sc_clumpy2}
\alias{sc_clumpy2}
\alias{sc_clumpy2.default}
\alias{sc_clumpy2.scree}
\alias{sc_clumpy2.igraph}
\title{Compute adjusted clumpy measure using MST}
\usage{
sc_clumpy2(x, y)

\method{sc_clumpy2}{default}(x, y)

\method{sc_clumpy2}{scree}(x, y = NULL)

\method{sc_clumpy2}{igraph}(x, y)
}
\arguments{
\item{x}{numeric vector of x values}

\item{y}{numeric vector of y values}
}
\value{
A "numeric" object that gives the plot's clumpy2 score.
}
\description{
Compute adjusted clumpy measure using MST
}
\examples{
  require(ggplot2)
  require(dplyr)
  ggplot(features, aes(x=x, y=y)) +
     geom_point() +
     facet_wrap(~feature, ncol = 5, scales = "free")
  features \%>\% group_by(feature) \%>\% summarise(clumpy = sc_clumpy2(x,y))
  sc_clumpy2(datasaurus_dozen_wide$away_x, datasaurus_dozen_wide$away_y)

}
