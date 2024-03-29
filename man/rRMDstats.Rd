% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rRMDstats.R
\name{rRMDstats}
\alias{rRMDstats}
\title{Sampling distribution of item fit statistics under dichotomous Rasch model}
\usage{
rRMDstats(
  delta,
  theta,
  method.item = c("PCML", "CML", "JML", "MML"),
  method.person = c("WML", "MLE"),
  B,
  trace.it = 0
)
}
\arguments{
\item{delta}{Input item parameters. If items are dichotomous \code{delta} should be a vector.}

\item{theta}{Input person parameters.}

\item{method.item}{Estimation method for item parameters.}

\item{method.person}{Estimation method for person parameters.}

\item{B}{Number of simulations.}

\item{trace.it}{If \code{trace.it=1}, then progress bars are displayed.}
}
\value{
An object with S3 class \code{"RASCHstats"}.  \item{call}{the call
that produced this object} \item{statobj}{List of item fit statistics.}
\item{method.item}{Estimation method used for item parameters}
\item{method.person}{Estimation method used for person parameters}
}
\description{
Does repeated random sampling to obtain a sampling distribution for an item fit statistic of interest.
}
\details{
For more details see the help vignette:
\code{vignette("simRASCHstats", package = "RASCHplot")}
}
