\name{marginal}
\alias{marginal}

\title{
marginal utility for clogitboost objects
}

\description{
  \code{marginal} function for the \code{clogitboost} objects, which produce the marginal utility values of a covaraite
}
  
\usage{
marginal(x, grid, d)

}

\arguments{
   \item{x}{object resulting from the \code{\link{clogitboost}} function.
        }
    \item{d}{the dimension of the covariate}
\item{grid}{the grid of values for predicting the marginal utilities}
}


\value{
The method \code{marginal} returns a vector of predicted marginal utilities based on the grid input.

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
marginal(fit, grid = seq(0, 10, by = 1), d = 1)
}

