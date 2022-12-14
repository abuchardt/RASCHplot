% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simResps.R
\name{simResps}
\alias{simResps}
\title{Response simulation}
\usage{
simResps(model = c("RMD", "RMP"), probs, B, M = NULL, mi = NULL)
}
\arguments{
\item{model}{Character. "RMD" for dichotomous Rasch model. "RMP" for partial credit model.}

\item{probs}{List or matrix of probabilities.}

\item{B}{Number of simulations.}

\item{M}{Maximum (over all items) number of categories. Only if `model = "RMP"`.}

\item{mi}{Vector of maximum number of categories per item. Only if `model = "RMP"`.}
}
\description{
Repeated random sampling to obtain item responses from estimated item and person parameters.
}
