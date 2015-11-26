\name{plot.clogitboost}
\alias{plot.clogitboost}

\title{
Plot methods for clogitboost objects
}

\description{
  \code{plot} methods for the \code{clogitboost} objects, which produce marginal plots of the covaraite effects
}
  
\usage{
\method{plot}{clogitboost}(x, d, grid = NULL, \dots)
}

\arguments{
    \item{x}{object resulting from the \code{\link{clogitboost}} function.
        }
    \item{d}{the dimension of the covariate to be plotted}
\item{grid}{the grid of values for plotting. If it is not specified, then the minimal and maximal elements in the covariate will be used as the two ends of the grid}
    \item{\dots}{other options for plotting}
}
\author{
Haolun Shi \email{shl2003@connect.hku.hk}

Guosheng Yin \email{gyin@hku.hk}
}

\seealso{
\code{\link{clogitboost}}
}
\examples{
data(travel)
train <- 1:504
y <- travel$MODE[train]
x <- travel[train, 3:6]
strata <- travel$Group[train]
fit <- clogitboost(y = y, x = x, strata = strata, iter = 10, rho = 0.05)
plot(fit, d = 1, xlab = "x", ylab = "f(x)", main = "TTIME", type = "l")

}
