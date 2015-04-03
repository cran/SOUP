\name{rankingRule}
\alias{rankingRule}
\title{Performs the ranking}
\usage{
  rankingRule(permSpace, alpha = 0.05, multAdjMethod,
    groupsLabs)
}
\arguments{
  \item{permSpace}{object of the class
  \code{\linkS4class{PermSpace}} containing the permutation
  space of the test statistic}

  \item{alpha}{\code{numeric} significance level to be
  employed, in case it is a vector, a ranking is computed
  for each value of \code{alpha}}

  \item{multAdjMethod}{multiplicity adjustment method to be
  used for the pairwise hypotheses \emph{p}-values}

  \item{groupsLabs}{\code{character} vector containing the
  groups' labels}
}
\value{
  object of the class \code{\linkS4class{RankResults}}
  containing results of the ranking procedure and other
  information
}
\description{
  Performs the ranking
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}

