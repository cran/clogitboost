\name{travel}
\alias{travel}
\docType{data}
\title{Australian travel mode choice data}

\description{
The dataset is a survey results of 210 individuals' choices of travel mode between Sydney, Melbourne and New South Wales. There are four alternative choices, along with four choice-specific covaraites for each choice.}

\usage{data(travel)}
\format{
  A data frame with 840 observations on the following 6 variables.
  \describe{
    \item{\code{Group}}{index of the group membership}
    \item{\code{MODE}}{binary outcome of whether the item is chosen.}
    \item{\code{TTME}}{the terminal time}
    \item{\code{INVC}}{the in-vehicle cost}
    \item{\code{INVT}}{the amount of time spent traveling}
    \item{\code{GC}}{the genearlized cost of travel}
  }
}

\source{
Greene W (2008). \emph{Econometric Analysis, 6th edition}. Prentice Hall.
}

\keyword{datasets}
