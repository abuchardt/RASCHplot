% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simRASCHq3.R
\name{simRASCHq3}
\alias{simRASCHq3}
\title{Simulate Yen's Q3 statistics}
\usage{
simRASCHq3(
  delta,
  theta,
  method.item = c("PCML", "CML", "JML", "MML"),
  method.person = c("WML", "MLE"),
  B,
  model = c("RMD", "RMP"),
  standardize = TRUE,
  trace.it = 0
)
}
\arguments{
\item{delta}{Input tem-category threshold parameters}

\item{theta}{Input person parameters}

\item{method.item}{Estimation method for item paramters}

\item{method.person}{Estimation method for person parameters}

\item{B}{Number of simulations}

\item{model}{Character string. Either "RMD" for dichotomous items or "RMP" for polytomous items.}

\item{standardize}{Logical flag for standardization of residuals. Default is \code{standardize=TRUE}.}

\item{trace.it}{If \code{trace.it=1}, then progress bars are displayed.}
}
\value{
An object with S3 class \code{"RASCHq3"}.  \item{call}{the call
that produced this object} \item{statobj}{List of item fit statistics.}
\item{method.item}{Estimation method used for item parameters}
\item{method.person}{Estimation method used for person parameters}
}
\description{
Does repeated random sampling to obtain a sampling distribution for Yen's Q3 statistics.
}
\examples{
data(SPADI)
SPADI.complete <- SPADI[complete.cases(SPADI), ]
it.SPADI <- SPADI.complete[, 9:16]
set.seed(1)
object <- eRm::PCM(it.SPADI)
delta <- beta2delta(beta = object$betapar, x = it.SPADI)
pp <- eRm::person.parameter(object)
theta <- unlist(pp$thetapar)
sims <- simRASCHq3(delta, theta,
                   method.item = "JML", method.person = "MLE",
                   B = 10, model = "RMP")

}
\references{
Christensen, K. B., Makransky, G. and Horton, M. (2017)
\emph{Critical Values for Yen’s Q3: Identification of Local Dependence in the Rasch Model Using Residual Correlations, Applied Psychological Measurement, Vol. 41(3), 178-194},\cr
\doi{https://doi.org/10.1177/0146621616677520}.\cr
Yen W. M. (1984)
\emph{Effects of local item dependence on the fit and equating performance of the three-parameter logistic model, Applied Psychological Measurement, Vol. 8, 125-145},\cr
\doi{10.18637/jss.v039.i05}.
}
