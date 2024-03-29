% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggImap.R
\name{ggImap}
\alias{ggImap}
\title{Person-Item Map}
\usage{
ggImap(
  object,
  delta,
  item.subset = "all",
  ggtheme = theme_minimal,
  xlab.label = "",
  title = "",
  legend.title = NULL,
  legend.labels = NULL
)
}
\arguments{
\item{object}{Either a \code{eRm} or \code{Rm} object -- result of
\link[eRm]{RM} or \link[eRm]{PCM}. If \code{object} is not provided,
then \code{delta} must be provided.}

\item{delta}{Input delta (item-category threshold) parameters. This must be a matrix or list of matrices in case of stratification. Ignored if \code{object} is provided.}

\item{item.subset}{Subset of items to be plotted. Either a numeric vector indicating the column in X or a character vector indicating the column name. If "all", all items are plotted. The number of items to be plotted must be > 1.}

\item{ggtheme}{ggplot2 function or theme object. Default value is \code{theme_minimal}. Allowed values are the official ggplot2 themes including \code{theme_gray}, \code{theme_bw}, \code{theme_classic}, \code{theme_void}, .... Theme objects are also allowed (e.g., \code{theme_classic()}).}

\item{xlab.label}{character, label on x-axis of the graph.}

\item{title}{character, title of the graph.}

\item{legend.title}{...}

\item{legend.labels}{...}
}
\description{
Visualise the alignment of the item parameters.
}
\examples{
data(SPADI)
SPADI.complete <- SPADI[complete.cases(SPADI), ]
it.SPADI <- SPADI.complete[, 9:16]
object <- eRm::PCM(it.SPADI)
ggImap(object)

delta <- beta2delta(beta = object$betapar, x = it.SPADI)
ggImap(delta = delta)

if (FALSE) {
SPADI1 <- SPADI[SPADI$gender == 1,]
SPADI2 <- SPADI[SPADI$gender == 2,]
SPADI.complet1 <- SPADI1[complete.cases(SPADI1), ]
SPADI.complet2 <- SPADI2[complete.cases(SPADI2), ]
it.SPADI1 <- SPADI.complet1[SPADI.complet1$gender == 1, 9:16]
it.SPADI2 <- SPADI.complet2[SPADI.complet2$gender == 2, 9:16]
object1 <- eRm::PCM(it.SPADI1)
object2 <- eRm::PCM(it.SPADI2)
beta1 <- object1$betapar
beta2 <- object2$betapar
pp1 <- eRm::person.parameter(object2) #eRm::person.parameter(object1)
pp2 <- eRm::person.parameter(object2)
theta1 <- unlist(pp1$thetapar)
theta2 <- unlist(pp2$thetapar)
threshtable1 <- eRm::thresholds(object1)$threshtable[[1]]
threshtable2 <- eRm::thresholds(object2)$threshtable[[1]]
objlist <- list(beta = list(beta1 = beta1, beta2 = beta2),
                theta = list(theta1 = theta1, theta2 = theta2),
                threshtable = list(threshtable1 = threshtable1,
                                   threshtable2 = threshtable2))
ggImap(objlist, legend.title = "Gender", legend.labels = c("1", "2"))
}
}
\references{
Christensen, K. B., Makransky, G. and Horton, M. (2017)
\emph{Critical Values for Yen’s Q3: Identification of Local Dependence in the Rasch Model Using Residual Correlations, Applied Psychological Measurement, Vol. 41(3), 178-194},\cr
\doi{https://doi.org/10.1177/0146621616677520}.\cr
Yen W. M. (1984)
\emph{Effects of local item dependence on the fit and equating performance of the three-parameter logistic model, Applied Psychological Measurement, Vol. 8, 125-145},\cr
\doi{10.18637/jss.v039.i05}.
}
