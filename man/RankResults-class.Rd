\name{RankResults}
\alias{RankResults}
\alias{RankResults-class}
\title{Ranking Results}
\description{
  Contains results of the algorithm, if \code{n} values of
  \code{alpha} are provided for to the \pkg{SOUP} function
  then there will be \code{n} (possibly different)
  rankings, one for each value of \code{alpha}
}
\section{Objects from the Class}{
  Objects can be created by calls of the form
  \code{new("RankResults", ...)}.
}

\section{Slots}{
  \describe{ \item{\code{alpha}:}{ \code{numeric} vector
  containing the values of \code{alpha} used for rejecting
  each pairwise hypothesis} \item{\code{ranks}:}{
  \code{matrix} containing the rankings obtained from the
  ranking algorithm} \item{\code{p.values}:}{ \code{matrix}
  containing the p-values used for the rankings}
  \item{\code{p.adj.method}:}{ \code{character} string
  indicating which multiplicity adjustment method was used
  for the pairwise p-values} }
}

\section{Prototype}{
  \code{prototype} class has a \eqn{0 \times 0 \times 0}{0
  x 0 x 0} element for the first two slots and a
  \eqn{0}-length \code{character} string
}

\section{Methods}{
  \describe{ \item{show}{ \code{signature(object =
  "RankResults")}: shows only the main information (on
  screen) for the object} \item{print}{ \code{signature(x =
  "RankResults")}: It prints the whole object on screen
  (mostly useful for external saving)} \item{as.list}{
  Coerce the \code{RankResults} object to a list of
  \code{RankResults} objects} }
}
\examples{
showClass("RankResults")
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}
\keyword{classes}

