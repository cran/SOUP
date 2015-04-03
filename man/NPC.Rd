\name{NPC}
\alias{NPC}
\title{NonParametric Combination of Test Statistic}
\usage{
  NPC(rawStats, combFun = "Fisher", seed, p.values = FALSE,
    tails = NULL, subsets = NULL, weights = NULL,
    iteratedNPC = FALSE)
}
\arguments{
  \item{rawStats}{3-ways \code{array} containing the test
  statistic computed on all pairwise comparisons (both
  directions) in all variables, with dimensions \eqn{B+1
  \times p \times K}{B+1 x p x K}, where \code{B} is the
  number of permutations, \code{p} is the number of
  variables and \code{K} is the number of pairwise
  comparisons.}

  \item{combFun}{\code{character} string indicating the
  combining function to be used, can take as input
  \emph{p}-values or the raw test statistic depending on
  the choice, can be one of \code{"Fisher"},
  \code{"Liptak"}, \code{"minP"}, \code{"Tippett"},
  \code{"maxT"}, \code{"sumT"} and \code{"direct"}; note
  that \code{"direct"} is equivalent to \code{"sumT"} and
  \code{"Tippett"} is equivalent to \code{"minP"}.
  \code{"Liptak"} use the normal quantile function. See
  references for details.}

  \item{seed}{\code{integer} seed for the \code{RNG}
  (random number generator), taken from the input for
  reproducibility purposes}

  \item{p.values}{\code{logical}, if \code{TRUE} means that
  the input matrix \code{rawStats} contains \emph{p}-values
  rather than raw test statistics and so has to be treated
  differently, \emph{i.e.} the first passage from test
  statistics to \emph{p}-values is omitted (function
  \code{\link{t2p}})}

  \item{tails}{\code{integer} vector of \eqn{\pm
  1}{{+1,-1}} containing the alternatives for response
  variables: \code{+1} means ``the higher the better'',
  \code{-1} means ``the lower the better'' (direction of
  preference), if \code{NULL} (default) all variables are
  considered to be of the type ``the higher the better'}

  \item{subsets}{\code{integer}, \code{character} or
  \code{list} where each element contains the subset of
  column indices that need to be treated separately, if
  \code{NULL} (default) all input variables are considered}

  \item{weights}{\code{integer}, \code{character} or
  \code{list} where each element contains the weights of
  the variables, one for each \code{subset}, if \code{NULL}
  (default) variables are treated equally \emph{i.e.} all
  have the same weight}

  \item{iteratedNPC}{\code{logical}, if \code{TRUE} it
  performs the iterated combination procedure running
  function \code{\link{iterNPC}} and the choice of
  \code{comb.funct} becomes thus irrelevant; otherwise just
  perform the requested NPC.}
}
\value{
  an object of class \code{\linkS4class{PermSpace}} or a
  \code{list} containing \code{PermSpace} objects, in the
  case of multiple weights and/or subsets.
}
\description{
  NonParametric Combination of the test statistic matrix,
  mostly for internal use.
}
\details{
  It takes as input the 3-ways matrix containing the raw
  test statistics and perform the NPC with the possibility
  to add sets of weights for weighting variables
  differently, and/or to select subsets of variables to
  which NPC has to be applied separately. Note that
  \code{weights} and \code{subsets} are placed in the
  ``\code{\dots}'' argument of the \pkg{SOUP} function call
  hence they are not documented in the \pkg{SOUP} help.
}
\note{
  This function is mainly taken from the function
  \code{\link[flip:permutationSpace]{npc}} in the package
  \code{\link[flip]{flip}}.
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}
\references{
  Pesarin, F. and Salmaso, L. (2010) \emph{Permutation
  Tests for Complex Data}. Wiley: United Kingdom \cr \cr
  Pesarin F. (2001) \emph{Multivariate Permutation Tests
  with Applications in Biostatistics}. Wiley: New York.
}
\seealso{
  \code{\link{t2p}}
}
\keyword{array,}
\keyword{manip}

