\docType{methods}
\name{PermSpace}
\alias{PermSpace}
\alias{PermSpace-class}
\alias{plot}
\alias{plot,PermSpace,PermSpace-method}
\alias{plot,PermSpace-method}
\alias{print,PermSpace,PermSpace-method}
\alias{show,PermSpace,PermSpace-method}
\title{Class \code{PermSpace}}
\description{
  Permutation Space

  Methods for function \code{plot} in package \pkg{SOUP}
}
\details{
  Contains the permutation space of the test statistic,
  useful for reproducibility of the analyses
}
\section{Objects from the Class}{
  Objects can be created by calls of the form
  \code{new("PermSpace", ...)}.  It contains information of
  permutation spaces used in the analysis, the combined
  test statistics and \emph{p}-values, \code{IDs} (row
  indexes) and the \code{seed} for the \code{RNG}, the
  \code{rawStats} (non-combined test statistics) and
  \code{comb.funct} (the nonparametric combining function).
  But objects of the class are principally supposed to be
  created and used internally for storing results of
  \code{\link{SOUP}}.
}

\section{Slots}{
  \describe{ \item{\code{seed}:}{ \code{integer} seed for
  the Random Number Generator} \item{\code{T.H0Low}:}{
  \code{matrix} containing the permutation space of
  \emph{combined} test statistics with null hypothesis
  \eqn{H_0: x_i \ge x_h}{H_0: x_i <= x_h}, \eqn{i < h},
  \eqn{i,h = 1,\ldots,G}} \item{\code{T.H0Gre}:}{
  \code{matrix} containing the permutation space of
  \emph{combined} test statistics with null hypothesis
  \eqn{H_0: x_i \le x_h}{H_0: x_i <= x_h}, \eqn{i < h},
  \eqn{i,h = 1,\ldots,G}} \item{\code{P.H0Low}:}{
  \code{matrix} containing the permutation space of
  \emph{combined} \emph{p}-values with null hypothesis
  \eqn{H_0: x_i \ge x_h}{H_0: x_i <= x_h}, \eqn{i < h},
  \eqn{i,h = 1,\ldots,G}} \item{\code{P.H0Gre}:}{
  \code{matrix} containing the permutation space of
  \emph{combined} \emph{p}-values with null hypothesis
  \eqn{H_0: x_i \le x_h}{H_0: x_i <= x_h}, \eqn{i < h},
  \eqn{i,h = 1,\ldots,G}} \item{\code{IDs}:}{ \code{matrix}
  permutation space of row indexes}
  \item{\code{rawStats}:}{ \eqn{3}-way \code{array}
  containing the permutation space of \emph{non-combined}
  test statistics} \item{\code{comb.funct}:}{ nonparametric
  combining function used for \code{\link{NPC}} of
  \code{rawStats}} }
}

\section{Methods}{
  \describe{ \item{initialize}{ constructor used when
  calling \code{new(PermSpace, ...)}} \item{show}{
  \code{signature(object = "PermSpace")}: shows only the
  main information (on screen) for the object}
  \item{print}{ \code{signature(x = "PermSpace")}: It
  prints the whole object on screen (mostly useful for
  external saving)} \item{\code{signature(x =
  "PermSpace")}}{ Plots a bivariate representation of the
  permutation space, when there are more than \eqn{2}
  (original) variables then a Principal Component Analysis
  is performed and the first \eqn{2} variables in the
  transformed space are shown} }
}
\examples{
showClass("PermSpace")
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}
\keyword{classes}

