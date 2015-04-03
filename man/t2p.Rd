\name{t2p}
\alias{t2p}
\title{From Test Statistics To \emph{p}-Values}
\usage{
  t2p(Tmat, obsOnly = FALSE)
}
\arguments{
  \item{Tmat}{\eqn{3}-dimensional (\eqn{2}-dimensional)
  \code{array} containing the test statistics where the
  first horizontal slice (first row) contains the observed
  value}

  \item{obsOnly}{\code{logical}, if \code{FALSE} (default)
  the whole permutation distribution of the computed
  \emph{p}-values is returned, if \code{TRUE} only the
  observed ones are returned.}
}
\value{
  if \code{obsOnly} is \code{FALSE} an \code{array} of the
  same dimension of the input matrix \code{Tmat}, otherwise
  only the first row
}
\description{
  Transforming Test Statistics to Permutation
  \emph{p}-Values
}
\author{
  Livio Finos, Aldo Solari and Federico Mattiello
  <federico.mattiello@gmail.com>
}
\seealso{
  \code{\link[flip:permutationSpace]{permutationSpace}},
  \code{\link{NPC}}
}

