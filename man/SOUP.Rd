\name{SOUP}
\alias{SOUP}
\title{SOUP Main Function}
\usage{
  SOUP(Y, covars, data = NULL, analysisType, p.adj.method,
    p.valuesType, testStatistic, combFunct,
    univ.p.values = TRUE, tails = NULL,
    linearInter = FALSE, returnPermSpace = TRUE,
    nPerms = 999L, alpha = 0.05, seed, iteratedNPC, ...)
}
\arguments{
  \item{Y}{input \code{matrix} where each column is a
  response variables.}

  \item{covars}{it can be a \code{matrix}, a
  \code{data.frame} or a \code{formula}, in the first two
  cases it must contains at least the labels of groups, in
  the latter case it has to be a right-sided \code{formula}
  (\emph{e.g.} \code{~ v1 + v2}) specifying the model to
  extract from the \code{data} input.}

  \item{data}{optional \code{data.frame} containing
  covariates requested by \code{covars}, if \code{covars}
  is not a formula this input is useless.}

  \item{analysisType}{\code{character}, type of the
  analysis to be performed: it can be \code{"simple"} if
  the only covariate is the labels of groups,
  \code{"strata"} if there is also a stratifying
  (categorical) covariate, \code{"regres"} if there is one
  or more (numerical or not) covariate(s) besides labels of
  groups. In the latter case the linear effect of the
  covariates is removed from the response variables are
  residualised by the matrix \eqn{V^{-1/2}} obtained from
  \eqn{V = I - H} (where \eqn{I} is the identity matrix and
  \eqn{H} is the ``hat'' matrix of the OLS, by means of a
  spectral decomposition.}

  \item{p.adj.method}{\code{character} string containing
  the type of required \emph{p}-value adjustment}

  \item{p.valuesType}{\code{character} string indicating
  the type of \emph{p}-value to be used, it can be
  \code{"permutation"} or \code{"asymptotic"}}

  \item{testStatistic}{\code{character} string indicating
  the test statistic to be used, it depends on both
  \code{analysisType} and on \code{p.valuesType} and the
  alternatives are: \describe{ \item{\code{AD, meanDiff}}{
  for all \code{analysisType} but only using
  \code{permutation} \emph{p}-values} \item{\code{Ttest}}{
  for all \code{analysisType} but only using
  \code{asymptotic} \emph{p}-values}
  \item{\code{Hotelling}}{ with both \code{permutation} and
  \code{asymptotic} emph{p}-values, with \code{"simple"}
  and \code{"regres"} but not with \code{"strata"}
  \code{analysisType}} \item{\code{lmCoef}}{ only with
  \code{"strata"} \code{analysisType} and with
  \code{"asymptotic"} \emph{p}-values} }}

  \item{combFunct}{\code{character} string containing the
  desired combining function to be used, choices are:
  \describe{ \item{\code{Fisher}}{ the famous Fisher's
  \emph{p}-values combining function} \item{\code{Liptak}}{
  it uses the quantile function of the Normal distribution
  to combine \emph{p}-values} \item{\code{minP, tippett}}{
  combine \emph{p}-values by taking the minimum across the
  set} \item{\code{maxT}}{ combines directly the test
  statistics by taking the maximum across the set}
  \item{\code{direct, sumT}}{ combine the test statistics
  by summing them} \item{\code{sumT2}}{ combines the test
  statistics by squaring and summing them} } See the
  references for more details about their properties.}

  \item{univ.p.values}{\code{logical}, if \code{TRUE}
  (default) \emph{p}-values are returned for each variable
  separately in a 3-ways \code{array}, the chosen
  multiplicity correction is performed independently for
  each variable}

  \item{tails}{\code{integer} vector of \eqn{\pm
  1}{\{+1,-1\}} containing the alternatives for response
  variables: \code{+1} means ``the higher the better'',
  \code{-1} means ``the lower the better'' (direction of
  preference), if \code{NULL} (default) all variables are
  considered to be of the type ``the higher the better''}

  \item{linearInter}{\code{logical}, if \code{TRUE} the
  presence of linear interaction is assumed between levels
  of the stratifying covariate and response variables, this
  affects only the \code{"lmCoef"} test statistic in the
  (in the \code{"strata"} \code{analysisType}), basically
  the contrasts matrix of groups is multiplied by the
  levels of the stratifying factor.}

  \item{returnPermSpace}{\code{logical} if \code{TRUE}
  (default) the whole permutation space is returned, class
  \code{\linkS4class{PermSpace}}, otherwise it is an empty
  instance of the class.}

  \item{nPerms}{\code{integer} number of permutation to be
  performed}

  \item{alpha}{\code{numeric} desired significance level,
  \emph{i.e.} type-I error}

  \item{seed}{\code{integer} seed for the Random Number
  Generator}

  \item{iteratedNPC}{\code{logical}, single or iterated
  Non-Parametric Combination, see \ code{\link{iterNPC}}
  for details.}

  \item{...}{put here the optional \code{weights} and
  \code{subsets} for the \code{\link{NPC}} function and the
  permutation space of rows indexes \code{permSpaceID}.
  The latter allows to exactly reproduce a previous
  analysis, if all other inputs are kept equal, or to see
  what happens changing for example only the
  \code{testStatistic}.}
}
\value{
  an object of class \code{\linkS4class{SoupObject}}.
}
\description{
  Main function of the package, interface for every
  analysis. The dataset can be balanced or not for almost
  all possible choices of the input parameters. The
  function allows also for the presence of one or more
  continuous covariates or for stratified analysis.
}
\details{
  Depending on the chosen p-values type and on the analysis
  type, only some options can be selected: \itemize{
  \item{}{ with \code{"simple"} or \code{"regres"} analysis
  and \code{"asymptotic"} \emph{p}-values,
  \code{"Hotelling"} and \code{"Ttest"}; with
  \code{permutation} \emph{p}-values \code{"AD"},
  \code{"Hotelling"} and \code{"meanDiff"} can be
  selected.} \item{}{ With \code{"strata"} analysis and
  \code{"asymptotic"} \emph{p}-values, \code{"lmCoef"} and
  \code{"Ttest"}; with \code{"permutation"} \emph{p}-values
  \code{"AD"} and \code{"meanDiff"} can be selected.} }
}
\examples{
###
### testing SOUP
###
rm(list = ls()); gc(reset = TRUE)

require(SOUP)
n <- 5L         # replication of the experiment
G <- 4L         # number of groups
nVar <- 10L     # number of variables
shift <- 1.5    # shift to be added to group 3
alpha <- c(0.01, 0.05, 0.1)        # significance levels

## groups factor
groups <- gl(G, n, labels = paste("gr", seq_len(n), sep = "_"))

set.seed(12345)
Y <- matrix(rnorm(n * G * nVar), nrow = n * G, ncol = nVar)
colnames(Y) <- paste("var", seq_len(nVar), sep = "_")
ind1 <- groups == unique(groups)[3L]
Y[ind1, ] <- Y[ind1, ] + shift

res <- SOUP(Y = Y, covars = as.matrix(groups), analysisType = "simple",
        testStatistic = "meanDiff", combFunct = "Fisher",
        alpha = alpha,
        subsets = list("first" = 1:5, "second" = 6:10),
        weights = list(
                "firstW" = c(.1, .2, .1, .5, .1),
                "secondW" = rep.int(1, 5)),
        p.valuesType = "permutation", p.adj.method = "FWEminP")
res
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}
\references{
  Pesarin, F. and Salmaso, L. (2010) \emph{Permutation
  Tests for Complex Data}.  Wiley: United Kingdom.\cr

  Pesarin F. (2001) \emph{Multivariate Permutation Tests
  with Applications in Biostatistics} Wiley: New York.\cr

  Federico Mattiello (2010) \emph{Some resampling-based
  procedures for ranking of multivariate populations},
  Master's Thesis, Faculty of Statistical Sciences: Padova.
}

