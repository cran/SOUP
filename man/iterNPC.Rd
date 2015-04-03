\name{iterNPC}
\alias{iterNPC}
\title{Iterated NonParametric Combination}
\usage{
  iterNPC(P, tol = 1, maxIter = 10, plotIt = TRUE,
    combFun1 = function(x) {
        -2 * sum(log(x), na.rm = TRUE) },
    combFun2 = function(x) {
        sum(qnorm(1 - x), na.rm = TRUE) },
    combFun3 = function(x) {     -min(x, na.rm = TRUE) },
    test = c("SSQ", "ABS", "NORM2", "EDF"), Pmat = FALSE,
    onlyCombined = FALSE)
}
\arguments{
  \item{P}{input \code{matrix} containing the test
  statistic in the form of p.values (permutation or
  asymptotic)}

  \item{tol}{\code{integer} representing the desired
  tolerance, the actual one being
  \eqn{\frac{tol}{B}}{tol/B} where \eqn{B} is the number of
  permutations}

  \item{maxIter}{\code{integer} maximum number of
  iterations to be performed, default 10}

  \item{plotIt}{\code{logical}, if \code{TRUE} (default)
  plots the diagnostic grahp of $p$-values obtained with
  each combining function \emph{vs.} iteration index}

  \item{combFun1}{first combining \code{function} needed
  for the algorithm, default is \emph{Fisher}'s: \eqn{-2
  \sum_i \log{p_i}}{-2 * sum(log(p_i))}}

  \item{combFun2}{second combining \code{function}, default
  is \emph{Liptak}: \eqn{\sum_i \Phi^{-1} \left( 1 - p_i
  \right)}{sum(\Phi^{-1} (1-p_i))}}

  \item{combFun3}{third combining \code{function}, default
  is \emph{Tippett}: \eqn{-\min_i p_i}{-min_i p_i}}

  \item{test}{\code{character}, it is the stopping rule
  used to check for convergence, each one of the 4 kinds
  currently implemented takes as input the vector with the
  result of the combination with the different combining
  functions for one permutation. There are 4 choices for
  this argument:\cr \describe{ \item{\code{"SSQ"}}{ Sum of
  SQuares, the algorithm stops when
  \eqn{\sqrt{(n-1)(s^2)}}{square root of (n-1)*(s^2)} is
  smaller than the actual tolerance; here where \eqn{s} is
  the sample variance of the vector.} \item{\code{"ABS"}}{
  The algorithm stops if not all pairwise absolute
  differences between the elements are smaller than the
  actual tolerance} \item{\code{"NORM2"}}{ The algorithm
  stops if the euclidean distance between two consecutive
  iterations is smaller than the actual tolerance.}
  \item{\code{"EDF"}}{ It is based on the Empirical
  Distribution Function of the p.values.  The algorithm
  stops if the standardized absolute difference between the
  average of two consecutive iterations is smaller than the
  actual tolerance. The standardization involves the
  variance of the numerator, it is a sort of t-test.} }}

  \item{Pmat}{\code{logical}, if \code{TRUE} returns the
  final matrix of combined $p$-values, default is
  \code{FALSE}}

  \item{onlyCombined}{\code{logical}, if \code{TRUE}
  returns only the first column of the final matrix, in
  case only the distribution of combined $p$-values is
  needed}
}
\value{
  The output is conditioned on some of the input argument.
  The default is a \code{list} containing only the element
  \code{"P.iter"}: a \code{matrix} with 3 columns
  containing the observed p.values across iterations and
  for all combining functions (to manually check
  convergence).  If \code{Pmat} is \code{TRUE} than the
  list contains also the element \code{"P.final"} that is
  the final permutation space of p.values obtained with all
  combining function.  If \code{onlyCombined} is
  \code{TRUE} than the resulting output is just the vector
  containing the first column of \code{"P.final"}.
}
\description{
  Iterated NonParametric Combination of the test statistic
  matrix, mostly for internal use.
}
\details{
  It takes as input a matrix whose columns have to be
  combined with the iterated NPC procedure, default
  combining functions are 3: Fisher, Liptak (normal
  version), and Tippett (minP)
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}

