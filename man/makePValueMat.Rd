\name{.makePValueMat}
\alias{.makePValueMat}
\title{Construct Univariate \emph{p}-Values Matrix}
\usage{
  .makePValueMat(P, multAdjMethod, groupsLabs)
}
\arguments{
  \item{P}{the \eqn{3}-ways \code{array} containing the
  \emph{p}-values for each pairwise comparison in each
  variable}

  \item{multAdjMethod}{the \code{character} string
  indicating which multiplicity correction must be used}

  \item{groupsLabs}{\code{character} vector containing the
  groups' labels}
}
\value{
  an object of the class \code{\linkS4class{PValueMat}}
}
\description{
  Take as input the \eqn{3}-ways array of \emph{p}-values
  and return the \eqn{G \times G \times V}{G x G x V}
  matrix of observed \emph{p}-values adjusted for
  multiplicity; \eqn{G, V} are, respectively, the number of
  groups/treatments and the number of variables.
}
\author{
  Federico Mattiello <federico.mattiello@gmail.com>
}

