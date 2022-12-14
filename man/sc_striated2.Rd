% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adjusted.R
\name{sc_striated2}
\alias{sc_striated2}
\alias{sc_striated2.default}
\alias{sc_striated2.scree}
\alias{sc_striated2.igraph}
\title{Compute angle adjusted striated measure using MST}
\usage{
sc_striated2(x, y)

\method{sc_striated2}{default}(x, y)

\method{sc_striated2}{scree}(x, y = NULL)

\method{sc_striated2}{igraph}(x, y)
}
\arguments{
\item{x}{numeric vector of x values, or an MST object}

\item{y}{numeric vector of y values, or a scree object}
}
\value{
A "numeric" object that gives the plot's striated2 score.
}
\description{
Compute angle adjusted striated measure using MST
}
\examples{
  require(ggplot2)
  require(dplyr)
  ggplot(features, aes(x=x, y=y)) +
     geom_point() +
     facet_wrap(~feature, ncol = 5, scales = "free")
  features \%>\% group_by(feature) \%>\% summarise(striated = sc_striated2(x,y))
  sc_striated2(datasaurus_dozen_wide$away_x, datasaurus_dozen_wide$away_y)

}
