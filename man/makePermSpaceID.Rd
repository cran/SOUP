\name{.makePermSpaceID}
\alias{.makePermSpaceID}
\title{Constructs Row Indices Permutation Space}
\usage{
  .makePermSpaceID(nObs, analysisType, strata, seed,
    nPerms)
}
\arguments{
  \item{nObs}{\code{integer} total number of observations}

  \item{analysisType}{\code{character} type of the analysis
  to be performed}

  \item{strata}{\code{character} vector or \code{factor}
  containing the covarite used for stratification; if
  \code{analysisType} is \code{"strata"} then this
  parameter is provided}

  \item{seed}{optional \code{integer} seed for the
  \code{RNG}}

  \item{nPerms}{\code{integer} number of permutations to be
  performed}
}
\value{
  either a \code{matrix} in the case of \code{"simple"}
  \code{analysisType} or a \eqn{3}-ways \code{array},
  containing the permuted row indices
}
\description{
  Constructs the permutation space of row indices depending
  on the type of analysis
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}

