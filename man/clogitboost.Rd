\name{clogitboost}
\alias{clogitboost}
\title{Boosting conditional logit model
}

\description{Fit a boosting conditional logit model using componentwise smoothing spline.
}

\usage{
clogitboost(y, x, strata, iter = 100, rho = 0.05)
}

\arguments{
  \item{y}{a vector of binary outcomes.
}
  \item{x}{a matrix or data frame with each column being a covariate.}
 \item{strata}{a vector of group membership, i.e., items in the same group have the same value.}
 \item{iter}{number of iterations.}
 \item{rho}{the learning rate parameter in the boosting algorithm.}
}

\value{
The function \code{clogitboost()} returns the following list of values:
\item{call}{the original function call.}
\item{func}{the list of fitted spline functions.}
\item{index}{the list of indexes indicating which covariate is used as input for the spline models.}
\item{theta}{the list of fitted coefficients in the conditional logit models.}
\item{loglike}{the sequence of fitted values of log-likelihood.}
\item{infscore}{the relative influence scores}
\item{rho}{the learning rate parameter}
\item{mmax}{the maximal element in each covariate}
\item{mmin}{the minimal element in each covariate}

}


\author{
Haolun Shi \email{shl2003@connect.hku.hk}

Guosheng Yin \email{gyin@hku.hk}
}

\seealso{
\code{\link{plot.clogitboost}}

\code{\link{predict.clogitboost}}
}
\examples{
data(travel)
train <- 1:504
y <- travel$MODE[train]
x <- travel[train, 3:6]
strata <- travel$Group[train]
fit <- clogitboost(y = y, x = x, strata = strata, iter = 10, rho = 0.05)
}

