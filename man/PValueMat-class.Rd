\name{PValueMat}
\alias{PValueMat}
\alias{PValueMat-class}
\alias{print,PValueMat,PValueMat-method}
\alias{show,PValueMat,PValueMat-method}
\title{Class \code{PValueMat}}
\description{
  Univariate P-Value Matrix
}
\details{
  Contains the raw \emph{p}-values and the \emph{p}-values
  adjusted for multiplicity for each pairwise comparison in
  each variable separately. This allows to see the
  contribution of each variable and each comparison to the
  final result
}
\section{Objects from the Class}{
  Objects can be created by calls of the form
  \code{new("PValueMat", ...)} but objects of the class are
  principally supposed to be created and used internally
  for storing results of \code{\link{NPC}}.
}

\section{Slots}{
  \describe{ \item{\code{raw.p.values}:}{ 3-ways
  \code{array} containing the raw p.values}
  \item{\code{adj.p.values}:}{ 3-ways \code{array}
  containing the p.values adjusted for multiplicity}
  \item{\code{p.adj.method}:}{ multiplicity adjustment
  method employed} }
}

\section{Prototype}{
  \code{prototype} class has a \eqn{0 \times 0 \times 0}{0
  x 0 x 0} element for the first two slots and a
  \eqn{0}-length \code{character} string
}

\section{Methods}{
  \describe{ \item{show}{ \code{signature(object =
  "PValueMat")}: shows only the main information (on
  screen) for the object} \item{print}{ \code{signature(x =
  "PValueMat")}: It prints the whole object on screen
  (mostly useful for external saving)} }
}
\examples{
showClass("PValueMat")
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}
\keyword{classes}

