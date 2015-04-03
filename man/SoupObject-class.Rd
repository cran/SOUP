\name{SoupObject}
\alias{SoupObject}
\alias{SoupObject-class}
\alias{plot,SoupObject,SoupObject-method}
\alias{print,SoupObject,SoupObject-method}
\alias{show,SoupObject,SoupObject-method}
\title{Class \code{SoupObject}}
\description{
  SOUP Main Object
}
\details{
  Contains the main results of the \pkg{SOUP} analysis
}
\section{Objects from the Class}{
  Objects can be created by calls of the form
  \code{new("SoupObject", ...)}.  It contains all results
  from the analysis performed by the \code{\link{SOUP}}
  function.
}

\section{Slots}{
  \describe{ \item{\code{call}:}{ a \code{call} object that
  contains the call of the \code{\link{SOUP}} main
  function} \item{\code{pValueMat}:}{
  \code{\linkS4class{PValueMat}} object containing
  univariate \emph{p}-values} \item{\code{rankResults}:}{
  \code{\linkS4class{RankResults}} object containing the
  results of the ranking} \item{\code{permSpace}:}{
  \code{\linkS4class{PermSpace}} object containing the
  permutation spaces} }
}

\section{Methods}{
  \describe{ \item{show}{ \code{signature(object =
  "SoupObject")}: shows only the main information (on
  screen) for the object} \item{print}{ \code{signature(x =
  "SoupObject")}: It prints the whole object on screen
  (mostly useful for external saving)} }
}
\examples{
showClass("SoupObject")
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}
\keyword{classes}

